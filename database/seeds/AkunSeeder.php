<?php

use Illuminate\Database\Seeder;
use App\User;

class AkunSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        User::create([
            'username' => 'mramdhani',
            'password' => bcrypt('dani12345'),
            'id_pemilik' => 1,
        ]);
        User::create([
            'username' => 'agungp',
            'password' => bcrypt('agungp123'),
            'id_pemilik' => 2,
        ]);
        User::create([
            'username' => 'erick',
            'password' => bcrypt('erick123'),
            'id_pemilik' => 3,
        ]);

        User::create([
            'username' => 'sayaguru',
            'password' => bcrypt('guru12345'),
            'id_pemilik' => 4,
        ]);
        User::create([
            'username' => 'orturamdhani',
            'password' => bcrypt('orturamdhani123'),
            'id_pemilik' => 5,
        ]);
        User::create([
            'username' => 'adminadmin',
            'password' => bcrypt('admin123'),
            'id_pemilik' => 6,
        ]);
    }
}
