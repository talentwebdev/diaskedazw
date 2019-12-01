<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DiscountModel extends Model
{
    //
    protected $table = "discount";

    /* static */
    public static function getSearchList($search)
    {
        return self::where("title", 'like', '%'.$search.'%')
            ->orWhere('description', 'like', '%'.$search.'%')
            ->get();
    }
    
    public static function getAllList()
    {
        return self::all();
    } 

    public static function getLatestDiscounts($count = -1, $company = -1)
    {
        if($count == -1)
        {
            if($company == -1)
                return self::orderBy("created_at", "desc")
                ->get();
            else 
                return self::orderBy("created_at", "desc")
                ->where("company_id", $company)
                ->get();
        }
        else
        {
            if($company == -1)
                return self::orderBy("created_at", "desc")
                    ->take($count)
                    ->get();
            else
                return self::orderBy("created_at", "desc")
                ->where("company_id", $company)
                ->get();
            
        }
    }
}
