<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class GenerateUserController extends Controller
{
    public function generateSiswa()
    {
        $siswas = DB::table('siswas')->select('nis')->get();
        $id = 100;

        foreach ($siswas as $siswa) {
            DB::table('users')->insertOrIgnore([
                'id' => $id++,
                'username' => $siswa->nis,
                'password' => Hash::make($siswa->nis),
                'id_pemilik' => $siswa->nis,
                ]
            );
            $id += 1;
        }

        return 'WULAN HMMMMMMMMMMMMMMMMMM';
    }
}
