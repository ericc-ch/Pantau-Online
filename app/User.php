<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'password', 'id_pemilik',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\Siswa', 'id_pemilik', 'nis');
    }
    public function guru()
    {
        return $this->belongsTo('App\Guru', 'id_pemilik', 'nip');
    }
    public function ortu()
    {
        return $this->belongsTo('App\Ortu', 'id_pemilik', 'nik');
    }
    public function admin()
    {
        return $this->belongsTo('App\Admin', 'id_pemilik');
    }
}