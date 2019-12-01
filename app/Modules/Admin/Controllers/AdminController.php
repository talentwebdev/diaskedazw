<?php

namespace App\Modules\Admin\Controllers;

use App\VideoModel;
use App\GalleryModel;
use App\ArticleModel;
use App\Http\Controllers\Controller;

class AdminController extends Controller
{
    public function index()
    {
        $video = VideoModel::getPromoteVideo();
        return view('admin.upload')
                ->with('video', $video);
    }

    public function video()
    {
        return view('admin.videos')
                ->with('videos', VideoModel::where('promote', '=', 2)->get());
    }

    public function image()
    {
        return view('admin.images')
                ->with('images', GalleryModel::where('promote', '=', '2')->get());
    }

    public function checkVideos()
    {
        return view('admin.checkvideos')
                ->with('videos', VideoModel::where('status', '=', 0)
                                            ->orWhere('status', '=', null)->get());
    }

    public function checkImages()
    {
        return view('admin.checkimages')
                ->with('images', GalleryModel::where('status', '=', 0)
                                            ->orWhere('status', '=', null)->get());
    }

    public function checkArticles()
    {
        return view('admin.checkarticles')
                ->with('articles', ArticleModel::where('status', '=', 0)
                                            ->orWhere('status', '=', null)->get());
    }
}