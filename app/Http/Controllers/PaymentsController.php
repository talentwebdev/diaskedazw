<?php

namespace App\Http\Controllers;

use App\PackageModel;
use Braintree_Transaction;
use Illuminate\Http\Request;

use \App\User;
use Illuminate\Support\Facades\Auth;

class PaymentsController extends Controller
{
    //
    /**
     * constructor
     */
    public function __construct() 
    {
        //$this->middleware('auth');    
    }

    /**
     * payment process.
     * @return json object. if success, obj->success = true;
     */
    public function process()
    {
        $payload = request()->payload;

        $packageid = request()->packageid;
        $package = PackageModel::find($packageid);

        $nonce = $payload['nonce'];

        $status = Braintree_Transaction::sale([
                'amount' => $package->cost,
                'paymentMethodNonce' => $nonce,
                'options' => [
                    'submitForSettlement' => True
                ]
        ]);
        return response()->json($status);        
    }

    /**
     * payment process.
     * @return json object. if success, obj->success = true;
     */
    public function activateUser()
    {
        $payload = request()->payload;

        $type = request()->type;
        if($type != 1 && $type != 2)
            return response()->json(["success"=>"0"]);

        $cost = $type == 1 ? 55 : 95;
        $nonce = $payload['nonce'];

        $status = Braintree_Transaction::sale([
                'amount' => $cost,
                'paymentMethodNonce' => $nonce,
                'options' => [
                    'submitForSettlement' => True
                ]
        ]);

        if($status->success == true)
        {
            Auth::user()->active_date = now();
            Auth::user()->save();
        }
        return response()->json($status);        
    }

    /**
     * add the users's ellin points
     * 
     */
    public function done() 
    {
        $packageid = request()->packageid;
        $package = PackageModel::find( $packageid );

        if($package->type == 0)
        {
            Auth::user()->points += $package->ellin;
            Auth::user()->active_package = $package->id;
            Auth::user()->active_date = now();
            Auth::user()->save();
        }        
        else if($package->type == 1)
        {
            Auth::user()->points += $package->ellin;
            Auth::user()->save();
        }
        return "success";

    }
}
