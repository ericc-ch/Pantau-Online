<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Detailjadwal extends Model
{
    protected $table = 'detail_jadwal';

    protected $fillable = [
        'id_jadwal', 'jam_mulai', 'jam_akhir',
        'id_aktifitas', 'id_mapel',
    ];
    
    // NERIMA DARI JadwalKegiatan
    public function jadwal()
    {
        return $this->belongsTo('App\Jadwalkegiatan', "id_jadwal");
    }

    // NERIMA DARI AKTIFITAS
    public function activity()
    {
        return $this->belongsTo('App\Aktifitas', 'id_aktifitas');
    }
    
    // NERIMA DARI MAPEL
    public function mapel()
    {
        return $this->belongsTo('App\Mapel', 'id_mapel');
    }


    
    // NGIRIM KE Pembuktian
    public function schedules()
    {
        return $this->hasMany('App\Pembuktian', 'id_jadwal');
    }

    // NGIRIM KE PEMBUKTIAN
    public function aktifitas()
    {
        return $this->hasMany('App\Pembuktian', 'id_aktifitas');
    }

}
