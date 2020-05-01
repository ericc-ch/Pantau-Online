<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OrtuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("INSERT INTO `ortu` (`nik`, `nama`, `nis`, `id_akun`) VALUES
            (1987654321, 'Saya Orang tua ramdhani', 11806764, 5);
        ");
    }
}
