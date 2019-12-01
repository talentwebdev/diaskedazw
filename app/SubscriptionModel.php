<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
use Illuminate\Support\Facades\Auth;

class SubscriptionModel extends Model
{
    //
    protected $table = "subscription";

    
    /**
     * get user
     */
    public function user()
    {
        $this->hasOne('\App\User', "user_id", "id");
    }


    public static function getEndDate($type){
        if($type == 1){
            return date("Y-m-d H:i:s", mktime(date("H"), date("i"), date("s"), date("n"), date("j") + 1, date("Y")));
        }
        else if($type == 2){
            return date("Y-m-d H:i:s", mktime(date("H"), date("i"), date("s"), date("n") + 1, date("j") , date("Y")));
        }
        else if($type == 3)
        {
            return date("Y-m-d H:i:s", mktime(date("H"), date("i"), date("s"), date("n"), date("j") , date("Y") + 1));
        }
    }   

    public static function addSubscription($type){
        $subscription = new \App\SubscriptionModel;

        $subscription->type = $type;
        $subscription->user_id = Auth::user()->id;
        $subscription->start_time = now();
        $subscription->end_time = \App\SubscriptionModel::getEndDate($type);
        $subscription->timestamps = false;
        $subscription->save();
        
        return $subscription;
    }

    public static function editSubscription($id, $type){
        $subscription = \App\SubscriptionModel::find($id);

        $subscription->type = $type;
        $subscription->user_id = Auth::user()->id;
        $subscription->start_time = now();
        $subscription->end_time = \App\SubscriptionModel::getEndDate($type);
        $subscription->timestamps = false;
        $subscription->save();
        
        return $subscription;
    }

    public function isExpired(){
        return $this->end_time < now();
    }
}
