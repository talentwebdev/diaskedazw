<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use App\CompanyModel;
use Illuminate\Support\Facades\Auth;

class CheckCompanySelect
{
    public function __construct()
    {
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(!$request->session()->has('company') && !($request->exists('company_id') && CompanyModel::isValidId($request->company_id)))
            return redirect()->route('');
        return $next($request);
    }
}
