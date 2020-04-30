<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guru extends Model
{
    protected $table = 'guru';

    protected $guard = 'guru';

    protected $fillable = [
        'nip',
        'nama',
        'id_mapel',
        'id_akun',
    ];

    public function mapel()
    {
        return $this->belongsTo('App\Mapel', 'id_mapel');
    }
    public function akun()
    {
        return $this->hasOne('App\User', 'id_akun');
    }
}
