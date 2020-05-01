<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check()) {
            if (isset(Auth::user()->guru))
            {
                return redirect(RouteServiceProvider::GURU_HOME);
            }

            if (isset(Auth::user()->ortu))
            {
                return redirect(RouteServiceProvider::ORTU_HOME);
            }
        
            if (isset(Auth::user()->admin))
            {
                return redirect(RouteServiceProvider::ADMIN_HOME);
            }
        
            if (isset(Auth::user()->siswa))
            {
                return redirect(RouteServiceProvider::HOME);
            }   
            
        }

        return $next($request);
    }
}
