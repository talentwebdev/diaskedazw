<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\CompanyModel;
use \App\AreaModel;
use \App\CategoryModel;
use App\LikeModel;
use DB;
use \App\Modules\CompanyPartner\Models\CompanySubscriptionModel;

class CompanyController extends Controller
{
    //
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }
    
    /**
     * fetch company
     */
    public function fetchCompanies()
    {
        $area = request()->area;
        $category = request()->category;
        $search = request()->search;

        if($search != '')
            return CompanyModel::where('name', 'like', '%'.$search.'%')
                                ->inRandomOrder()
                                ->get();
        else if($area == '' || $category == '' || $area == '0' || $category == '0')
            //return CompanyModel::inRandomOrder()->get();
            return CompanyModel::get();
        else
            return CompanyModel::where(['area_id'=>$area, 'category_id'=>$category])
                            ->inRandomOrder()
                            ->get();
    }

    public function fetchPromoteCompanies()
    {
        $subscribedUsers = CompanySubscriptionModel::all();
        $companyPromotes = array();
        foreach($subscribedUsers as $subscription)
        {
            if($subscription->end_time < now()) continue;

            $company = CompanyModel::where("user_id", '=', $subscription->user_id)->get();
            if(count($company) == 0) continue;
            
            array_push($companyPromotes, $company->first());
        }

        return $companyPromotes;
    }
    /**
     * fetch areas
     */
    public function fetchAreaCategory()
    {
        $result = array('');
        $result['category'] = CategoryModel::all();
        $result['area'] = AreaModel::all();
        return $result;
    }


    
    public static function likeCompany()
    {
        $company_id = request()->company_id;
        $partner_id = request()->partner_id;
        $like = request()->like;


        $company = CompanyModel::where('id', '=', $company_id)
                            ->get();
        if($company->first()){           

                $check = LikeModel::where('user_id', $partner_id)->where('content_id', $company_id)->get();
                if($check->first()){
                    DB::table('like')->update(['heart' => $like]);
                    return json_encode(array("response" => 200, 'like' => (int)$like ));
                }else{
                    LikeModel::addStatus($partner_id, $company_id, "company", "heart");
                    return json_encode(array("response" => 200 , 'like'=> (int)$like ));
                }                            
                   
        }
        return json_encode(array("response" => 0 ));

    }

    
}
