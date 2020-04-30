<?php

use Illuminate\Database\Seeder;
use App\User;

class SiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'nis' => 11806623,
            'nama' => 'Agung Prasetio',
            'jk' => 'L',
            'rombel'=> 'RPL XI-3',
            'rayon' => 'Ciawi 4',
            'username' => 'agungp',
            'password' => bcrypt('agungp123'),
        ]);
    }
}
