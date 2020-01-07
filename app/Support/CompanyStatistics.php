<?php

namespace App\Support;
use App\CompanyStatisticsModel;

class CompanyStatistics
{

    public static function addVisitStatistics($partnerid, $isNewVisit)
    {
        /* TODO: add new visit or visitors to company statistics table */
        $date = date('Y-m-d');

        $statistics = CompanyStatisticsModel::where('partner_id', '=', $partnerid)
                                            ->where('date', '=', $date)
                                            ->get();
        if(count($statistics) == 0)
            $statistics = new CompanyStatisticsModel;
        else 
            $statistics = $statistics[0];
        
        $statistics->date = $date;
        $statistics->partner_id = $partnerid;
        if($isNewVisit == true)
            $statistics->new_visit++;
        $statistics->visit++;
        $statistics->timestamps = false;
        $statistics->save();

        return $statistics;
    }

    public static function addLike($partnerid, $likeType)
    {
        /* TODO: add like(star, clap, love) count to company statistics table */
        $date = date('Y-m-d');

        $statistics = CompanyStatisticsModel::where('partner_id', '=', $partnerid)
                                            ->where('date', '=', $date)
                                            ->get();
        if(count($statistics) == 0)
            $statistics = new CompanyStatisticsModel;
        else 
            $statistics = $statistics[0];

        $statistics->date = $date;
        $statistics->partner_id = $partnerid;
        if($likeType == "star")
            $statistics->star++;
        else if($likeType == "clap")
            $statistics->clap++;
        else if($likeType == "heart")
            $statistics->love++;
        $statistics->timestamps = false;
        $statistics->save();
    }

    public static function addMoney($partnerid, $amount)
    {
        /* TODO: add money to company statistics table */
        $date = date('Y-m-d');

        $statistics = CompanyStatisticsModel::where('partner_id', '=', $partnerid)
                                            ->where('date', '=', $date)
                                            ->get();
        if(count($statistics) == 0)
            $statistics = new CompanyStatisticsModel;
        else 
            $statistics = $statistics[0];

        $statistics->date = $date;
        $statistics->partner_id = $partnerid;
        $statistics->money += $amount;
        $statistics->timestamps = false;
        $statistics->save();
    }

    public static function getStatistics($partnerid, $startdate, $enddate)
    {
        $statistics = CompanyStatisticsModel::where('partner_id', '=', $partnerid)
                                            ->whereBetween('date', array($startdate, $enddate))
                                            ->get();
        return $statistics;
    }
}