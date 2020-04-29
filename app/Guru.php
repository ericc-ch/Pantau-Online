<?php

namespace App;

use Illuminate\Foundation\Auth\User as Akun;

class Guru extends Akun
{
    protected $table = 'guru';

    protected $guard = 'guru';

    protected $fillable = [
        'nip', 'nama', 'id_mapel',
        'username', 'password',
    ];

    public function mapel()
    {
        return $this->belongsTo('App\Mapel', 'id_mapel');
    }
}
