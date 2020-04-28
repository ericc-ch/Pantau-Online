<?php

namespace App\Http\Controllers\GuruAuth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest:guru')->except('logout');
    }

    public function showLoginForm()
    {
        return view('auth_guru.login');
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'username' => 'required',
            'password' => 'required',
        ]);

        $credentials = [
            'username' => $request->username,
            'password' => $request->password,
        ];
 
        if (Auth::guard('guru')->attempt($credentials, $request->member))
        {
            return redirect()->intended(route('guru.dashboard'));
        }

        return redirect()->back()->withInput($request->only('username', 'remember'));
    }
}
