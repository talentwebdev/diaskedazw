<?php

namespace App\Modules\CompanyPartner\Controllers;

use Illuminate\Http\Request;
use App\Support\CompanyStatistics;
use App\Http\Controllers\Controller;

class CompanyStatisticsController extends Controller
{
    //

    public function get()
    {
        $partner_id = request()->partner_id;
        $start_date = request()->start_date;
        $end_date = request()->end_date;

        return CompanyStatistics::getStatistics($partner_id, $start_date, $end_date);
    }
}
