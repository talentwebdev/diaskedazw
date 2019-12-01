<?php

namespace App\Modules\Admin\Controllers;

use App\User;
use App\VideoModel;
use App\GalleryModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Modules\Admin\Requests\ImageUploadRequest;

class ImageUploadController extends Controller
{
    public function store(ImageUploadRequest $request)
    {
        $input = $request->except("_token", 'type');

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

        GalleryModel::create($input);

        return back()->with('video', VideoModel::getPromoteVideo());
    }

    public function delete()
    {
        $image = GalleryModel::find(request()->image_id);

        if($image != null)
        {
            if(\file_exists(public_path($image->img_url)))
                unlink(public_path($image->img_url));
            $image->delete();
        }
        return back()->with('images', GalleryModel::where('promote', '=', 2)->get());
    }

    public function accept()
    {
        $image = GalleryModel::find(request()->image_id);
        if($image == null)
            return redirect()->route('admin.checkimages');
        $image->status = 1;
        $image->save();
        return redirect()->route('admin.checkimages');
    }

    public function deny()
    {
        $image = GalleryModel::find(request()->image_id);
        if($image == null)
            return redirect()->route('admin.checkimages');
        $image->status = 2;
        $image->save();
        return redirect()->route('admin.checkimages');
    }
}