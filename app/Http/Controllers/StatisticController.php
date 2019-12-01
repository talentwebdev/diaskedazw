<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\User;
use \App\StatisticModel;
use Illuminate\Support\Facades\Auth;

class StatisticController extends Controller
{
    //
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function fetchReports()
    {
        $statistics = StatisticModel::where('partner_id', '=', Auth::user()->id)
                                        ->with('user')
                                        ->orderBy('time', 'desc')
                                        ->take(10)
                                        ->get();

        return $statistics;
    }
}
