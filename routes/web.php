<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function() {
    Route::get('/login', 'AdminAuth\LoginController@showLoginForm')->name('admin.login');
    Route::post('/login', 'AdminAuth\LoginController@login')->name('admin.login.submit');
    Route::get('/dashboard', function() {
        return view('admin.index');
    })->name('admin.dashboard');
});

Route::group(['prefix' => 'guru'], function() {
    Route::get('/login', 'GuruAuth\LoginController@showLoginForm')->name('guru.login');
    Route::post('/login', 'GuruAuth\LoginController@login')->name('guru.login.submit');
    // Route::get('/register', 'GuruAuth\RegisterController@showRegisterForm')->name('guru.register');
    // Route::post('/register', 'GuruAuth\RegisterController@register')->name('guru.register.submit');
    Route::get('/dashboard', function() {
        return view('guru.index');
    })->name('guru.dashboard');
});

Route::group(['prefix' => 'ortu'], function() {
    Route::get('/login', 'OrtuAuth\LoginController@showLoginForm')->name('ortu.login');
    Route::post('/login', 'OrtuAuth\LoginController@login')->name('ortu.login.submit');
    Route::get('/register', 'OrtuAuth\RegisterController@showRegisterForm')->name('ortu.register');
    Route::post('/register', 'OrtuAuth\RegisterController@register')->name('ortu.register.submit');
    Route::get('/dashboard', function() {
        return view('ortu.index');
    })->name('ortu.dashboard');
});


Route::group(['prefix'=>'murid'], function (){
    Route::get('/', function () {
        return view('murid.index');
    })->name('murid.dashboard');
    Route::get('/data-diri', function () {
        return view('murid.datadiri');
    });
    Route::get('/jadwal', 'JadwalController@index')->name('jadwal.index');
    Route::post('/jadwal', 'JadwalController@store')->name('jadwal.store');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

