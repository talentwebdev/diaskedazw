<?php

/**
 * This file is part of PartnerCompany.
 *
 *
 *
 */

namespace App\Modules\CompanyPartner\Controllers;
use App\Modules\CompanyPartner\Models\InboxModel;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\CompanyModel;
use App\User;

class DashboardController extends Controller
{
   public function dashboard()
   {
       return view("company.dashboard.dashboard");
   }

   public function articles()
   {
       return view("company.dashboard.articles");
   }

   public function images()
   {
       return view("company.dashboard.images");
   }

   public function videos()
   {
       return view("company.dashboard.videos");
   }

   public function upload()
   {
       return view("company.dashboard.upload");
   }

   public function promote()
   {
       return view("company.dashboard.promote");
   }

   public function inbox()
   {
        $inboxs = InboxModel::all();
        return view('company.dashboard.inbox')
                ->with('inboxs', $inboxs);
   }

   public function companyedit()
   {
        $company = Auth::user()->company;
        if($company == null)
            return redirect()->route('company.partner.create');
        return view('company.dashboard.companyedit')
                ->with('company', $company);
   }
}