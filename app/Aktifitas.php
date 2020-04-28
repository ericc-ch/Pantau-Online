<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aktifitas extends Model
{
    protected $table = 'aktifitas';

    protected $fillable = ['nama_aktifitas'];

    public function jadwals()
    {
        return $this->haMany('App\Detailjadwal', 'id_aktifitas');
    }
}
