<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mapel extends Model
{
    protected $table = 'mapel';
    protected $primaryKey='id_mapel';

    protected $fillable = ['nama_mapel'];

    public function gurus()
    {
        return $this->hasMany('App\Guru', 'id_mapel');
    }

    public function jadwals()
    {
        return $this->hasMany('App\Detailjadwal', 'id_mapel');
    }

    public function jadwal()
    {
        return $this->hasMany('App\Jadwal', 'id_mapel');
    }
}
