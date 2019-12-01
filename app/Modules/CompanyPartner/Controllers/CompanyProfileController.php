<?php

/**
 * This file is part of PartnerCompany.
 *
 *
 *
 */

namespace App\Modules\CompanyPartner\Controllers;

use App\User;
use App\CompanyModel;
use App\ProductModel;
use App\DiscountModel;
use App\LikeModel;
use App\Support\VideoSupport;
use App\Support\ImageSupport;
use App\Support\ArticleSupport;
use App\Http\Controllers\Controller;

class CompanyProfileController extends Controller
{
    public function index()
    {
        if((int)request()->company_id > 0)
            request()->session()->put("company", request()->company_id);
        $company = CompanyModel::find(request()->session()->get("company"));
        $company->category = $company->category ? $company->category->name : "";
        $company->area = $company->area ? $company->area->name : "";
        $user = User::find($company->user_id);

        $has_product = 0;
        if($user){
            $products = ProductModel::where("user_id", "=", $user->id)->get();        
            if(count($products) > 0){
                $has_product = 1;
            }
        }       

        $likeCheck = LikeModel::where('user_id', $user->id)->where('content_id', $company->id)->get();
        if($likeCheck->first()){
            $like = (int)$likeCheck->first()->heart;
        }else{
            $like = 0;
        }
        
        return view("company.profile.index")
                ->with("company", $company)
                ->with("partner", $user)
                ->with('has_product', $has_product)
                ->with('products', $products)
                ->with('like', $like);
    }

    public function productservice()
    {
        $partnerid = request()->partner_id;
        $company = CompanyModel::find(request()->session()->get("company"));
        //$products = ProductModel::getLatestProducts(5, $partnerid);
        $discounts = DiscountModel::getLatestDiscounts(5, $company->id);
        $user = User::find($company->user_id);

        return view("company.profile.partials._index_productservice")
                // ->with('products', $products)
                ->with('discounts', $discounts);
    }

    public function articlepartial()
    {
        $partnerid = request()->partner_id;
        $count = request()->count;
        $company = CompanyModel::find(request()->session()->get("company"));
        $user = User::find($company->user_id);

        return view('company.profile.partials._company_article')
                ->with('articles', ArticleSupport::getArticlesFromPartner($partnerid, $count))
                ->with('partner', $user);
    }

    public function videopartial()
    {
        $partnerid = request()->partner_id;
        $count = request()->count;
        $company = CompanyModel::find(request()->session()->get("company"));
        $user = User::find($company->user_id);

        return view('company.profile.partials._company_video')
                ->with('videos', VideoSupport::getVideosFromPartner($partnerid, $count))
                ->with('partner', $user);
    }

    public function imagepartial()
    {
        $partnerid = request()->partner_id;
        $count = request()->count;
        $company = CompanyModel::find(request()->session()->get("company"));
        $user = User::find($company->user_id);

        return view('company.profile.partials._company_image')
                ->with('images', ImageSupport::getImagesFromPartner($partnerid, $count, true))
                ->with('partner', $user);
    }

    public function article()
    {
        $company = CompanyModel::find(request()->session()->get("company"));
        $user = User::find($company->user_id);

        return view("company.profile.article")
                ->with("company", CompanyModel::find(request()->session()->get("company")))
                ->with("partner", $user);
    }

    public function video()
    {
        $company = CompanyModel::find(request()->session()->get("company"));
        $user = User::find($company->user_id);

        return view("company.profile.video")
                ->with("company", CompanyModel::find(request()->session()->get("company")))
                ->with("partner", $user);
    }

    public function image()
    {
        $company = CompanyModel::find(request()->session()->get("company"));
        $user = User::find($company->user_id);

        return view("company.profile.image")
                ->with("company", CompanyModel::find(request()->session()->get("company")))
                ->with("partner", $user);
    }
}