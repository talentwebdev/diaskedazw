<?php

namespace App\Http\Controllers;

use App\PackageModel;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PackageController extends Controller
{
    //
    /**
     * construct
     */
    public function __construct() 
    {

    }

    /**
     * fetch all packages from database
     * 
     * @return Illuminate\Http\Response
     */    
    public function fetchPackages() 
    {
        $packages = PackageModel::all();

        return $packages;
    }

}
