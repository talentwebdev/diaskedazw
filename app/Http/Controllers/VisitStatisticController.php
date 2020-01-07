<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Support\Facades\Auth;
use App\VisitStatisticModel;
use Illuminate\Http\Request;
use App\Support\CompanyStatistics;

class VisitStatisticController extends Controller
{
    //
    public function addNewVisit()
    {
        $ip_address = request()->ip_address;
        $partner_id = request()->partner_id;
        $visit_source = request()->visit_source;
        $date = date("Y-m-d");
        $isNewVisit = false;

       
         //  if new visit add, if exist modify
        $res = VisitStatisticModel::where(array("ip_address"=>$ip_address, "date" => $date))->get();       
        
        $visit = "";
        if(count($res) == 0 )
        {
            $visit = new VisitStatisticModel;          
            $isNewVisit = true;  
        }
        else
        {
            $visit = $res[0];
            $isNewVisit = false;
        }

        if($visit->date != $date)
        {
            User::addEllinPoints($partner_id, "visit", $visit_source);         
        }
        $visit->ip_address = $ip_address;
        $visit->partner_id = $partner_id;
        $visit->date = $date;
        $visit->timestamps = false;

        $visit->save();

        // save company statistics
        if($visit_source == "company")
            CompanyStatistics::addVisitStatistics($partner_id, $isNewVisit);
        return "success";
    }

    public function getVisitInfo()
    {
        $partner_id = Auth::user()->id;

        $res = VisitStatisticModel::where("partner_id", $partner_id)
                                    ->orderBy('date', "asc")
                                    ->get();
        
        return $res;
    }
}
