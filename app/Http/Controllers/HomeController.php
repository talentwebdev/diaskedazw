<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Hash;
use Braintree_ClientToken;
use App\VideoModel;
use App\Support\VideoSupport;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(!Auth::check()) return view('auth.login')->with('promotevideo', VideoModel::getPromoteVideo());

        $user = Auth::user();

        if($user->isActiveUserPage())        
            return view("auth.login");
        else if($user->isActivePartnerPage())
            return redirect('partner.dashboard');
        else if($user->type == "company_partner")
            return redirect(route("company.dashboard.home"));
        else if($user->type == "admin")
            return redirect()->route('admin.index');

    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function firstpage()
    {
        if(!Auth::check()) return redirect('/login');

        return view('auth.login')->with('promotevideo' , VideoModel::getLatestVideo());

    }

     /**
     * Show the profile dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function profile()
    {
        if(!Auth::check()) return redirect('/login');
        return view("profile");
    }

    /**
     * Show the profile dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function about()
    {
        return view("user.about");
    }

    /**
     * Show the profile dashboard.  
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function packages()
    {
        //if(!Auth::check()) return redirect('/login');
        //if( Auth::user()->isUser() )
        return view("user.packages.packages");
            
    }

    /**

     * Display a listing of the resource.

     *

     * \Illuminate\Contracts\Support\Renderable

     */
    public function imageUpload()
    {

        return view('imageUpload');

    } 

    /**

     * Display a listing of the resource.

     *

     * @return \Illuminate\Http\Response

     */

    public function imageUploadPost()
    {
        if(!Auth::check())  return redirect('/login');
        request()->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

  
        $img_url = Auth::user()->img_url;
        if( strrpos( $img_url, "default.jpg" ) === false ){
            Storage::delete( $img_url );
        }

        $imageName = Auth::user()->id . time() . '.' . request()->image->getClientOriginalExtension();  

        request()->image->move('images', $imageName);

        Auth::user()->img_url = "images/". $imageName;
        Auth::user()->save();

        return back()

            ->with('success','You have successfully upload image.')

            ->with('image', $imageName);

    }
    
    /** 
        * Save User
    */

    public function saveUser()
    {        
        if(!Auth::check()) return redirect("/login");
        Auth::user()->name          = request()->name;
        Auth::user()->first_name    = request()->first_name;
        Auth::user()->last_name     = request()->last_name;
        Auth::user()->address       = request()->address;
        Auth::user()->city          = request()->city;
        Auth::user()->country       = request()->country;
        Auth::user()->summary       = request()->summary;
        Auth::user()->password      = Hash::make(request()->password);
        Auth::user()->mobile        = request()->mobile;
        Auth::user()->telephone     = request()->phone;
        
        Auth::user()->save();
        return "done";
    }

    /**
     * set partner
     */
    public function setPartner()
    {
        $partnerid = request()->partnerid;
        $videoid = request()->videoid;
        $articleid = request()->articleid;

        request()->session()->put("videoid", $videoid);
        request()->session()->put('articleid', $articleid);
        request()->session()->put('partnerid', $partnerid);
        return "success";
    }
}
