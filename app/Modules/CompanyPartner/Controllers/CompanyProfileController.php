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
use App\AreaModel;
use App\CategoryModel;
use App\Modules\CompanyPartner\Models\CompanyAdsModel;
use Illuminate\Support\Facades\Auth;


class CompanyProfileController extends Controller
{
    public function index()
    {
        if((int)request()->company_id > 0)
            request()->session()->put("company", request()->company_id);
        $company = CompanyModel::find(request()->session()->get("company"));
        $name = $company->name;
        //$company->category = $company->category ? $company->category->name : "";
        //$company->area = $company->area ? $company->area->name : "";
        $company->categories = CategoryModel::getCategoriesFromIDString($company->category_id);
        $company->areas = AreaModel::getAreasFromIDString($company->area_id);
        $company->likecount = LikeModel::getLikeCount($company->id, "company");
        $user = User::find($company->user_id);

        $products = ProductModel::getProductsFromUser($user);   

        return view("company.profile.index")
                ->with("company", $company)
                ->with("partner", $user)
                ->with('has_product', count($products) > 0 ? 1 : 0)
                ->with('products', $products)
                ->with('like', LikeModel::isLike(Auth::user(), $company, "company"))
                ->with('companyads', CompanyAdsModel::getCompanyAdsFromUser($user));
    }

    public function indexcompanyname($companyname)
    {
        $companyname = str_replace("_", " ", $companyname);
        $companies = CompanyModel::where('name', '=', $companyname)->get();
        if(count($companies) == 0)
            return redirect()->route('home');
        
        $company = $companies[0];
        request()->session()->put("company", $company->id);
        $name = $company->name;
        $company->categories = CategoryModel::getCategoriesFromIDString($company->category_id);
        $company->areas = AreaModel::getAreasFromIDString($company->area_id);
        $company->likecount = LikeModel::getLikeCount($company->id, "company");
        $user = User::find($company->user_id);

        $products = ProductModel::getProductsFromUser($user);   

        return view("company.profile.index")
                ->with("company", $company)
                ->with("partner", $user)
                ->with('has_product', count($products) > 0 ? 1 : 0)
                ->with('products', $products)
                ->with('like', LikeModel::isLike(Auth::user(), $company, "company"))
                ->with('companyads', CompanyAdsModel::getCompanyAdsFromUser($user));
    }

    public function productservice()
    {
        $partnerid = request()->partner_id;
        $company = CompanyModel::find(request()->session()->get("company"));
        //$products = ProductModel::getLatestProducts(5, $partnerid);
        $discounts = DiscountModel::getLatestDiscounts(5, $company->id);

        return view("company.profile.partials._index_discountservice")
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
        $company->likecount = LikeModel::getLikeCount($company->id, "company");
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
        $products = ProductModel::getProductsFromUser($user);
        $company->likecount = LikeModel::getLikeCount($company->id, "company");

        return view("company.profile.article")
                ->with("company", $company)
                ->with("partner", $user)
                ->with('has_product', count($products) > 0 ? 1 : 0)
                ->with('products', $products)
                ->with('like', LikeModel::isLike(Auth::user(), $company, "company"))                
                ->with('companyads', CompanyAdsModel::getCompanyAdsFromUser($user));
    }

    public function video()
    {
        $company = CompanyModel::find(request()->session()->get("company"));
        $user = User::find($company->user_id);
        $products = ProductModel::getProductsFromUser($user);
        $company->likecount = LikeModel::getLikeCount($company->id, "company");

        return view("company.profile.video")
                ->with("company", $company)
                ->with("partner", $user)                
                ->with('has_product', count($products) > 0 ? 1 : 0)
                ->with('products', $products)
                ->with('like', LikeModel::isLike(Auth::user(), $company, "company"))                
                ->with('companyads', CompanyAdsModel::getCompanyAdsFromUser($user));
    }

    public function image()
    {
        $company = CompanyModel::find(request()->session()->get("company"));
        $user = User::find($company->user_id);
        $products = ProductModel::getProductsFromUser($user);
        $company->likecount = LikeModel::getLikeCount($company->id, "company");

        return view("company.profile.image")
                ->with("company", $company)
                ->with("partner", $user)
                ->with('has_product', count($products) > 0 ? 1 : 0)
                ->with('products', $products)
                ->with('like', LikeModel::isLike(Auth::user(), $company, "company"))                
                ->with('companyads', CompanyAdsModel::getCompanyAdsFromUser($user));
    }
}