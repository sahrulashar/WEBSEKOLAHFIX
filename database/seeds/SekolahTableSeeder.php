<?php

namespace Database\Seeds;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ProfileMadrasahTableSeeder extends Seeder
{
    public function run()
    {
        // Menambahkan data ke tabel 'profile_madrasah'
        DB::table('profile_madrasah')->insert([
            'nama' => 'Madrasah Aliyah Nurul Ilmi',
            'deskripsi' => 'Madrasah Aliyah yang mengutamakan pendidikan agama dan teknologi.',
            'gambar' => 'madrasah-nurul-ilmi.jpg',
            'logo' => 'logo-madrasah-nurul-ilmi.png',
            'jumlah_rombel' => 15,
            'jumlah_siswa' => 450,
            'jumlah_guru' => 35,
            'jumlah_tendik' => 10,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        // Menambahkan data lainnya jika perlu
        DB::table('profile_madrasah')->insert([
            'nama' => 'Madrasah Tsanawiyah Al-Hidayah',
            'deskripsi' => 'Madrasah Tsanawiyah yang fokus pada pendidikan agama dan pembentukan karakter.',
            'gambar' => 'madrasah-al-hidayah.jpg',
            'logo' => 'logo-madrasah-al-hidayah.png',
            'jumlah_rombel' => 18,
            'jumlah_siswa' => 500,
            'jumlah_guru' => 40,
            'jumlah_tendik' => 12,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);
    }
}

