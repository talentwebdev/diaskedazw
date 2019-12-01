<?php

namespace App\Support;

use Illuminate\Support\Facades\Auth;
use App\GalleryModel;
use App\LikeModel;
use App\User;

class ImageSupport
{
    public static function getImagesFromPartner($partnerid, $count, $random = false)
    {
        $gallerys = "";
        if($count == -1)
        {
            if($random == false)
                $gallerys = GalleryModel::where('partner_id', '=', $partnerid)
                            ->orderBy("created_at", "desc")
                            ->get();
            else
                $gallerys = GalleryModel::where('partner_id', '=', $partnerid)
                            ->inRandomOrder()
                            ->get();
        }
        else
        {
            if($random == false)
                $gallerys = GalleryModel::where('partner_id', '=', $partnerid)
                        ->orderBy('created_at')
                        ->take($count)
                        ->get();
            else
                $gallerys = GalleryModel::where('partner_id', '=', $partnerid)
                        ->inRandomOrder()   
                        ->take($count)
                        ->get();
        }

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
}