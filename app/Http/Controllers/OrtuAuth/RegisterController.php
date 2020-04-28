<?php

namespace App\Http\Controllers\OrtuAuth;

use App\Http\Controllers\Controller;
use App\Ortu;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    public function showRegisterForm()
    {
        return view('auth_ortu.register');
    }

    public function register(Request $request)
    {
        $validator = $request->validate([
            'nik' => ['string', 'max:255'],
            'nama' => ['required', 'string', 'max:255', 'unique:ortus'],
            'nis' => ['required', 'integer', 'min:8'],
            'username' => ['required', 'string', 'username', 'max:255', 'unique:ortus'],
            'password' => ['required', 'string', 'password', 'min:8', 'confirmed'],
        ]);

        \App\Ortu::create($validator);

        return redirect('ortu.login');
    }

    // /*
    // |--------------------------------------------------------------------------
    // | Register Controller
    // |--------------------------------------------------------------------------
    // |
    // | This controller handles the registration of new users as well as their
    // | validation and creation. By default this controller uses a trait to
    // | provide this functionality without requiring any additional code.
    // |
    // */

    // use RegistersUsers;

    // /**
    //  * Where to redirect users after registration.
    //  *
    //  * @var string
    //  */
    // protected $redirectTo = RouteServiceProvider::ORTU_HOME;

    // /**
    //  * Create a new controller instance.
    //  *
    //  * @return void
    //  */
    // public function __construct()
    // {
    //     $this->middleware('guest:ortu');
    // }

    // public function showRegisterForm()
    // {
    //     return view('auth_ortu.register');
    // }

    // /**
    //  * Get a validator for an incoming registration request.
    //  *
    //  * @param  array  $data
    //  * @return \Illuminate\Contracts\Validation\Validator
    //  */
    // protected function validator(array $data)
    // {
    //     return Validator::make($data, [
    //         'nik' => ['string', 'max:255'],
    //         'nama' => ['required', 'string', 'nama', 'max:255', 'unique:ortus'],
    //         'nis' => ['required', 'integer', 'min:8'],
    //         'username' => ['required', 'string', 'username', 'max:255', 'unique:ortus'],
    //         'password' => ['required', 'string', 'password', 'min:8', 'confirmed'],
    //     ]);
    // }

    // /**
    //  * Create a new user instance after a valid registration.
    //  *
    //  * @param  array  $data
    //  * @return \App\Ortu
    //  */
    // protected function create(array $data)
    // {
    //     return Ortu::create([
    //         'nik' => $data['nik'],
    //         'nama' => $data['nama'],
    //         'nis' => $data['nis'],
    //         'username' => $data['username'],
    //         'password' => Hash::make($data['password']),
    //     ]);
    // }
}
