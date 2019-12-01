<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use App\CompanyModel;
use Illuminate\Support\Facades\Auth;

class CheckAdmin
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
        if(Auth::user() != null && Auth::user()->type == "admin")
            return $next($request);
        return redirect()->route('/');
    }
}
