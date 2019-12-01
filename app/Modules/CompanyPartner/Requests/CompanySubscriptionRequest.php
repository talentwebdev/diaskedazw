<?php

namespace App\Modules\CompanyPartner\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CompanySubscriptionRequest extends FormRequest
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
            'type' => 'Company Subscription Type'
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
            'type' => 'required'
        ];
    }
}
