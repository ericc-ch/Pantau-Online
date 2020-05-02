<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AktifitasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("INSERT INTO `aktifitas` (`id_aktifitas`, `nama_aktifitas`) VALUES
            (1, 'Sholat Tahajud'),
            (2, 'Sholat Shubuh'),
            (3, 'Sholat Dhuha');
        ");
    }
}
