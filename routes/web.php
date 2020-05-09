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
    Route::get('/dashboard', function() {
        return view('guru.index');
    })->name('guru.dashboard')->middleware('cekuser:guru');

    Route::get('/siswa/rombel', 'GuruController@siswa_pj')->name('guru.siswa.pj');
    Route::get('/siswa/rayon', 'GuruController@siswa_ps')->name('guru.siswa.ps');
    Route::get('/siswa/rayon/kedua', 'GuruController@siswa_ps_kedua')->name('guru.siswa.ps.kedua');
    Route::get('/laporan/rombel', 'GuruController@laporan_siswa')->name('guru.laporansiswa');
    Route::get('/laporan/rombel/{nis}', 'GuruController@laporan_siswa_detail')->name('guru.laporansiswa.detail');
    Route::get('/laporan/rayon', 'GuruController@laporan_siswa_rayon')->name('guru.laporansiswa.rayon');
    Route::get('/laporan/rayon/kedua', 'GuruController@laporan_siswa_rayon_kedua')->name('guru.laporansiswa.rayon.kedua');
    Route::get('/laporan/rayon/{nis}', 'GuruController@laporan_siswa_rayon_detail')->name('guru.laporansiswa.rayon.detail');
});

Route::group(['prefix' => 'ortu'], function() {
    Route::get('/register', 'OrtuAuth\RegisterController@showRegistrationForm')->name('ortu.register');
    Route::post('/register', 'OrtuAuth\RegisterController@register')->name('ortu.register.submit');
    Route::get('/kegiatan-anak', 'OrtuController@kegiatanAnak')->name('ortu.kegiatan-anak');
    Route::patch('/kegiatan-anak/{id_jadwa}', 'OrtuController@update')->name('ortu.update');
    Route::post('/kegiatan-anak/cari', 'OrtuController@alihkan')->name('ortu.alihkan');
    Route::get('/kegiatan-anak/cari/{tgl}', 'OrtuController@cari')->name('ortu.cari');
    Route::get('/dashboard', function() {
        return view('ortu.index');
    })->name('ortu.dashboard')->middleware('cekuser:ortu');
});

Route::group(['prefix'=>'murid'], function (){
    Route::get('/','MuridController@index')->name('murid.index');
    Route::get('/jadwal', 'JadwalController@index')->name('jadwal.index');
    Route::get('/jadwal/aktifitas', 'JadwalController@getAktifitas')->name('murid.chained');
    Route::post('/jadwal', 'JadwalController@store')->name('jadwal.store');
    Route::get('/jadwal/{id_jadwal}', 'JadwalController@edit')->name('jadwal.edit');
    Route::get('/jadwal/tanggal/{tgl}', 'JadwalController@cari')->name('jadwal.cari');
    Route::patch('/jadwal/{id_jadwal}', 'JadwalController@update')->name('jadwal.update');
    Route::delete('/jadwal/{id_jadwal}', 'JadwalController@destroy')->name('jadwal.destroy');



    Route::get('/pembuktian','PembuktianController@index')->name('pembuktian.index');
    Route::patch('/pembuktian/{id_jadwal}','PembuktianController@update')->name('pembuktian.update');
    Route::get('/pembuktian/{id_jadwal}','PembuktianController@edit')->name('pembuktian.edit');
    Route::post('/pembuktian/cari','PembuktianController@alihkan')->name('pembuktian.alihkan');
    Route::get('/pembuktian/cari/{tgl}','PembuktianController@cari')->name('pembuktian.cari');
});

Auth::routes();

Route::get('/', function() { return redirect('login'); });

Route::get('/generate', 'GenerateUserController@generateSiswa');