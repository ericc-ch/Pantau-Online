<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ortu extends Model
{
    protected $table = 'ortu';

    protected $fillable = [
        'nik', 'nama', 'nis',
        'username', 'password',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\User', 'nis');
    }
}
