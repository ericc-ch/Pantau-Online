<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ortu extends Model
{
    protected $table = 'ortu';

    // protected $guard = 'ortu';
    
    protected $primaryKey = 'nik';

    protected $fillable = [
        'nik',
        'nama',
        'nis',
        'id_akun',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\Siswa', 'nis');
    }
    public function akun()
    {
        return $this->hasOne('App\User', 'id_akun');
    }
}
