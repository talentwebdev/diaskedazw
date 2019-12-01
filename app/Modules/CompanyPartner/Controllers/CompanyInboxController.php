<?php

namespace App\Modules\CompanyPartner\Controllers;

use App\Modules\CompanyPartner\Models\InboxModel;
use App\Http\Controllers\Controller;

class CompanyInboxController extends Controller 
{
    public function store()
    {
        InboxModel::create(request()->except('_token'));
        
        return "success";
    }
}