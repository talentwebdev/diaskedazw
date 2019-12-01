<?php

namespace App\Http\Controllers;

use App\User;
use App\MessageModel;
use App\StatisticModel;
use Illuminate\Http\Request;
use App\Events\MessageSendEvent;
use App\Events\LookedMessageEvent;
use Illuminate\Support\Facades\Auth;
use App\NotificationModel;

class ChatsController extends Controller
{
    //
    public $chatpoint = 100;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * check if the user is activated in chat
     */
    public function checkMessageRight($channel)
    {
        if(Auth::user()->type == "partner") 
            return 1;
        
        $messages = MessageModel::where(array("channel" => $channel, "sender_id" => Auth::user()->id))
                                ->orderBy("created_at", "desc")
                                ->get();

        if(count($messages) == 0)   return 0;

        $lasttime = strtotime($messages[0]->created_at);
        $now = time();

        $days = ($now - $lasttime) / 3600 / 24;
        
        //echo ($now - $lasttime);
        if($days > 1)
            return 0;
        return 1;
    }

    /**
     * send private message
     */
    public function sendMessage()
    {
        $channel = request()->channel;
        $message = request()->message;
        $payment = request()->payment;

        if(intval($payment) == 0 && $this->checkMessageRight($channel) == 0) return "failed";      
        

        $messageModel = new MessageModel;
        $messageModel->sender_id        = Auth::user()->id;
        $messageModel->channel          = $channel;
        $messageModel->message          = $message;
        $messageModel->save();

        // get receiver id from channel, channel.10.12, sender_id:12, receiver_id: 10
        $picies = explode(".", $channel);
        $receiver_id = "";
        if(Auth::user()->id . "" == $picies[1])
            $receiver_id = $picies[2];
        else
            $receiver_id = $picies[1];

        // make new message notification
        NotificationModel::addNotification( Auth::user()->id,
                                            $receiver_id,
                                            $messageModel->id, 
                                            "New Message",
                                            $message, 
                                            "message",
                                            1);

        broadcast( new MessageSendEvent($messageModel) );
        return $messageModel->id;        
    }
    
    /**
     * set message looked
     */
    public function messageLooked()
    {
        $id = request()->id;

        $message = MessageModel::find($id);
        $message->looked = true;
        $message->save();

        broadcast( new LookedMessageEvent($id, $message->channel))->toOthers();
        return $message->channel;
    }

    /**
     * fetch messages
     */
    public function fetchMessages()
    {
        $channel = request()->channel;

        $messages = MessageModel::where('channel', '=', $channel)
                                ->orderBy('created_at', "desc")
                                ->take(20)
                                ->get();
        
        return $messages;
    }

    /**
     * fetch connected users
     */
    public function fetchConnectedUsers()
    {
        $users = User::all();

        $result = array();

        foreach($users as $user)
        {
            $channel = "chat." . Auth::user()->id . "." . $user->id;
            $messages = MessageModel::where(array('channel'=>$channel, 'sender_id'=>$user->id))
                                    ->orderBy('created_at', "desc")
                                    ->get();
            if(count($messages) > 0)
            {
                $user->messagesCount = count($messages);
                array_push($result, $user);
            }
        }
        return $result;
    }

    /**
     * pay chat
     */
    public function payChat()
    {

        $channel = request()->channel;

        if($this->checkMessageRight($channel) == 1) return Auth::user()->points;

        $partner_id = request()->partner_id;

        if(Auth::user()->points > $this->chatpoint)
        {
            Auth::user()->points -= $this->chatpoint;
            Auth::user()->last_message_datetime = now();
            Auth::user()->save();

            // save statistic data
            $statistic = new StatisticModel;
            $statistic->partner_id = $partner_id;
            $statistic->user_id = Auth::user()->id;        
            $statistic->type = 0;   // Chat
            $statistic->points = $this->chatpoint;
            $statistic->time = now();
            $statistic->timestamps = false;
            $statistic->save();
            
            return Auth::user();
        }

        return "failed";
    }
}
