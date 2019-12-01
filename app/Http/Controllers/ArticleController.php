<?php

namespace App\Http\Controllers;

use App\User;
use \App\ArticleModel;
use App\LikeModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\NotificationModel;

class ArticleController extends Controller
{
    //
	/**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
	}
	

	
    /**
     * get articles
     */
    public function getArticlesFromPartner()
    {
		//if(!Auth::check()) return redirect('/');
		$count = (int)request()->count;
		$partnerid = request()->partnerid;
		
		$articles = "";
		if($count == -1)
			$articles = ArticleModel::where( 'partner_id', '=', $partnerid )
								->where('status', '=', 1)
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
								->where('status', '=', 1)
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

	public function likeArticle()
    {
        $article_id = request()->article_id;
		$likeType = request()->liketype;
		$partnerid = request()->partner_id;
		
		if(Auth::user() == null || !Auth::user()->isActivated()) return "failed";

		// add status for video
		if(LikeModel::addStatus(Auth::user()->id, $article_id, "article", $likeType))
			User::addEllinPoints($partnerid, $likeType);

		// return count of like
		if($likeType == "star")
			return LikeModel::getLikeCount($article_id, "article")["star"];
		else if($likeType == "clap")
			return LikeModel::getLikeCount($article_id, "article")["clap"];
		else if($likeType == "heart")
			return LikeModel::getLikeCount($article_id, "article")["heart"];		
    }
	
	/**
	 * add article
	 */
	public function addArticle()
	{
		if(!Auth::check()) return redirect('/');

		$articleid = request()->articleid;

		if($articleid == "" || $articleid == "null")
		{
			$article = new ArticleModel;

			$article->partner_id 			= Auth::user()->id;
			$article->title 				= request()->title;
			$article->content 				= request()->content;
			$article->popular				=  0;
			$article->poster_img			= request()->imgurl;
			$article->summary 				= request()->summary;

			$article->save();
			$articleid = $article->id;
		}
		else 
		{
			$article = ArticleModel::find($articleid);

			$article->title 				= request()->title;
			$article->content 				= request()->content;
			$article->poster_img			= request()->imgurl;

			$article->save();
		}

		NotificationModel::addNotification(Auth::user()->id, 
											0,
											$article->id,
											"New Article Uploaded",
											$article->title,
											"upload_article",
											0);
		return $articleid;
	}

	/**
	 * get latest articles for each partner
	 */
	public function getLatestArticle()
	{
		$partners = User::where('type', '=', 'partner')->get();
		$articles = array();
        for($i = 0; $i < count($partners) ; $i++)
        {
			$article = ArticleModel::where('partner_id', '=', $partners[$i]->id)
									->where('status', '=', 1)
									->latest('created_at')
									->get(['created_at', 'poster_img', 'title', 'summary', 'id', 'partner_id']);
			
			if(count($article) > 0)
			{
				$article[0]->user = $partners[$i];
				// get like count for each video
				$likeCount = LikeModel::getLikeCount($article[0]->id, "article");
				$article[0]->star = $likeCount["star"];
				$article[0]->clap = $likeCount["clap"];
				$article[0]->heart = $likeCount["heart"];

				// get if this user click like button
				$article[0]->is_star = 0;
				$article[0]->is_clap = 0;
				$article[0]->is_heart = 0;

				if(Auth::user() != null)
				{
					$like = LikeModel::getStatus(Auth::user()->id, $article[0]->id ,"article");
					if($like != null)
					{
						$article[0]->is_star = $like->star;
						$article[0]->is_clap = $like->clap;
						$article[0]->is_heart = $like->heart;
					}
				}

				array_push($articles, $article[0]);
			}
        }
        return $articles;
	}

	/**
	 * search article
	 */
	public function searchArticle()
	{
		//if(!Auth::check()) return redirect('/');
		
		$str = request()->searchindex;
		$partnerid = request()->partnerid;
		$articles = "";
		if($partnerid == '')
			$articles = ArticleModel::where('title', 'like', '%'.$str.'%')
								->where('status', '=', 1)
								->with('user')
								->get(['created_at', 'poster_img', 'title', 'summary', 'id', 'partner_id']);
		else
			$articles = ArticleModel::where('title', 'like', '%'.$str.'%')
									->where('partner_id', '=', $partnerid)
									->where('status', '=', 1)
									->with('user')
									->get(['created_at', 'poster_img', 'title', 'summary', 'id', 'partner_id']);
		return $articles;
	}

	/** 
	 * fetch article content
	 */
	public function getArticleContent()
	{
		if(!Auth::check() || Auth::user()->isActivated() == false) return 'error';

		$articleid = request()->articleid;		
		$partnerid = request()->partner_id;
		
		$article = ArticleModel::find($articleid, ['id', 'title', 'content', 'like', 'dislike', 'poster_img']);

		if($partnerid != 'null' && $partnerid != '')
		{
			// add ellin point to partner & add push notification for getting ellin points
			User::addEllinPoints($partnerid, "readmore");

			//  get like count and get if this user activated like button
			$likeCount = LikeModel::getLikeCount($articleid, "article");
			$article->star = $likeCount["star"];
			$article->clap = $likeCount["clap"];
			$article->heart = $likeCount["heart"];
	
			$article->is_star = 0;
			$article->is_clap = 0;
			$article->is_heart = 0;
	
			$like = LikeModel::getStatus(Auth::user()->id, $articleid ,"article");
			if($like != null)
			{
				$article->is_star = $like->star;
				$article->is_clap = $like->clap;
				$article->is_heart = $like->heart;
			}
		}	

		return $article;
	}


	public function deleteArticle(){
		$articleid = request()->articleid;

		$article = ArticleModel::find($articleid);
		if($article != null)
			$article->delete();

		return "success";
	}
}
