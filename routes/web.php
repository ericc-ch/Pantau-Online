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
});

Route::group(['prefix' => 'guru'], function() {
    Route::get('/register', 'GuruAuth\RegisterController@showRegistrationForm')->name('guru.register');
    Route::post('/register', 'GuruAuth\RegisterController@register')->name('guru.register.submit');
    Route::get('/dashboard', function() {
        return view('guru.index');
    })->name('guru.dashboard');

    Route::get('/siswa/rombel', 'GuruController@siswa_pj')->name('guru.siswa.pj');
    Route::get('/siswa/rayon', 'GuruController@siswa_ps')->name('guru.siswa.ps');
    Route::get('/laporan/rombel', 'GuruController@laporan_siswa')->name('guru.laporansiswa');
    Route::get('/laporan/rombel/{nis}', 'GuruController@laporan_siswa_detail')->name('guru.laporansiswa.detail');
    Route::get('/laporan/rayon', 'GuruController@laporan_siswa_rayon')->name('guru.laporansiswa.rayon');
    Route::get('/laporan/rayon/{nis}', 'GuruController@laporan_siswa_rayon_detail')->name('guru.laporansiswa.rayon.detail');
});

Route::group(['prefix' => 'ortu'], function() {
    Route::get('/register', 'OrtuAuth\RegisterController@showRegistrationForm')->name('ortu.register');
    Route::post('/register', 'OrtuAuth\RegisterController@register')->name('ortu.register.submit');
    Route::get('/dashboard', function() {
        return view('ortu.index');
    })->name('ortu.dashboard');
});

Route::group(['prefix'=>'murid'], function (){
    Route::get('/','MuridController@index')->name('murid.index');
    Route::get('/jadwal', 'JadwalController@index')->name('jadwal.index');
    Route::post('/jadwal', 'JadwalController@store')->name('jadwal.store');
    Route::get('/pembuktian','PembuktianController@index')->name('pembuktian.index');
    Route::post('/pembuktian','PembuktianController@store')->name('pembuktian.store');
    
});


Auth::routes();

Route::get('/', 'HomeController@index')->middleware('auth')->name('home');

