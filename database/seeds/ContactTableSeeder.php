<?php

namespace Database\Seeds;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ContactTableSeeder extends Seeder
{
    public function run()
    {
        // Menambahkan data ke tabel 'contact'
        DB::table('contact')->insert([
            'alamat' => 'Jl. Pendidikan No. 12, Jakarta Selatan',
            'email' => 'contact@websekolah.com',
            'telpon' => '+62 123 456 789',
            'instagram' => '@websekolah',
            'facebook' => 'facebook.com/websekolah',
            'twitter' => '@websekolah',
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);
}
}
