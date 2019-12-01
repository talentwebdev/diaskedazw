<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use App\CompanyModel;
use Illuminate\Support\Facades\Auth;

class CheckCompanyExists
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::user() == null) return redirect()->route("");

        $company = CompanyModel::where('user_id', '=', Auth::user()->id)->get();
        if(count($company) == 1)
            return $next($request);
        return redirect()->route('company.partner.create');
    }
}
