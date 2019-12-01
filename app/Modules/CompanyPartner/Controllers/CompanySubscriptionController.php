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
use App\Modules\CompanyPartner\Models\CompanySubscriptionModel;
use App\Modules\CompanyPartner\Requests\CompanySubscriptionRequest;

class CompanySubscriptionController extends Controller
{
    public function index()
    {
        return view('company.subscription.companysubscription');
    }
    public function store(CompanySubscriptionRequest $request)
    {
        if($request->input('type') == 'day')
        {
            if(Auth::user()->points < 100)
                return array('success' => false);
            Auth::user()->points -= 100;
        }
        else if($request->input('type') == 'month')
        {
            if(Auth::user()->points < 1000)
                return array('success' => false);
            Auth::user()->points -= 100;
        }
        else if($request->input('type') == 'year')
        {
            if(Auth::user()->points < 10000)
                return array('success' => false);
            Auth::user()->points -= 100;
        }
        else
            array('success' => false);

        Auth::user()->save();

        if(Auth::user()->companysubscription == null)
            CompanySubscriptionModel::addSubscription($request->input('type'));
        else
            CompanySubscriptionModel::editSubscription(Auth::user()->companysubscription->id, $request->input('type'));

        return array('success' => true);
    }
}