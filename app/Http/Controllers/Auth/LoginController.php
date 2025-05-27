<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\ProfileMadrasah; // Jangan lupa untuk mengimpor model yang sesuai
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Alert;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    protected $redirectTo = RouteServiceProvider::HOME;

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        Alert::success('Sukses', 'Login Berhasil');
    }

    public function showLoginForm()
    {
        // Ambil data madrasah dari database
        $madrasah = ProfileMadrasah::find(1);
        return view('auth.login', compact('madrasah'));
    }
}
