<?php

namespace App;

use Illuminate\Foundation\Auth\User as Akun;

class Admin extends Akun
{
    protected $table = 'admin';

    protected $guard = 'admin';

    protected $fillable = ['nama', 'username', 'password'];
}
