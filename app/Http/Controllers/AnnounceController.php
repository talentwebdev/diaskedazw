<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AnnounceModel;
use App\User;
use Illuminate\Support\Facades\Auth;

class AnnounceController extends Controller
{
    //

    public function addAnnounce()
    {
        $title = request()->title;
        $content = request()->content;

        $announce = new AnnounceModel;
        $announce->partner_id = Auth::user()->id;
        $announce->timestamps = false;
        $announce->title = $title;
        $announce->content = $content;
        $announce->save();

        return "success";
    }

    public function getAnnounce()
    {
        $id = request()->session()->get('partnerid');
        if(Auth::user() != null)
            $annoucnes = AnnounceModel::where('partner_id', '=', $id)
                                    ->where(function($query){
                                        $query->where('user_id', '=', 0)
                                            ->orWhere('user_id', '=', Auth::user()->id);
                                    })
                                    ->orderBy('date', 'desc')
                                    ->take(10)
                                    ->get();
        else
            $annoucnes = AnnounceModel::where('partner_id', '=', $id)
                ->where('user_id', '=', 0)
                ->orderBy('date', 'desc')
                ->take(10)
                ->get();
                                    
        return $annoucnes;
    }

    public function getPublicAnnounce()
    {
        if(!auth()->check())
            return array();
        $announces = AnnounceModel::where('user_id', 0)
                                    ->with('user')
                                    ->orderBy('date', 'desc')
                                    ->take(10)
                                    ->get();
        return $announces;
    }
}
