<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>{{ $madrasah->nama ?? 'Nama Madrasah' }} | Admin</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/assets/img/favicon.png" rel="icon">
    <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Summernote -->
    <link href="/assets/summernote/summernote.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/assets/css/style.css" rel="stylesheet">
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">
            <a class="navbar-brand mr-auto" href="#">
                <img src="{{ URL::to('/') }}/logo_madrasah/{{ $madrasah->logo ?? 'default-logo.png' }}" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
                {{ $madrasah->nama ?? 'Nama Madrasah' }}
            </a>

            <nav class="nav-menu d-none d-lg-block">
                <ul>
                    <li><a href="{{ route('home') }}">Dashboard</a></li>
                    <li class="drop-down"><a href="#">Data Master</a>
                        <ul>
                            <li><a class="dropdown-item" href="{{ route('profilemadrasah.index') }}">Profile Sekolah</a></li>
                            <li><a class="dropdown-item" href="{{ route('ekstrakulikuler.index') }}">Ekstrakulikuler</a></li>
                            <li><a class="dropdown-item" href="{{ route('gurutendik.index') }}">Guru & Tenaga Kependidikan</a></li>
                            <li><a class="dropdown-item" href="{{ route('contact.index') }}">Contact</a></li>
                        </ul>
                    </li>
                    <li class="drop-down"><a href="">Data PPDB Online</a>
                        <ul>
                            <li><a class="dropdown-item" href="{{ route('informasipendaftaran.index') }}">Informasi Pendaftaran</a></li>
                            <li><a href="https://bit.ly/4jqGRDE" target="_blank">Data Pendaftar</a></li>
                        </ul>
                    </li>
                    <li><a href="{{ route('berita.index') }}">Data Berita</a></li>
                    @if(Auth::check())
                    <li class="drop-down"><a href=""><b>{{ Auth::user()->name }}</b></a>
                        <ul>
                            
                            <li>
                                <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                            Keluar</a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </li>
                    </ul>
                    @else
                    <li><a href="{{ route('login') }}">Login</a></li>
                    <li><a href="{{ route('register') }}">Register</a></li>
                    @endif
                </ul>
            </nav><!-- .nav-menu -->
        </div>
    </header><!-- End Header -->

    <!-- ======= Content ======= -->
    <main id="main">
        @yield('content')
    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="container footer-bottom clearfix">
            <div class="copyright">
                {{ $madrasah->nama ?? 'Nama Madrasah' }} | <strong><span>2025</span></strong>. All Rights Reserved
            </div>
            {{-- <div class="credits">
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div> --}}
        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

    <!-- Vendor JS Files -->
    <script src="/assets/vendor/jquery/jquery.min.js"></script>
    <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="/assets/vendor/php-email-form/validate.js"></script>
    <script src="/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
    <script src="/assets/vendor/counterup/counterup.min.js"></script>
    <script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="/assets/vendor/venobox/venobox.min.js"></script>
    <script src="/assets/vendor/owl.carousel/owl.carousel.min.js"></script>

    <!-- Template Main JS File -->
    <script src="/assets/js/main.js"></script>

    <!-- Summernote -->
    <script src="/assets/summernote/js/summernote.min.js"></script>
    <!-- Summernote init -->
    <script src="/js/plugins-init/summernote-init.js"></script>

    <!-- Sweet Alert  -->
    @include('sweetalert::alert')

</body>

</html>
