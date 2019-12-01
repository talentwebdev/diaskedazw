<?php

namespace App\Modules\Admin\Controllers;

use App\User;
use App\VideoModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Modules\Admin\Requests\VideoUploadRequest;

class VideoUploadController extends Controller
{
    public function store(VideoUploadRequest $request)
    {
        $input = $request->except("_token", "type");
        if($request->input('type') == 'visitor')
        {
            $input['promote'] = 2;
        }
        else if($request->input('type') == 'member')
        {
            $input['promote'] = 0;
        }

        $input['partner_id'] = Auth::user()->id;        
        $input['status'] = 1;

        VideoModel::create($input);

        return back()->with('video', VideoModel::getPromoteVideo());
    }

    public function promotestore(Request $request)
    {
        $input = $request->except('_token');
        $input['partner_id'] = Auth::user()->id;
        $input['promote'] = 3;
        $input['status'] = 1;

        $video = VideoModel::getPromoteVideo();

        if($video == null)
            $video = VideoModel::create($input);
        else
        {
            if(\file_exists(public_path($video->video_url)))
                unlink(public_path($video->video_url));
            $video->fill($input);
            $video->save();
        }

        return back()->with('video', $video);
    }

    public function delete()
    {
        $video = VideoModel::find(request()->video_id);

        if($video != null)
        {            
            if(\file_exists(public_path($video->video_url)))
                unlink(public_path($video->video_url));
            $video->delete();    
        }        
        
        return back()->with('videos', VideoModel::where('promote', '=', 2)->get());
    }

    public function accept()
    {
        $video = VideoModel::find(request()->video_id);
        if($video == null)
            return redirect()->route('admin.checkvideos');
        
        $video->status = 1;
        $video->save();
        return redirect()->route('admin.checkvideos');
    }

    public function deny()
    {
        $video = VideoModel::find(request()->video_id);
        if($video == null)
            return redirect()->route('admin.checkvideos');

        $video->status = 2;
        $video->save();
        return redirect()->route('admin.checkvideos');
    }
}
