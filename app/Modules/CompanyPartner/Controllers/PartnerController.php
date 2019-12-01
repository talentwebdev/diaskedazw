<?php

/**
 * This file is part of PartnerCompany.
 *
 *
 *
 */

namespace App\Modules\CompanyPartner\Controllers;
use App\Http\Controllers\Controller;
use  App\User;

class PartnerController extends Controller
{
    public function index()
    {

    }

    public function create()
    {
        return view("company.partner.create");
    }

    public function becomePartner()
    {        
        $id = request()->user_id;
        if(User::becomeCompanyPartner($id))
            return array('success' => true);
        else
            return array('success' => false);

    }
}