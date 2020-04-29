<?php

namespace App\Http\Controllers\OrtuAuth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{

    use AuthenticatesUsers;

    protected $redirectTo = RouteServiceProvider::ORTU_HOME;

    public function showLoginForm(Request $request)
    {
        return view('auth_ortu.login');
    }

    protected function guard()
    {
        return Auth::guard('ortu');
    }

    public function username()
    {
        return 'username';
    }

    public function __construct()
    {
        $this->middleware('guest:ortu')->except('logout');
    }
}
