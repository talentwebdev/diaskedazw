<?php

namespace App\Modules\CompanyPartner\Requests;
 
use Illuminate\Foundation\Http\FormRequest;

class CompanyAddAdsRequest extends FormRequest
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
            'link_url' => 'Link Url',
            'logoimage' => 'Company Logo Image',
            'adsimage' => 'Ads Image',
            'headline' => 'Head Line',
            'description' => 'Description',
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
            //
            'link_url' => 'required',
            'logoimage' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'adsimage' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'headline' => 'required',
            'description' => 'required',
        ];
    }
}