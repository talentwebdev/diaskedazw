<?php

namespace App\Modules\Admin\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VideoUploadRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get custom attributes for validator errors.
     *
     * @return array
     */
    public function attributes()
    {
        return [
            'video_url' => 'Video',
            'adimg_url'  => 'Video Image',  
            'title' => 'Video Title',
            'description'   => 'Video Description',
            'type'      => 'Video Type',
        ];
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'video_url' => 'required',
            'adimg_url'  => 'required',
            'title' => 'required',
            'description'   => 'required',
            'type' => 'required',
        ];
    }
}