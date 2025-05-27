<?php

namespace App\Http\Controllers;

use App\Models\ProfileMadrasah;
use Illuminate\Http\Request;

class ProfileMadrasahController extends Controller
{
    public function index()
    {
        // Ambil data pertama dari tabel profile_madrasah
        $madrasah = ProfileMadrasah::first();

        // Kirim data ke view
        return view('profilemadrasah.index', compact('madrasah'));
    }

    public function show($id)
    {
        // Ambil data madrasah berdasarkan id
        $madrasah = ProfileMadrasah::findOrFail($id);

        return view('profilemadrasah.show', compact('madrasah'));
    }

    // Metode lain untuk update, delete, dll. sesuai kebutuhan
}
