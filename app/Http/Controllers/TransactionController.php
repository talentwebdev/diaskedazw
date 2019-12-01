<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TransactionModel;
use Illuminate\Support\Facades\Auth;
use App\User;

class TransactionController extends Controller
{
    //

    public function fetchTransaction()
    {
        $startTime = request()->startDate;
        $endTime = request()->endDate;

        $transactions = TransactionModel::where("seller_id", "=", Auth::user()->id)
                                        ->whereBetween("created_at", array($startTime, $endTime))
                                        ->get();
        $results = array();

        foreach($transactions as $transaction)
        {
            $data = array();

            $data["buyer"] = $transaction->user()->get()->first()->name;
            $data["product_name"] = $transaction->product()->get()->first()->product_name;
            $data["product_price"] = $transaction->product()->get()->first()->product_price;
            $data["date"] = $transaction->created_at->__toString();

            array_push($results, $data);
        }

        return $results;
    }
}
