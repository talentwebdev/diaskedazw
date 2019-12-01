<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DiscountModel;

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
}
