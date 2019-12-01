<?php // Code within app\Helpers\Helper.php

namespace App\Helpers;

use App\User;
use Illuminate\Support\Facades\Auth;
use App\PackageModel;

class Helper
{
    public static function getRestDay()
    {
        $package = PackageModel::find(Auth::user()->active_package);
        if(Auth::user()->active_package == 0)   return 0;
        $endDate = strtotime(date("Y-m-d", strtotime(Auth::user()->active_date)) . " +" . $package->n_month . " month"); 
        $nowDate = time();

        if($nowDate > $endDate) return 0;

        $datediff = $endDate - $nowDate;

        return round($datediff / (60 * 60 * 24));
    }
}