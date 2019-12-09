<?php

namespace App\Modules\CompanyPartner\Models;

use Illuminate\Database\Eloquent\Model;

class CompanyAdsModel extends Model 
{
    protected $table = 'company_ads';

    protected $fillable = [
        'id', 'user_id', 'company_id', 'ads_content'
    ];

    public static function getCompanyAdsFromUser($user)
    {
        $companyads = CompanyAdsModel::where('user_id', '=', $user->id)->get();

        return $companyads;
    }

}