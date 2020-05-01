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
            'id_pemilik' => 11806764,
        ]);
        User::create([
            'username' => 'agungp',
            'password' => bcrypt('agungp123'),
            'id_pemilik' => 11806479,
        ]);
        User::create([
            'username' => 'erick',
            'password' => bcrypt('erick123'),
            'id_pemilik' => 11806666,
        ]);

        User::create([
            'username' => 'sayaguru',
            'password' => bcrypt('guru12345'),
            'id_pemilik' => 1234567891,
        ]);
        User::create([
            'username' => 'orturamdhani',
            'password' => bcrypt('orturamdhani123'),
            'id_pemilik' => 1987654321,
        ]);
        User::create([
            'username' => 'adminadmin',
            'password' => bcrypt('admin123'),
            'id_pemilik' => 1,
        ]);
    }
}
