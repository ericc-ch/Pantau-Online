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

<<<<<<< HEAD
Route::group(['prefix' => 'admin'], function() {
    Route::get('/login', 'AdminAuth\LoginController@showLoginForm')->name('admin.login');
    Route::post('/login', 'AdminAuth\LoginController@login')->name('admin.login.submit');
    Route::get('/dashboard', function() {
        return "Admin udh login";
    })->name('admin.dashboard');
});

Route::group(['prefix' => 'guru'], function() {
    Route::get('/login', 'GuruAuth\LoginController@showLoginForm')->name('guru.login');
    Route::post('/login', 'GuruAuth\LoginController@login')->name('guru.login.submit');
    Route::get('/dashboard', function() {
        return "Guru udh login";
    })->name('admin.dashboard');
});

Route::group(['prefix' => 'ortu'], function() {
    Route::get('/login', 'OrtuAuth\LoginController@showLoginForm')->name('ortu.login');
    Route::post('/login', 'OrtuAuth\LoginController@login')->name('ortu.login.submit');
    Route::get('/register', 'OrtuAuth\RegisterController@showRegisterForm')->name('ortu.register');
    Route::post('/register', 'OrtuAuth\RegisterController@register')->name('ortu.register.submit');
    Route::get('/dashboard', function() {
        return "Ortu udh login";
    })->name('admin.dashboard');
});

Route::get('/', function () {
    return view('welcome');
=======
Route::get('/admin', function () {
    return view('admin.index');
>>>>>>> 5243e7be50d99ad50bd2de233e3e83bf122b6555
});

Route::get('/guru', function () {
    return view('guru.index');
});

Route::group(['prefix'=>'murid'], function (){
    Route::get('/', function () {
        return view('murid.index');
    });
    Route::get('/data-diri', function () {
        return view('murid.datadiri');
    });
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
