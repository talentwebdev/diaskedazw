<?php

namespace App\Support;

use Illuminate\Support\Facades\Auth;
use App\ArticleModel;
use App\LikeModel;
use App\User;

class ArticleSupport 
{
    public static function getArticlesFromPartner($partnerid, $count)
    {
        $articles = "";
		if($count == -1)
        	$articles = ArticleModel::where( 'partner_id', '=', $partnerid )
								->with( 'user' )
								->orderBy("created_at", "desc")
								->get(['created_at', 'poster_img', 'title', 'summary', 'id', 'partner_id', 'like', 'dislike']);
		else
		/*
			$articles = User::where('id', '=', $partnerid)
								->with(array('articles'=>function($query){
									$query->select('id', 'partner_id', 'created_at', 'poster_img', 'title', 'summary')->orderyBy('created_at')->take($count);
								}))								
								->get();
								*/
		
			$articles = ArticleModel::where( 'partner_id', '=', $partnerid )
								->with( 'user' )
								->orderBy('created_at')
								->take($count)								
								->get(['created_at', 'poster_img', 'title', 'summary', 'id', 'partner_id']);
		
		foreach($articles as $article)
        {
			// get like count for each video
			$likeCount = LikeModel::getLikeCount($article->id, "article");
			$article->star = $likeCount["star"];
			$article->clap = $likeCount["clap"];
			$article->heart = $likeCount["heart"];

			// get if this user click like button
			$article->is_star = 0;
			$article->is_clap = 0;
			$article->is_heart = 0;

			if(Auth::user() != null)
			{
				$like = LikeModel::getStatus(Auth::user()->id, $article->id ,"article");
				if($like != null)
				{
					$article->is_star = $like->star;
					$article->is_clap = $like->clap;
					$article->is_heart = $like->heart;
				}
			}
           
        }
        
        return $articles;
    }
}