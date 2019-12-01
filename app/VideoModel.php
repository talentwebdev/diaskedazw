<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VideoModel extends Model
{
    //
    protected $table = "video";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['partner_id', 'video_url', 'title', 'adimg_url', 'popular', 'description', 'promote', 'like', 'dislike'];

    /**
     * relations one to many with user
     */
    public function user()
    {
        return $this->belongsTo("\App\User", "partner_id", "id");
    }

    public static function likeVideo($videoid, $flag, $isExist)
    {
        $video = VideoModel::where('id', '=', $videoid)
                            ->get();

        if(count($video) == 0)  return "fail";

        $video = $video[0];

        if($flag == 1)
        {
            $video->like = $video->like + 1;
            $video->dislike = $video->dislike - (int)$isExist;
        }
        else
        {
            $video->dislike = $video->dislike + 1;
            $video->like = $video->like - (int)$isExist;
        }

        $video->save();
        return $video;
    }

    public static function getPromoteVideo()
    {
        $videos = VideoModel::where('promote', '=', '3')
                            ->get();
        if(count($videos) == 0) return null;
        return $videos[0];
    }

    public static function getLatestVideo()
    {
        $videos = VideoModel::where('promote', '=', '0')
                        ->orderBy('created_at', 'desc')
                        ->get();

        if(count($videos) == 0) return null;
        return $videos[0];
    }
}
