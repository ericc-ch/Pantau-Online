<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mapel extends Model
{
	public $table = 'mapel';
	protected $primaryKey = 'id_mapel';
    protected $fillable = [

        'id_mapel', 'nama_mapel'

    ];
}
