<?php

/**
 * This file is part of PartnerCompany.
 *
 *
 *
 */

namespace App\Modules\CompanyPartner\Controllers;

use App\Modules\CompanyPartner\Requests\CompanyCreateRequest;
use App\Modules\CompanyPartner\Requests\CompanyUpdateRequest;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\CompanyModel;
use App\User;

class CompanyCreateController extends Controller
{
    public function create(CompanyCreateRequest $request)
    {
        $input = array();

        $input["user_id"] = Auth::user()->id;
        $input["name"] = request()->company_name;
        $input["link_url"] = request()->link_url;

        $area =  request()->company_area;
        $area_value = "";
        foreach($area as $item){
            $area_value .= ":".$item     ;
        }
        $input["area_id"] = $area_value  ; //request()->company_area;

        $category = request()->company_category;
        $category_value = "";
        foreach($category as $item){
            $category_value .= ":".$item;   
        }
        $input["category_id"] = $category_value;


        $input["discount_cnt"] = request()->discount_cnt;
        $input["discount_info"] = request()->discount_info;
        $input["description"] = request()->company_description;
        $input["slogan"] = request()->company_slogan;
        $input["company_video"] = request()->company_video;
        $input['communication'] = request()->company_communication;
        $input['address'] = request()->address;
        $input['latitude'] = request()->latitude;
        $input['longitude'] = request()->longitude;
        $input['facebook'] = request()->facebook;
        $input['youtube'] = request()->youtube;
        $input['twitter'] = request()->twitter;
        $input['email'] = request()->email;
        $input['instagram'] = request()->instagram;
        $input['linkedin'] = request()->linkedin;
        
        $imageName = Auth::user()->id . time() . '.' . request()->company_logo->getClientOriginalExtension();  
        request()->company_logo->move("images/logo/", $imageName);

        $input["logo_url"] = "images/logo/" . $imageName;

        CompanyModel::create($input);


        return redirect("/company/dashboard/home");
    }

    public function update(CompanyUpdateRequest $request)
    {
        $input = array();

        $input["user_id"] = Auth::user()->id;
        $input["name"] = request()->company_name;
        $input["email"] = request()->email;
        $input["link_url"] = request()->link_url;
        $input["discount_cnt"] = request()->discount_cnt;
        $input["discount_info"] = request()->discount_info;
        $input["description"] = request()->company_description;
        $input["slogan"] = request()->company_slogan;
        $input["company_video"] = request()->company_video;
        $input['communication'] = request()->company_communication;
        $input['address'] = request()->address;
        $input['latitude'] = request()->latitude;
        $input['longitude'] = request()->longitude;
        $input['facebook'] = request()->facebook;
        $input['youtube'] = request()->youtube;
        $input['twitter'] = request()->twitter;
        
        CompanyModel::find(request()->id)->fill($input)->save();

        return redirect("/company/dashboard/home");
    }

}
