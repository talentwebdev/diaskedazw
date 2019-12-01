<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use \App\Mail\MoreInfoEmail;
use \App\Mail\SendContactEmail;
use \App\Mail\SendCompanyEmail;
use \App\Mail\SendPaymentDocEmail;
use App\Mail\SendShipCardEmail;

use Illuminate\Support\Facades\Auth;
use App\User;
use App\PackageModel;

class SendEmailController extends Controller
{
    //
    public function sendEmail()
    {        
        $messages = array();
        $messages['name'] = request()->name;
        $messages['surname'] = request()->surname;
        $messages['email'] = request()->email;
        $messages['reference'] = request()->reference;

        Mail::to("info@diaskedazw.com")->send(new MoreInfoEmail($messages));
        return $messages;
    }

    public function sendContactEmail()
    {
        $messages = array();
        $messages['firstname'] = request()->firstname;
        $messages['lastname'] = request()->lastname;
        $messages['address'] = request()->address;
        $messages['city'] = request()->city;
        $messages['country'] = request()->country;
        $messages['telephone'] = request()->telephone;
        $messages['mobile'] = request()->mobile;
        $messages['email'] = request()->email;
        $messages['message'] = request()->message;
        $messages['po'] = request()->po;
        Mail::to("info@diaskedazwdiacounts.com")->send(new SendContactEmail($messages));
        Mail::to("info.diaskedazw@gmail.com")->send(new SendContactEmail($messages));
        Mail::to("kingstarboy@outlook.com")->send(new SendContactEmail($messages));

        //info@diaskedazwdiacounts.com 
        //info.diaskedazw@gmail.com
        return back();
    }

    public function sendNewShipCardEmail()
    {
        $package = PackageModel::find(request()->package_id);

        $messages = array();
        $messages["packagename"] = $package->name;
        $messages["packagedescription"] = $package->description;
        $messages["packagepaymentdescription"] = $package->payment_description;
        $messages["packagecost"] = $package->cost;

        $messages["useremail"] = Auth::user()->email;
        $messages["username"] = Auth::user()->name;

        $messages['firstname'] = request()->firstname;
        $messages['lastname'] = request()->lastname;
        $messages['address'] = request()->address;
        $messages['city'] = request()->city;
        $messages['country'] = request()->country;
        $messages['telephone'] = request()->telephone;
        $messages['mobile'] = request()->mobile;
        $messages['email'] = request()->email;
        $messages['message'] = request()->message;
        $messages['po'] = request()->po;
        Mail::to("info@diaskedazw.com")->send(new SendShipCardEmail($messages));
    }

    public function sendExistingInfoEmail()
    {
        $package = PackageModel::find(request()->package_id);

        $messages = array();
        $messages["packagename"] = $package->name;
        $messages["packagedescription"] = $package->description;
        $messages["packagepaymentdescription"] = $package->payment_description;
        $messages["packagecost"] = $package->cost;

        $messages["useremail"] = Auth::user()->email;
        $messages["username"] = Auth::user()->name;

        $messages['firstname'] = Auth::user()->first_name;
        $messages['lastname'] = Auth::user()->last_name;
        $messages['address'] = Auth::user()->address;
        $messages['city'] = Auth::user()->city;
        $messages['country'] = Auth::user()->country;
        $messages['telephone'] = Auth::user()->telephone;
        $messages['mobile'] = Auth::user()->mobile;
        $messages['email'] = Auth::user()->email;
        $messages['po'] = Auth::user()->po;
        $messages['message'] = "";
        Mail::to("info@diaskedazw.com")->send(new SendShipCardEmail($messages));
    }

    public function sendCompanyEmail()
    {
        $messages = array();
        $messages['company'] = request()->company;
        $messages['type'] = request()->type;
        $messages['email'] = request()->email;
        Mail::to('info@diaskedazw.com')->send(new SendCompanyEmail($messages));
    }

    public function sendPaymentDocEmail()
    {
        $package = PackageModel::find(request()->package_id);

        $messages = array();
        $messages["packagename"] = $package->name;
        $messages["packagedescription"] = $package->description;
        $messages["packagepaymentdescription"] = $package->payment_description;
        $messages["packagecost"] = $package->cost;

        $messages["useremail"] = Auth::user()->email;
        $messages["username"] = Auth::user()->name;

        Mail::to('info@diaskedazw.com')->send(new SendPaymentDocEmail(request()->filePath, $messages));
    }
}
