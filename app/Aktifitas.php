<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aktifitas extends Model
{
    protected $table = 'aktifitas';

    protected $primaryKey = 'id_aktifitas';

    protected $fillable = ['id_mapel', 'nama_aktifitas'];

    public function jadwals()
    {
        return $this->haMany('App\Detailjadwal', 'id_aktifitas');
    }
    public function jadwal()
    {
        return $this->haMany('App\Jadwal', 'id_aktifitas');
    }
    public function mapel()
    {
        return $this->belongsTo('App\Mapel', 'id_mapel');
    }
}
