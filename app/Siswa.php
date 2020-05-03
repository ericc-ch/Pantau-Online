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
    protected $primaryKey = 'nis';

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
    public function jadwal()
    {
        return $this->hasMany('App\Jadwal', 'nis');
    }
    public function akun()
    {
        return $this->hasOne('App\User', 'id_akun');
    }
}
