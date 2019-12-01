<?php

namespace App\Support;

use App\User;
use App\LikeModel;
use App\VideoModel;
use Illuminate\Support\Facades\Auth;

class VideoSupport
{
    public static function getVideosFromPartner($partnerid, $count)
    {
        if(!auth()->check() || Auth::user()->isActivated() == false)
        {
            $videos = VideoModel::where('partner_id', '=', $partnerid)
                                ->where('promote', '=', 1)
                                ->orderBy("created_at", "desc")
                                ->get();
            
        }
        else
        {
            $videos = "";
            if($count == -1)
                $videos = VideoModel::where( 'partner_id', '=', $partnerid )
                            ->where('promote', '=', 0)
                            ->orderBy('created_at', 'desc')
                            ->get();
            else 
                $videos = VideoModel::where( 'partner_id', '=', $partnerid )
                            ->where('promote', '=', 0)
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

    public static function getLatestVideos()
    {
        
        $partners = User::where('type', '=', 'partner')
                        ->orWhere('type', '=', 'admin')
                        ->get();

        $latestvideos = array();

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
                
                $videos[0]['user'] = $partners[$i];

                array_push($latestvideos, $videos[0]);
            }
        }
        return $latestvideos;
    }
}