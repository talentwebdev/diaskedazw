<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Support\Facades\Auth;
use App\VideoModel;
use App\LikeModel;
use Illuminate\Http\Request;
use App\NotificationModel;
use App\Support\CompanyStatistics;

class VideoController extends Controller
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
     * get videos from database
     */
    public function getVideosFromPartner()
    {
        $partnerid = request()->partnerid;
        $count = (int)(request()->count);

        if(!auth()->check() || Auth::user()->isActivated() == false)
        {
            $videos = VideoModel::where('partner_id', '=', $partnerid)
                                ->where('promote', '=', 1)
                                ->where('status', '=', 1)
                                ->orderBy("created_at", "desc")
                                ->get();
            
        }
        else
        {
            $videos = "";
            if($count == -1)
                $videos = VideoModel::where( 'partner_id', '=', $partnerid )
                            ->where('promote', '=', 0)
                            ->where('status', '=', 1)
                            ->orderBy('created_at', 'desc')
                            ->get();
            else 
                $videos = VideoModel::where( 'partner_id', '=', $partnerid )
                            ->where('promote', '=', 0)
                            ->where('status', '=', 1)
                            ->orderBy('created_at', 'desc')
                            ->take($count)
                            ->get();
        }

        foreach($videos as $video)
        {
            //if(Auth::user()->type != "user")    continue;

            // get like count for each video
            $likeCount = LikeModel::getLikeCount($video->id, "video");

            $video->star = $likeCount["star"];
            $video->clap = $likeCount["clap"];
            $video->heart = $likeCount["heart"];

            // get if this user click like button
            $video->is_star = 0;
            $video->is_clap = 0;
            $video->is_heart = 0;

            if(Auth::user() != null)
            {
                $like = LikeModel::getStatus(Auth::user()->id, $video->id, "video");
                if($like != null)
                {
                    $video->is_star = $like->star;
                    $video->is_clap = $like->clap;
                    $video->is_heart = $like->heart;
                }
            }
        }
        
        return $videos;
    }

    public function likeVideo()
    {
        $videoid = request()->video_id;
        $likeType = request()->liketype;
        $partnerid = request()->partner_id;
        $content_source = request()->content_source;

        if(Auth::user() == null || !Auth::user()->isActivated()) return "failed";

        // add status for video
        if(LikeModel::addStatus(Auth::user()->id, $videoid, "video", $likeType))
            // add ellin point to partner & add push notification for getting ellin points
            User::addEllinPoints($partnerid, $likeTypem, $content_source);        

        // add company statistics
        if($content_source == "company")
            CompanyStatistics::addLike($partnerid, $likeType);
        // return count of like 
        if($likeType == "star")
            return LikeModel::getLikeCount($videoid, "video")["star"];
        else if($likeType == "clap")
            return LikeModel::getLikeCount($videoid, "video")["clap"];
        else if($likeType == "heart")
            return LikeModel::getLikeCount($videoid, "video")["heart"];

       
    }

    /**
     * add video to database
     */
    public function addVideo()
    {
        if(Auth::user() == null || Auth::user()->isActivated() == false)
            return "error";
        $videoid = request()->videoid;

        if( $videoid == "" || $videoid == "null" )
        {
            $video = new VideoModel;

            $video->partner_id          = Auth::user()->id;
            $video->video_url           = request()->videourl;
            $video->title               = request()->title;
            $video->adimg_url           = request()->imgurl;
            $video->popular             = 0 ;
            $video->description         = request()->description;
            $video->promote             = request()->promote;

            $video->save();
            $videoid = $video->id;
        }
        else
        {
            $video = VideoModel::find($videoid);
            
            $video->video_url           = request()->videourl;
            $video->title               = request()->title;
            $video->adimg_url           = request()->imgurl;
            $video->description         = request()->description;
            $video->promote             = request()->promote;

            $video->save();
        }   

        
        NotificationModel::addNotification(Auth::user()->id, 
                                            0,
                                            $video->id,
                                            "New Video Uploaded",
                                            $video->title,
                                            "upload_video",
                                            0);
                                            
        return $videoid;
    }

    /**
     * get videos from each partner
     */
    public function getLatestVideo()
    {
        if(!auth()->check() || Auth::user()->isActivated() == false)
        {
            $videos = VideoModel::where('promote', '=', '2')
                                ->where('status', '=', 1)
                                ->latest('created_at')
                                ->take(4)
                                ->get();
            
            for($i = 0 ; $i < count($videos) ; $i++)
            {
                // get like count for each video
				$likeCount = LikeModel::getLikeCount($videos[$i]->id, "video");
				$videos[$i]->star = $likeCount["star"];
				$videos[$i]->clap = $likeCount["clap"];
				$videos[$i]->heart = $likeCount["heart"];

				// get if this user click like button
				$videos[$i]->is_star = 0;
				$videos[$i]->is_clap = 0;
				$videos[$i]->is_heart = 0;

				if(Auth::user() != null)
				{
					$like = LikeModel::getStatus(Auth::user()->id, $videos[$i]->id ,"video");
					if($like != null)
					{
						$videos[$i]->is_star = $like->star;
						$videos[$i]->is_clap = $like->clap;
						$videos[$i]->is_heart = $like->heart;
					}
                }
            }
            return $videos;
        }
        
        $partners = User::where('type', '=', 'partner')
                        // ->where('status', '=', 1)
                        ->orWhere('type', '=', 'admin')
                        ->get();
        for($i = 0; $i < count($partners) ; $i++)
        {
            $videos = "";
            $videos = VideoModel::where(array('partner_id'=>$partners[$i]->id, 'promote'=>'0'))->latest('created_at')->get();
            if(count($videos) > 0)
            {
                // get like count for each video
				$likeCount = LikeModel::getLikeCount($videos[0]->id, "video");
				$videos[0]->star = $likeCount["star"];
				$videos[0]->clap = $likeCount["clap"];
				$videos[0]->heart = $likeCount["heart"];

				// get if this user click like button
				$videos[0]->is_star = 0;
				$videos[0]->is_clap = 0;
				$videos[0]->is_heart = 0;

				if(Auth::user() != null)
				{
					$like = LikeModel::getStatus(Auth::user()->id, $videos[0]->id ,"video");
					if($like != null)
					{
						$videos[0]->is_star = $like->star;
						$videos[0]->is_clap = $like->clap;
						$videos[0]->is_heart = $like->heart;
					}
                }
                
                $partners[$i]->video = $videos[0];
            }
            else
                $partners[$i]->video = null;
        }
        return $partners;
    }

    public function deleteVideo(){
        $videoid = request()->videoid;
        $video = VideoModel::find($videoid);

        if($video != null)
        {
            if(\file_exists(public_path($video->video_url)))
                unlink(public_path($video->video_url));
            if(\file_exists(public_path($video->adimg_url)))
                unlink(public_path($video->adimg_url));

            $video->delete();
        }
    }
}
