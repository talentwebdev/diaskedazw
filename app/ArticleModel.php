<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use \App\User;

class ArticleModel extends Model
{
    //

    protected $table = "article";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['partner_id', 'content', 'title', 'popular', 'poster_img'];

    /**
    	* Get the partner that make this article
    */
    public function user()
    {
    	return $this->belongsTo("\App\User", "partner_id", "id");
    }

    public static function likeArticle($articleid, $flag, $isExist)
    {
        $article = ArticleModel::where('id', '=', $articleid)
                            ->get();

        if(count($article) == 0)  return "fail";

        $article = $article[0];

        if($flag == 1)
        {
            $article->like = $article->like + 1;
            $article->dislike = $article->dislike - (int)$isExist;
        }
        else
        {
            $article->dislike = $article->dislike + 1;
            $article->like = $article->like - (int)$isExist;
        }

        $article->save();
        return $article;
    }

}
