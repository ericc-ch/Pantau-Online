<?php

namespace App;

use Illuminate\Foundation\Auth\User as Akun;

class Ortu extends Akun
{
    protected $table = 'ortu';

    protected $guard = 'ortu';

    protected $fillable = [
        'nik', 'nama', 'nis',
        'username', 'password',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\User', 'nis');
    }
}
