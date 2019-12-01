<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\NotificationModel;
use App\User;
use Illuminate\Support\Facades\Auth;

class NotificationController extends Controller
{
    //

    /**
     * api : fetchnotifications 
     */
    public function fetchNotifications()
    {
        // check if the user is authorised and if not, return empty array
        if(!auth()->check())
            return array();

        // fetch notifications which is public or has this receiver id 
        $notifications = NotificationModel::where(function($query){
                            $query->where("public", '=', 0)
                                ->orWhere("receiver_id", "=", Auth::user()->id);
                        })
                        ->with(array('user' => function($query){
                            $query->select("id", "img_url");
                        }))
                        ->orderBy("created_at", "desc")
                        ->take(10)
                        ->get();

        return $notifications;
    }

    public function fetchAddPointsNotifications() {
        
        if(!auth()->check())
        return array();

        // fetch notifications which is public or has this receiver id 
        $notifications = NotificationModel::where(function($query){
                            $sender = request()->sender;
                            $query->where("public", '=', 1)
                                ->Where("sender_id", "=", $sender);
                        })
                        ->orderBy("created_at", "desc")
                        ->get();
        return $notifications;
    }
}
