<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\DiscountModel;
use App\LikeModel;

class DiscountController extends Controller
{
    //

    public function edit()
    {
        $id = request()->discount_id;

        return view("eshop.editdiscount")   
                ->with('discount', DiscountModel::find($id));
    }

    public function add()
    {
        return view('eshop.adddiscount');
    }

    public function store()
    {
        $id = request()->id;

        if($id != '')
        {
            $discount = DiscountModel::find($id);
        }
        else
        {
            $discount = new DiscountModel;
        }

        $discount->title = request()->title;
        $discount->description = request()->description;
        $discount->save();

        return redirect("/userproducts");
    }
    
    public function list()
    {
        $type =  request()->type;

        if($type == "search")
        {
            return view("eshop.partials._list_discount")
                    ->with('discounts', DiscountModel::getSearchList(request()->search));
        }
        else if($type == "all")
        {
            return view("eshop.partials._list_discount")
                    ->with("discounts", DiscountModel::getAllList());
        }

        return "failed";
    }

    public function delete()
    {
        $id = request()->discount_id;

        $discount = DiscountModel::find($id);
        if($discount != null)
            $discount->delete();

        return "success";
    }

    public function fetchFavoriteDiscounts()
    {
        $likes = LikeModel::where("content_type", "=", "discount")
                            ->where('user_id', '=', Auth::user()->id)
                            ->where('heart', '=', 1)
                            ->get();

        $discounts = array();
        foreach($likes as $like)
        {
            $discount = DiscountModel::find($like->content_id);
            if($discount)
            {
                array_push($discounts, $discount);
            }
        }
        return $discounts;
    }

    public function likeDiscount()
    {
        $discount_id = request()->discount_id;
        $partner_id = request()->partner_id;
        $like = request()->like;

        if(!Auth::user())
        {
            return json_encode(array("response" => 0));
        }


        $discount = DiscountModel::where('id', '=', $discount_id)
                            ->get();
        if($discount->first()){           

            $check = LikeModel::where('user_id', Auth::user()->id)
                    ->where('content_type', '=', 'discount')
                    ->where('content_id', $discount_id)->get();
            if(count($check) > 0) $likemodel = $check[0];
            else $likemodel = new LikeModel;

            $likemodel->content_type = "discount";
            $likemodel->content_id = $discount_id;
            $likemodel->heart = $like;
            $likemodel->user_id = Auth::user()->id;
            $likemodel->timestamps = false;
            $likemodel->save();

            return json_encode(array("response" => 200, 'like' => (int)$like, 'likecount' => (int)LikeModel::getLikeCount($discount_id, "discount") ));                         
                   
        }
        return json_encode(array("response" => 0 ));
    }
}
