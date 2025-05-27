<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProfilemadrasahTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('profile_madrasah', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama', 45);
            $table->text('deskripsi');
            $table->string('gambar');
            $table->string('logo');
            $table->integer('jumlah_rombel');
            $table->integer('jumlah_siswa');
            $table->integer('jumlah_guru');
            $table->integer('jumlah_tendik');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('profile_madrasah'); // Pastikan nama tabel sesuai
    }
}
