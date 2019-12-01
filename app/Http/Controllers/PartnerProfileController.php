<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\VideoModel;
use App\User;
use App\ArticleModel;

class PartnerProfileController extends Controller
{
    //

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
     //   $this->middleware( "auth" );
    }

    /**
     * index
     * return view of partnerprofile
     */
    public function index($type)
    {
        $content_id = request()->content_id;
        $id = request()->session()->get('partnerid');
        $videoid = request()->session()->get('videoid');
        $articleid = request()->session()->get('articleid');
        $partner = User::where('id', '=', $id)->with('partner')->get()->first();
        
        if($partner != null && $partner->isActivePartnerPage())
        {
            if($type == 'home')
                return view( 'user.partnerprofile.partnerprofile', ["partner"=>$partner, "videoid"=>$videoid, "articleid"=>$articleid] );
            if($type == 'video')
                return view( 'user.partnerprofile.partnerprofile_video', ["partner"=>$partner, "content_id" => $content_id] );
            if($type == 'article')
                return view( 'user.partnerprofile.partnerprofile_article', ["partner"=>$partner, "content_id" => $content_id] );
            if($type == 'gallery')
                return view( 'user.partnerprofile.partnerprofile_gallery', ["partner"=>$partner, "content_id" => $content_id] );
        }
            
        return redirect('/home');
        //return $partner;
    }

}
