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
    Route::get('/dashboard', 'AdminSiswaController@dashboard')->name('admin.dashboard');
    Route::get('/siswa', 'AdminSiswaController@index')->name('admin.siswa.index');
    Route::get('/guru', 'AdminGuruController@index')->name('admin.guru.index');
    Route::get('/ortu', 'AdminOrtuController@index')->name('admin.ortu.index');

    //crud mapel
    Route::get('/mapel', 'MapelController@index')->name('admin.mapel.index');
    Route::post('/mapel', 'MapelController@store')->name('admin.mapel.store');
    Route::get('/mapel/{id_jadwal}', 'MapelController@edit')->name('admin.mapel.edit');
    Route::patch('/mapel/{id_jadwal}', 'MapelController@update')->name('admin.mapel.update');
    Route::delete('/mapel/{id_jadwal}', 'MapelController@destroy')->name('admin.mapel.destroy');

    //crud aktifitas
    Route::get('/aktifitas', 'AktifitasController@index')->name('admin.aktifitas.index');
    Route::post('/aktifitas', 'AktifitasController@store')->name('admin.aktifitas.store');
    Route::get('/aktifitas/{id_aktifitas}', 'AktifitasController@edit')->name('admin.aktifitas.edit');
    Route::patch('/aktifitas/{id_aktifitas}', 'AktifitasController@update')->name('admin.aktifitas.update');
    Route::delete('/aktifitas/{id_aktifitas}', 'AktifitasController@destroy')->name('admin.aktifitas.destroy');
});

Route::group(['prefix' => 'guru'], function() {
    Route::get('/register', 'GuruAuth\RegisterController@showRegistrationForm')->name('guru.register');
    Route::post('/register', 'GuruAuth\RegisterController@register')->name('guru.register.submit');
    Route::get('/dashboard', function() {
        return view('guru.index');
    })->name('guru.dashboard')->middleware('cekuser:guru');
});

Route::group(['prefix' => 'ortu'], function() {
    Route::get('/register', 'OrtuAuth\RegisterController@showRegistrationForm')->name('ortu.register');
    Route::post('/register', 'OrtuAuth\RegisterController@register')->name('ortu.register.submit');
    Route::get('/dashboard', function() {
        return view('ortu.index');
    })->name('ortu.dashboard')->middleware('cekuser:ortu');
});

Route::group(['prefix'=>'murid'], function (){
    Route::get('/','MuridController@index')->name('murid.index');
    Route::get('/jadwal', 'JadwalController@index')->name('jadwal.index');
    Route::post('/jadwal', 'JadwalController@store')->name('jadwal.store');
    Route::get('/pembuktian','PembuktianController@index')->name('pembuktian.index');
    Route::post('/pembuktian','PembuktianController@store')->name('pembuktian.store');
    
});

Auth::routes();

Route::get('/', function() { return redirect('login'); });