<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ortu extends Model
{
    protected $table = 'ortu';

    // protected $guard = 'ortu';

    protected $fillable = [
        'nik',
        'nama',
        'nis',
        'id_akun',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\User', 'nis');
    }
    public function akun()
    {
        return $this->hasOne('App\User', 'id_akun');
    }
}
