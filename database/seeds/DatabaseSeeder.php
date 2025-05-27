<?php

namespace database\seeds;  // Pastikan namespace sesuai dengan folder

use Illuminate\database\Seeder;
use database\seeds\UsersTableSeeder;
use database\seeds\ProfileMadrasahTableSeeder;  // Jangan lupa import seeder ini
use database\Seeds\ContactTableSeeder;  // Import ContactTableSeeder

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        // Jalankan seeder UsersTableSeeder
        $this->call(UsersTableSeeder::class);

        // Jalankan seeder ProfileMadrasahTableSeeder
        $this->call(ProfileMadrasahTableSeeder::class);

        // Jalankan seeder ContactTableSeeder
        $this->call(ContactTableSeeder::class);
    }
}



