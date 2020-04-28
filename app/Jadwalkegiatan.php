<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jadwalkegiatan extends Model
{
    protected $table = 'jadwal_kegiatan';

    protected $fillable = [
        'id_jadwal', 'nis', 'tanggal',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\User', 'nis');
    }

    public function details()
    {
        return $this->hasMany('App\Detailjadwal', 'id_jadwal');
    }
}
