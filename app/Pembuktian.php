<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pembuktian extends Model
{
    protected $table = 'pembuktian';

    protected $fillable = [
        'id_jadwal', 'id_aktifitas',
        'tanggal_mengumpulkan', 'bukti',
    ];

    public function schedule()
    {
        return $this->belongsTo('App\Detailjadwal', 'id_jadwal');
    }
    
    public function aktifitas()
    {
        return $this->belongsTo('App\Detailjadwal', 'id_aktifitas');
    }
}
