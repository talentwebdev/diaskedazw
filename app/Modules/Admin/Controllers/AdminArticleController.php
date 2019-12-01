<?php

namespace App\Modules\Admin\Controllers;

use App\User;
use App\ArticleModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Modules\Admin\Requests\ImageUploadRequest;

class AdminArticleController extends Controller
{
    public function accept()
    {
        $article = ArticleModel::find(request()->article_id);
        if($article == null)
            return redirect()->route('admin.checkarticles');
        $article->status = 1;
        $article->save();
        return redirect()->route('admin.checkarticles');
    }

    public function deny()
    {
        $article = ArticleModel::find(request()->article_id);
        if($article == null)
            return redirect()->route('admin.checkarticles');
        $article->status = 2;
        $article->save();
        return redirect()->route('admin.checkarticles');
    }
}