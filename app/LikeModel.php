<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LikeModel extends Model
{
    //

    protected $table = "like";

    /**
     * @param userid
     * @param contentid
     * @param type
     */
    public static function getStatus($userid, $contentid, $type)
    {
        $status = LikeModel::where(array('user_id' => $userid, 'content_id' => $contentid, 'content_type' => $type))
                                ->get();
                        

        if(count($status) == 0)
            return null;
        
        return $status[0];
    }

    /**
     * @param userid: user id
     * @param contentid: content id(video, article, image id)
     * @param type: video, image, article, product
     * @param likeType: star, clap, heart
     * 
     * @return 1: if some data changed, 0: not changed
     */
    public static function addStatus($userid, $contentid, $type, $likeType)
    {
        // find like model with user id and content id and type,
        $like = LikeModel::where(array('user_id' => $userid, 'content_id' => $contentid, 'content_type' => $type))
                            ->get();

        $isChanged = 0;

        // if not exist like model, return new model, otherwise return exisint model
        if(count($like) == 0)  $like = new LikeModel;
        else $like = $like[0];

        // save indexing data
        $like->user_id = $userid;
        $like->content_id = $contentid;
        $like->content_type = $type;

        if($likeType == "star")
        {
            if((int)$like->star == 0)    $isChanged = 1;
            $like->star = 1;
        }
        else if($likeType == "clap")
        {
            if((int)$like->clap == 0)    $isChanged = 1;
            $like->clap  = 1;
        }
        else if($likeType == "heart")
        {
            if((int)$like->heart == 0)    $isChanged = 1;
            $like->heart = 1;
        }

        $like->timestamps = false;
        $like->save();

        return $isChanged;
    }

    public static function getLikeCount($contentid, $contentType)
    {
        $likes = LikeModel::where(array('content_id'=>$contentid, 'content_type'=>$contentType))->get();

        $result = array('star' => 0, 'clap' => 0, 'heart' => 0);

        foreach($likes as $like)
        {
            if($like->star == 1 || $like->star == "1") $result['star'] ++;
            if($like->clap == 1 || $like->clap == "1") $result['clap'] ++;
            if($like->heart == 1 || $like->heart == "1") $result['heart'] ++;
        }

        return $result;
    }
}
