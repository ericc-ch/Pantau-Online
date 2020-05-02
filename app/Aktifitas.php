<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aktifitas extends Model
{
    protected $table = 'aktifitas';

    protected $primaryKey = 'id_aktifitas';

    protected $fillable = ['nama_aktifitas'];

    public function jadwals()
    {
        return $this->haMany('App\Detailjadwal', 'id_aktifitas');
    }
}
