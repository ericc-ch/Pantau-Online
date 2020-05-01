<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GuruSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("INSERT INTO `guru` (`nip`, `nama`, `id_mapel`, `id_akun`) VALUES
            (1234567891, 'Saya Guru', 1, 4);
        ");
    }
}
