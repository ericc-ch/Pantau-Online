<?php

namespace App\Http\Controllers\GuruAuth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    public function showRegisterForm()
    {
        return view('auth_guru.register');
    }

    public function register(Request $request)
    {
        $validator = $request->validate([
            'nip' => ['string', 'max:255'],
            'nama' => ['required', 'string', 'max:255'],
            'id_mapel' => ['required', 'integer'],
            'username' => ['required', 'string', 'max:255', 'unique:guru'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        $validator['password'] = Hash::make($validator['password']);

        \App\Guru::create($validator);

        return redirect()->route('guru.login');
    }
}
