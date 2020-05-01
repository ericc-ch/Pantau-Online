<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(AkunSeeder::class);
        $this->call(AdminSeeder::class);
        $this->call(GuruSeeder::class);
        $this->call(MapelSeeder::class);
        $this->call(OrtuSeeder::class);
        $this->call(SiswaSeeder::class);
    }
}
