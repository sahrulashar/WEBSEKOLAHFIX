<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Schema;   // jangan lupa import ini
use App\ProfileMadrasah;

class AppServiceProvider extends ServiceProvider
{
    public function register()
    {
        //
    }

    public function boot()
    {
        if (Schema::hasTable('profile_madrasah')) {
            // Ambil data madrasah dari database
            $madrasah = ProfileMadrasah::first();

            // Bagikan data madrasah ke semua view
            View::share('madrasah', $madrasah);
        }
    }
}
