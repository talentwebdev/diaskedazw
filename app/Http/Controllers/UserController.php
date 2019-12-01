<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use \App\VideoModel;
use Illuminate\Support\Facades\Hash;
use Socialite;
use Config;

class UserController extends Controller
{

    /**
     * get Partners
     */
    public function getPartnerInfo()
    {
        $type = request()->type;
        $partners = null;
        if($type == 1)
            $partners = User::where('type', '=', 'partner')
                        ->with('partner')
                        ->get();
        else
            $partners = User::where('type', '=', 'partner_independant')
                        ->with('partner')
                        ->get();
        return $partners;
    }

    public function checkUserActivated()
    {
        Auth::user()->isActivated();
        //echo var_dump(Auth::user()->package());
    }

    public function facebook()
    {
        return Socialite::driver('facebook')->redirect();
    }

    public function facebook_callback()
    {
        $userSocial = Socialite::driver('facebook')->user();

        $email = $userSocial->getEmail();
        $name = $userSocial->getName();
        $email_verified = false;

        if($email == null)
        {
            $email_verified = true;
        }
        
        return User::create([
            'name' => $userSocial->getName(),
            'email' => $email_verified ? $userSocial->getEmail() : "",
            'password' => Hash::make("password"),
            'first_name' => "",
            'last_name' => "",
            'address' => "",
            'city' => "",
            'country' => "",
            'points' => Config::get("app.pointsInfo.registerPoints"),
            "email_verified_at" => $email_verified == true ? now() : null
        ]);
    }

    public function google()
    {
        return Socialite::driver('google')->redirect();
    }

    public function google_callback()
    {
        
        $userSocial = Socialite::driver('google')->user();

        $email = $userSocial->getEmail();
        $name = $userSocial->getName();
        $email_verified = false;

        if($email == null)
        {
            $email_verified = true;
        }

        $user = User::create([
            'name' => $userSocial->getName(),
            'email' => $email_verified ? $userSocial->getEmail() : "",
            'password' => Hash::make("password"),
            'first_name' => "",
            'last_name' => "",
            'address' => "",
            'city' => "",
            'country' => "",
            'points' => Config::get("app.pointsInfo.registerPoints"),
            "email_verified_at" => $email_verified == true ? now() : null
        ]);

        Auth::login($user);
        return redirect("home");
    }

    public function becomeSeller()
    {
        if(Auth::user()->points < 500)
            return "failed";

        if(Auth::user()->type == "user")
            Auth::user()->type = "seller";
        else if(Auth::user()->isActivePartnerPage())
            Auth::user()->type = "partner_seller";
        Auth::user()->points -= 500;

        Auth::user()->save();

        return "success";
    }
}
