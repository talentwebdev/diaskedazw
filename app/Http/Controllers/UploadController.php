<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\File;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use App\PartnerModel;

class UploadController extends Controller
{
    //

    /**
     * upload video iamge
     */
    public function uploadImage()
    {
        if(Auth::user() == null || Auth::user()->isActivated() == false)
            return "error";

        $type = request()->type;
        request()->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
        ]);
        
        
        $imgurl = request()->imgurl;

        if($imgurl != 'null' && $imgurl != '' && Storage::exists($imgurl))
        {
            Storage::delete( $imgurl );
        }

        $imageName = Auth::user()->id . time() . '.' . request()->image->getClientOriginalExtension();  

        if($type == "video")
        {
            //Storage::putFileAs("images/videos", request()->image->get(), $imageName, 'public' );
            //Storage::move(request()->image->get(), $imageName);
            request()->image->move( 'images/videos', $imageName);
            $imgurl = 'images/videos/' . $imageName;
        }
        else if($type == "article")
        {
            request()->image->move( 'images/articles', $imageName);
            $imgurl = 'images/articles/' . $imageName;
        }
        else if($type == "gallery")
        {
            request()->image->move( 'images/gallery', $imageName);
            $imgurl = 'images/gallery/' . $imageName;
        }
        else if($type == "product")
        {
            $imageName = "product" . $imageName;
            request()->image->move('images/product', $imageName);
            $imgurl = "images/product/" . $imageName;
        }
        else if($type == "productcolor")
        {
            $imageName = "productcolor" . $imageName;
            request()->image->move("images/product", $imageName);
            $imgurl = "images/product/" . $imageName;
        }
        
        return $imgurl;
    }

    public function uploadMultipleImage()
    {
        $files = request()->file("files");
        $fileUrls = array();

        $index = 0;
        
        foreach($files as $file)
        {
            $imageName = $index++ . Auth::user()->id . time() . '.' . $file->getClientOriginalExtension();  

            $file->move("images/overview", $imageName);
            array_push($fileUrls, "images/overview/" . $imageName);
        }

        return $fileUrls;
    }

    /**
     * upload video file
     * type:
     *      0: partner promote videos for visitos which show on partner profile page in advertise section
     *      1: partner promote videos for members which show on partner profile page in advertise section
     *      2: partner profile video which show on partners page
     *      3: eshop video 
     *      not set: common video as content
     */
    public function uploadVideoFile()
    {
        if(Auth::user() == null || Auth::user()->isActivated() == false)
            return "error";
        $videourl = request()->videourl;
        $type = request()->exists("type") ? request()->type : -1;

        if($type == 3 && Auth::user()->video_url != 'null' || Auth::user()->video_url != '')
        {
            $videourl = Auth::user()->video_url;
        }

        if($videourl != 'null' && $videourl != '' && Storage::exists($videourl))
        {
            Storage::delete( $videourl );
        }        

        $videoName = Auth::user()->id . time() . '.' . request()->video->getClientOriginalExtension();  
        request()->video->move( 'videos/upload', $videoName);

        $videourl = 'videos/upload/' . $videoName;
        if($type == 0) // partner promote video
        {
            $partner = PartnerModel::where('partner_id', '=', Auth::user()->id)->first();
            
            if($partner != null)
            {
                $partner->promote_visitor_video_url = $videourl;
                $partner->timestamps = false;
                $partner->save();
            }
        }
        else if($type == 1)
        {
            $partner = PartnerModel::where('partner_id', '=', Auth::user()->id)->first();
                
            $partner->promote_member_video_url = $videourl;
            $partner->timestamps = false;
            $partner->save();
        }
        else if($type == 2)
        {
            $partner = PartnerModel::where('partner_id', '=', Auth::user()->id)->first();
            
            $partner->profilevideo_url = $videourl;
            $partner->timestamps = false;
            $partner->save();
        }
        else if($type == 3)
        {
            Auth::user()->video_url = $videourl;
            Auth::user()->save();
        }
        return $videourl;
    }

    /**
     * upload Doc file
     */
    public function uploadDocFile()
    {
        if(Auth::user() == null)
            return "error";
        $docUrl = Auth::user()->id . time() . "." . request()->docfile->getClientOriginalExtension();

        request()->docfile->move( 'docs/upload', $docUrl);

        return "docs/upload/" . $docUrl;
    }
}
