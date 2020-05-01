<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CekJenisUser
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, string $jenis = null)
    {
        switch ($jenis) {
            case 'guru':
                if (!isset(Auth::user()->guru))
                {
                    return redirect('login');
                }
                break;

            case 'ortu':
                if (!isset(Auth::user()->ortu))
                {
                    return redirect('login');
                }
                break;

            case 'admin':
                if (!isset(Auth::user()->admin))
                {
                    return redirect('login');
                }
                break;
            
            default:
                if (!isset(Auth::user()->siswa))
                {
                    return redirect('login');
                }
                break;
        }

        return $next($request);
    }
}
