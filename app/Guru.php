<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guru extends Model
{
    protected $table = 'guru';

    protected $fillable = [
        'nip', 'nama', 'id_mapel',
        'username', 'password',
    ];

    public function mapel()
    {
        return $this->belongsTo('App\Mapel', 'id_mapel');
    }
}
