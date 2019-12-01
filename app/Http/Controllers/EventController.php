<?php

namespace App\Http\Controllers;

use App\User;
use App\EventModel;
use Illuminate\View\View;
use App\NotificationModel;
use App\AnnounceModel;
use App\StatisticModel;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class EventController extends Controller
{
    //
    protected $appointmentCost = 100;

    /**
     * construct
     */
    public function __construct() 
    {
        $this->middleware('auth');
    }

    /**
     * index of appointment view
     * @return Illuminate\View\View
     */
    public function index()
    {
        $id = request()->session()->get('partnerid');
        $partner = User::find($id);
        
        if($partner != null && $partner->type == 'partner')
            return view('appoint', ["partner"=>$partner]);
        return redirect('/home');
    }

    /**
     * fetch all event for partner_id
     * @return Illuminate\Http\Response
     */
    public function fetchEvents() 
    {
        if(Auth::user()->isActivated() == false)
            return null;
        $partnerid = request()->partner_id;

        $start_date =  date("Y-m-d");
        $end_date = mktime(0, 0, 0, date('m'), date('d')+1, date('y'));
        //$events = EventModel::whereBetween('event_start', '=', array($start_date, $end_date))->get();
        $events = EventModel::where('partner_id', '=', $partnerid)
                            ->orderBy('event_start', 'desc')
                            ->get();
        return $events;
    }   

    /**
     * fetch all event for partner_id
     * @return Illuminate\Http\Response
     */
    public function fetchTodayEvents() 
    {
        if(Auth::user()->isActivated() == false)
            return null;
        $partnerid = request()->partner_id;

        $start_date =  date("Y-m-d");
        $end_date = date("y") . "-" . date('m') . "-" . (date('d') + 1);
        
        $events = EventModel::whereBetween('event_start', [$start_date, $end_date])
                                    ->orderBy('event_start', 'desc')
                                    ->get();
        return $events;
    }

    /**
     * add new event
     * 
     */
    public function addEvent()
    {
        if(Auth::user()->isActivated() == false)
            return "failed";


        if(Auth::user()->points < $this->appointmentCost)
        {
            return "failed";
        }
        $event = new EventModel;
        
        $event->title           = request()->title;
        $event->event_start     = request()->event_start;
        $event->event_end       = request()->event_end;
        $event->user_id         = Auth::user()->id;
        $event->partner_id      = request()->partner_id;
        $event->type            = request()->type;

        $event->save();
        /*
        Auth::user()->points -= $this->appointmentCost;
        Auth::user()->save();
        */
        return "success";
    }

    /**
     * remove event
     */
    public function removeEvent()
    {
        if(Auth::user()->isActivated() == false)
            return "failed";
        $eventid = request()->eventid;

        $event = EventModel::find($eventid);        
        $event->delete();

        return "success";
    }

    /**
     * accept event
     */
    public function acceptEvent()
    {   
        if(Auth::user()->isActivated() == false)
            return "failed";

        $eventid = request()->eventid;
        $event = EventModel::find($eventid);

        if($event->status == 1)
            return "failed";

        // save event data
        $event->event_start = request()->event_start;
        $event->event_end = request()->event_end;
        $event->status = 1;
        $event->save();
        
        // reduce user's points
        $user = User::find($event->user_id);
        $user->points -= $this->appointmentCost;
        $user->save();

        // add partners points
        Auth::user()->points += $this->appointmentCost;
        Auth::user()->save();

        // save statistic data
        $statistic = new StatisticModel;
        $statistic->partner_id = Auth::user()->id;
        $statistic->user_id = $event->user_id;        
        $statistic->type = 1;   // appointment
        $statistic->points = $this->appointmentCost;
        $statistic->time = now();
        $statistic->timestamps = false;
        $statistic->save();

        // add announcement
        $announce = new AnnounceModel;
        $announce->partner_id = Auth::user()->id;
        $announce->user_id = $event->user_id;
        $announce->date = now();
        $announce->title = "Accept Appointment(" . $event->event_start . '-'. $event->event_end . ')';
        $announce->content = request()->notification;
        $announce->timestamps = false;
        $announce->save();

        // add notification
        NotificationModel::addNotification(Auth::user()->id, 
                                            $event->user_id,
                                            $event->id,
											$announce->title,
											request()->notification,
											"appointment_accept",
											1);
        
        return "success";
    }

    /**
     * deny event
     */
    public function denyEvent()
    {
        if(Auth::user()->isActivated() == false)
            return "failed";

        $eventid = request()->eventid;
        $event = EventModel::find($eventid);

        // save event data
        $event->status = 2;
        $event->save();
        
        // add notification
        $announce = new AnnounceModel;
        $announce->partner_id = Auth::user()->id;
        $announce->user_id = $event->user_id;
        $announce->date = now();
        $announce->title = "Deny Appointment";
        $announce->content = request()->notification;
        $announce->timestamps = false;
        $announce->save();

        // add notification for deny
        NotificationModel::addNotification(Auth::user()->id, 
                                            $event->user_id,
                                            $event->id, 
											"Deny Appointment",
											request()->notification,
											"appointment_deny",
											1);
        
        return "success";
    }
}