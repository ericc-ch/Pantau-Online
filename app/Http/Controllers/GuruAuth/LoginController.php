<?php

namespace App\Http\Controllers\GuruAuth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{

    use AuthenticatesUsers;

    protected $redirectTo = RouteServiceProvider::GURU_HOME;

    public function showLoginForm(Request $request)
    {
        return view('auth_guru.login');
    }

    protected function guard()
    {
        return Auth::guard('guru');
    }

    public function username()
    {
        return 'username';
    }

    public function __construct()
    {
        $this->middleware('guest:guru')->except('logout');
    }

    public function authenticated(Request $request, $user)
    {
        $user = $this->guard()->user();
        Auth::setUser($user);
    }


    // public function __construct()
    // {
    //     $this->middleware('guest:guru')->except('logout');
    // }

    // public function showLoginForm()
    // {
    //     return view('auth_guru.login');
    // }

    // public function login(Request $request)
    // {
    //     $this->validate($request, [
    //         'username' => 'required',
    //         'password' => 'required',
    //     ]);

    //     $credentials = [
    //         'username' => $request->username,
    //         'password' => $request->password,
    //     ];
 
    //     if (Auth::guard('guru')->attempt($credentials, $request->member))
    //     {
    //         return redirect()->intended(route('guru.dashboard'));
    //     }

    //     return redirect()->back()->withInput($request->only('username', 'remember'));
    // }
}
