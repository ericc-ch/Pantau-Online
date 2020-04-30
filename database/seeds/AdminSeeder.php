<?php

use Illuminate\Database\Seeder;
use App\Admin;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Admin::create([
            'nama' => 'Admin Admin',
            'username' => 'adminadmin',
            'password' => bcrypt('admin123'),
        ]);
    }
}
