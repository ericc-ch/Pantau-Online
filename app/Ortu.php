<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Ortu extends Authenticatable
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
