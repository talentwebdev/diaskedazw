<?php

namespace App\Modules\CompanyPartner\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CompanyUpdateRequest extends FormRequest
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
            'company_name' => 'Company Name',
            'discount_cnt'  => 'Discount Count',
            'discount_info' => 'Discount Info',
            'company_description'   => 'Company Description',
            'company_communication' => 'Company Communication',
            'company_slogan' => 'Company Slogan'
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
            'company_name' => 'required',
            'discount_cnt' => 'required',
            'discount_info' => 'required',
            'company_description' => 'required',
            'company_communication' => 'required',
            'company_slogan' => 'required',
        ];
    }
}
