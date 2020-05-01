<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MapelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("INSERT INTO `mapel` (`id_mapel`, `nama_mapel`) VALUES
            (1, 'PAI');
        ");
    }
}
