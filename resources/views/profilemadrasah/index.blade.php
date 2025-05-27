@extends('layouts.app')

@section('content')
<!-- ======= Breadcrumbs ======= -->
<section class="breadcrumbs">
  <div class="container">

    <div class="d-flex justify-content-between align-items-center">
      <h4>Profile Sekolah</h4>
      <ol>
        <li><a href="{{ route('home') }}">Dashboard</a></li>
        <li>Profile Sekolah</li>
      </ol>
    </div>

  </div>
</section><!-- End Breadcrumbs -->

<!-- ======= About Section ======= -->
<section id="about" class="about">
  @if ($profile_madrasah->count() >= 1)
  @foreach($profile_madrasah as $profile)
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <h1>{{$profile->nama}} </h1>
        <p>{{$profile->deskripsi}}</p>
      </div>
      <div class="col-lg-6 pt-4 pt-lg-0 content">
        <img src="{{URL::to('/')}}/gambar_profile/{{$profile->gambar}}" class="img-fluid" alt="">
      </div>

    </div>
    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container">

        <div class="row counters">

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">{{$profile->jumlah_rombel}}</span>
            <p>Rombongan Belajar</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">{{$profile->jumlah_siswa}}</span>
            <p>Siswa</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">{{$profile->jumlah_guru}}</span>
            <p>Guru</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">{{$profile->jumlah_tendik}}</span>
            <p>Tenaga Kependidikan</p>
          </div>
        </div>
      </div>
    </section><!-- End Counts Section -->
  </div>
  <div class="text-center"> <a href="{{route('profilemadrasah.edit', $profile->id)}}" class="btn btn-md btn-success">Edit Profile Sekolah</a></div>
  @endforeach
  @else
  <div class="text-center"> <a href="{{route('profilemadrasah.create')}}" class="btn btn-md btn-success">Buat Data Profile Sekolah</a></div>
  @endif
</section><!-- End About -->
@endsection