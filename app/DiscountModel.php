<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use App\LikeModel;

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

    public function getDetailedDiscountInfo()
    {
        $this->likecount = count(LikeModel::where('content_type', '=', 'discount')
                    ->where('content_id', '=', $this->id)
                    ->where('heart', '=', '1')->get());
        
        if(Auth::user())
        {
            $this->like = LikeModel::isLike(Auth::user(), $this, "discount");
        }
        else
            $this->like = 0;
        return $this;
    }

    public static function getLatestDiscounts($count = -1, $company = -1)
    {
        $discounts = array();
        if($count == -1)
        {
            if($company == -1)
            {                
                $discounts = self::orderBy("created_at", "desc")
                ->get();    
            }
                
            else 
                $discounts = self::orderBy("created_at", "desc")
                ->where("company_id", $company)
                ->get();
        }
        else
        {
            if($company == -1)
                $discounts = self::orderBy("created_at", "desc")
                    ->take($count)
                    ->get();
            else
                $discounts = self::orderBy("created_at", "desc")
                ->where("company_id", $company)
                ->get();
            
        }

        for($i = 0 ; $i < count($discounts) ; $i++)
            $discounts[$i] = $discounts[$i]->getDetailedDiscountInfo();
        return $discounts;
    }
}
