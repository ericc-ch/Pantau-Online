<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("INSERT INTO `siswas` (`nis`, `nama`, `jk`, `rombel`, `rayon`, `id_akun`) VALUES
            (11806764, 'Muhammad Ramdhani', 'L', 'RPL XI-3', 'Ciawi 3', 1),
            (11806479, 'Agung Prasetio', 'L', 'RPL XI-3', 'Sukasari 2', 2),
            (11806666, 'Eric Christian', 'L', 'RPL XI-1', 'Cicurug 2', 3);
        ");
    }
}
