<?php

/**
 * This file is part of PartnerCompany.
 *
 *
 *
 */

namespace App\Modules\CompanyPartner\Controllers;

use App\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Modules\CompanyPartner\Models\CompanyAdsModel;
use App\Modules\CompanyPartner\Requests\CompanyAddAdsRequest;

class DashboardCompanyAdsController extends Controller
{
    public function addads(CompanyAddAdsRequest $request)
    {
        $companyads = new CompanyAdsModel;

        $companyads->headline       = request()->headline;
        $companyads->description    = request()->description;
        $companyads->user_id        = Auth::user()->id;
        $companyads->link_url       = request()->link_url;

        // move files
        $imageName = Auth::user()->id . time() . '.' . request()->adsimage->getClientOriginalExtension();  
        request()->adsimage->move('images/company_ads', $imageName);
        $companyads->adsimage_url = "images/company_ads/" . $imageName;

        $imageName = Auth::user()->id . time() . '.' . request()->logoimage->getClientOriginalExtension();  
        request()->logoimage->move("images/company_ads_logo", $imageName);
        $companyads->logoimage_url = "images/company_ads_logo/" . $imageName;

        $companyads->timestamps = false;

        $companyads->save();

        //return redirect()->route('company.dashboard.companyads');
        return redirect("/company/dashboard/companyads");
    }
}