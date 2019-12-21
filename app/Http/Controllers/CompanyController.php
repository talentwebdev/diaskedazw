<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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

    public function fetchFavoriteCompanies()
    {
        $likes = LikeModel::where('content_type', '=', 'company')
                            ->where('heart', '=', 1)
                            ->where('user_id', '=', Auth::user()->id)
                            ->get();

        $companies = array();
        foreach($likes as $like)
        {
            $company = CompanyModel::find($like->content_id);
            if($company)
                array_push($companies, $company);
        }   
        return $companies;
    }


    
    public static function likeCompany()
    {
        $company_id = request()->company_id;
        $partner_id = request()->partner_id;
        $like = request()->like;

        if(!Auth::user())
        {
            return json_encode(array("response" => 0));
        }


        $company = CompanyModel::where('id', '=', $company_id)
                            ->get();
        if($company->first()){           

            $check = LikeModel::where('user_id', Auth::user()->id)
                    ->where('content_type', '=', 'company')
                    ->where('content_id', $company_id)->get();
            if(count($check) > 0) $likemodel = $check[0];
            else $likemodel = new LikeModel;

            $likemodel->content_type = "company";
            $likemodel->content_id = $company_id;
            $likemodel->heart = $like;
            $likemodel->user_id = Auth::user()->id;
            $likemodel->timestamps = false;
            $likemodel->save();

            return json_encode(array("response" => 200, 'like' => (int)$like, 'likecount' => (int)LikeModel::getLikeCount($company_id, "company") ));                         
                   
        }
        return json_encode(array("response" => 0 ));

    }


    
}
