<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aktifitas extends Model
{
    public $table = 'aktifitas';
	protected $primaryKey = 'id_aktifitas';
    protected $fillable = [

        'id_aktifitas', 'nama_aktifitas'

    ];
}
