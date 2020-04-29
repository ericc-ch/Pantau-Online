<?php

namespace App\Http\Controllers\AdminAuth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    protected $redirectTo = RouteServiceProvider::ORTU_HOME;

    public function showLoginForm(Request $request)
    {
        return view('auth_admin.login');
    }

    protected function guard()
    {
        return Auth::guard('admin');
    }

    public function username()
    {
        return 'username';
    }

    public function __construct()
    {
        $this->middleware('guest:admin')->except('logout');
    }

    public function authenticated(Request $request, $user)
    {
        $user = $this->guard()->user();
        Auth::setUser($user);
    }
}
