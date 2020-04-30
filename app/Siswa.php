<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    // public function getAuthIdentifierName()
    // {
    //     return 'nis';
    // }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nis',
        'nama',
        'jk',
        'rombel',
        'rayon', 'id_akun'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    

    // RELATIONSHIP
    public function ortus()
    {
        return $this->hasMany('App\Ortu', 'nis');
    }
    public function jadwals()
    {
        return $this->hasMany('App\Jadwalkegiatan', 'nis');
    }
    public function akun()
    {
        return $this->hasOne('App\User', 'id_akun');
    }
}
