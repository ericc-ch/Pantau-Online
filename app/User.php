<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    public function getAuthIdentifierName()
    {
        return 'nis';
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nis', 'nama', 'jk', 'rombel',
        'rayon', 'username', 'password',
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

    
}