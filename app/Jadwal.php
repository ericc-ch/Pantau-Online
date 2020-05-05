<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jadwal extends Model
{
    protected $table = 'jadwal';

    protected $primaryKey = 'id_jadwal';

    protected $fillable = [
        'nis','tanggal','jam_mulai','jam_akhir','id_aktifitas','id_mapel','bukti','bukti_lainnya','validasi'
    ];

    public function siswa()
    {
        return $this->belongsTo('App\Siswa', 'nis');
    }

    public function aktifitas()
    {
        return $this->belongsTo('App\Aktifitas', 'id_aktifitas');
    }

    public function mapel()
    {
        return $this->belongsTo('App\Mapel', 'id_mapel');
    }

}
