<?php

namespace App\Http\Controllers;

use App\ProfileMadrasah;
use App\Ekstrakulikuler;
use App\GuruTendik;
use App\Contact;
use App\Berita;
use App\InformasiPendaftaran;
use Illuminate\Http\Request;

class LeandingPageController extends Controller
{
    public function index()
    {
        $profile_madrasah = ProfileMadrasah::first();
        $ekstrakulikuler = Ekstrakulikuler::orderByRaw('created_at DESC')->get();
        $gurutendik = GuruTendik::all();
        $contact = Contact::first();
        $berita_terbaru = Berita::orderByRaw('created_at DESC')->paginate(6);
        $informasi_pendaftaran = InformasiPendaftaran::first();
        return view('welcome', compact('profile_madrasah', 'ekstrakulikuler', 'gurutendik', 'contact', 'berita_terbaru','informasi_pendaftaran'));
    }

    public function index_berita()
    {
        $madrasah = ProfileMadrasah::first();
        $contact = Contact::first();
        $berita_terbaru = Berita::orderByRaw('created_at DESC')->paginate(3);
        $berita_all = Berita::orderByRaw('created_at DESC')->whereNotIn('id', $berita_terbaru)->get();
        return view('berita.index_berita', compact('berita_terbaru','berita_all','contact','madrasah'));
    }

    public function show_berita($id)
    {
        $madrasah = ProfileMadrasah::first();
        $contact = Contact::first();
        $berita = Berita::find($id);
        return view('berita.show_berita', compact('berita', 'madrasah', 'contact'));
    }
}
