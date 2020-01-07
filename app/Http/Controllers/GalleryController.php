<?php

namespace App\Http\Controllers;

use App\User;
use App\GalleryModel;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use App\NotificationModel;
use App\LikeModel;
use App\Support\CompanyStatistics;

class GalleryController extends Controller
{
    //

    public function __construct() 
    {
        //$this->middleware('auth');
    }

    /**
     * fetch all gallery images.
     * @return Illuminate\Http\Response
     */
    public function fetchgallery() 
    {
        $partnerid = request()->partnerid;
        $count = (int)request()->count;

        $gallerys = "";
        if($count == -1)
            $gallerys = GalleryModel::where('partner_id', '=', $partnerid)
                            // ->where('status', '=', 1)
                            ->orderBy("created_at", "desc")
                            ->get();
        else
            $gallerys = GalleryModel::where('partner_id', '=', $partnerid)
                        // ->where('status', '=', 1)
                        ->orderBy('created_at')
                        ->take($count)
                        ->get();

        foreach($gallerys as $gallery)
        {
            // TODO: get like count, get if user click like button
            $likeCount = LikeModel::getLikeCount($gallery->id, "gallery");

            $gallery->star = $likeCount["star"];
            $gallery->clap = $likeCount["clap"];
            $gallery->heart = $likeCount["heart"];

            $gallery->is_star = 0;
            $gallery->is_clap = 0;
            $gallery->is_heart = 0;

            if(Auth::user() == null) continue;
            $like = LikeModel::getStatus(Auth::user()->id, $gallery->id, "gallery");

            if($like == null) continue;
            $gallery->is_star = $like->star;
            $gallery->is_clap = $like->clap;
            $gallery->is_heart = $like->heart;
        }
        
        return $gallerys;
    }

    public function likeGallery()
    {
        $gallery_id = request()->gallery_id;
        $likeType = request()->liketype;
        $partnerid = request()->partner_id;
        $content_source = request()->content_source;

        if(Auth::user() == null || !Auth::user()->isActivated()) return "failed";

        // add/modify value in database for gallery
        if(LikeModel::addStatus(Auth::user()->id, $gallery_id, "gallery", $likeType))
            // add ellin point to partner & add push notification for getting ellin points
            User::addEllinPoints($partnerid, $likeType, $content_source);

        // add company statistics
        if($content_source == "company")
            CompanyStatistics::addLike($partnerid, $likeType);
        //  return count of like
        if($likeType == "star")
            return LikeModel::getLikeCount($gallery_id, "gallery")["star"];
        else if($likeType == "clap")
            return likeModel::getLikeCount($gallery_id, "gallery")["clap"];
        else if($likeType == "heart")
            return likeModel::getLikeCount($gallery_id, "gallery")["heart"];

    }

    /**
     * add gallery into database
     */
    public function addGallery()
    {
        if(!Auth::check() || Auth::user()->isActivated() == false) return redirect('/login');

        $galleryid = request()->galleryid;

        if( $galleryid == "" || $galleryid == "null" )
        {
            $gallery = new GalleryModel;

            $gallery->partner_id        = Auth::user()->id;
            $gallery->title             = request()->title;
            $gallery->img_url           = request()->imgurl;
            $gallery->promote           = request()->promote;

            $gallery->save();
            $galleryid = $gallery->id;
        }
        else
        {
            $gallery = GalleryModel::find($galleryid);

            $gallery->title             = request()->title;
            $gallery->img_url           = request()->imgurl;
            $gallery->promote           = request()->promote;

            $gallery->save();
        }

        NotificationModel::addNotification(Auth::user()->id, 
                                            0,
                                            $gallery->id,
											"New Image Uploaded",
											request()->title,
											"upload_image",
											0);
        return $galleryid;
    }

    /**
     * get latest images from database.
     */
    public function latestImages()
    {
        $partners = User::where('type', '=', 'partner')
                        ->orWhere('type', '=', 'admin')
                        ->get();
        if(Auth::user() == null)
        {
            $images = GalleryModel::where('promote', '=', 2)
                    // ->where('status', '=', 1)
                    ->latest('created_at')
                    ->get();
            return array('promote' => true, 'data' => $images);
        }
        for($i = 0; $i < count($partners) ; $i++)
        {
           
            $images = GalleryModel::where('partner_id', '=', $partners[$i]->id)
                    // ->where('status', '=', 1)
                    ->where('promote', '=', 0)
                    ->latest('created_at')
                    ->get();
            if(count($images) > 0)
                $partners[$i]->image = $images[0];
            else
                $partners[$i]->image = null;
        }
        return $partners;
    }

    public function deleteGallery(){
        $imageid = request()->imageid;
        $image = GalleryModel::find($imageid);

        if($image != null)
        {
            if(\file_exists(public_path($image->img_url)))
                unlink(public_path($image->img_url));
            $image->delete();
        }
        return "success";
    }
}
