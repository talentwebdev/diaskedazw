<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NotificationModel extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'notification';


    /**
     * relations one to many with user
     */
    public function user()
    {
        return $this->belongsTo("\App\User", "sender_id", "id");
    }

    /**
     * Add new Notification
     * 
     * @param sender_id: the id of user who make this notification
     * @param receiver_id: the id of user who receive this notification
     * @param content_id
     * @param title: title of notification
     * @param content
     * @param type: the type of notification('friend','upload_image','upload_video','upload_article','live_events','appointment_deny','appointment_accept','message','add_points', 'buy_product', 'seller_subscription')
     * @param public 1: not public , only show to receiver_id, 0: public, show to all members.
     */
    public static function addNotification($sender_id, $receiver_id, $content_id, $title, $content, $type, $public)
    {
        $notification = new \App\NotificationModel;

        $notification->sender_id    = $sender_id;
        $notification->receiver_id  = $receiver_id;
        $notification->content_id   = $content_id;
        $notification->title        = $title;
        $notification->content      = $content;        
        $notification->type         = $type;        
        $notification->public       = $public;

        $notification->save();
    }
}
