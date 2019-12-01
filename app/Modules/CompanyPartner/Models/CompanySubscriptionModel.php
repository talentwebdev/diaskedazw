<?php

namespace App\Modules\CompanyPartner\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use App\User;

class CompanySubscriptionModel extends Model 
{
    protected $table = 'company_subscription';

    protected $fillable = [
        'user_id', 'type', 'start_time', 'end_time'
    ];

    /**
     * get user
     */
    public function user()
    {
        return $this->hasOne('App\User', 'user_id', 'id');
    }

    public static function getEndDate($type){
        if($type == "day"){
            return date("Y-m-d H:i:s", mktime(date("H"), date("i"), date("s"), date("n"), date("j") + 1, date("Y")));
        }
        else if($type == "month"){
            return date("Y-m-d H:i:s", mktime(date("H"), date("i"), date("s"), date("n") + 1, date("j") , date("Y")));
        }
        else if($type == "year")
        {
            return date("Y-m-d H:i:s", mktime(date("H"), date("i"), date("s"), date("n"), date("j") , date("Y") + 1));
        }
    }   

    public static function addSubscription($type){
        $subscription = new CompanySubscriptionModel;

        $subscription->type = $type;
        $subscription->user_id = Auth::user()->id;
        $subscription->start_time = now();
        $subscription->end_time = self::getEndDate($type);
        $subscription->timestamps = false;
        $subscription->save();
        
        return $subscription;
    }

    public static function editSubscription($id, $type){
        $subscription = self::find($id);

        $subscription->type = $type;
        $subscription->user_id = Auth::user()->id;
        $subscription->start_time = now();
        $subscription->end_time = self::getEndDate($type);
        $subscription->timestamps = false;
        $subscription->save();
        
        return $subscription;
    }

    public function isExpired(){
        return $this->end_time < now();
    }
}