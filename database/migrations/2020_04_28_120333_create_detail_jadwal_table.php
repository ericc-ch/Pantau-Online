<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetailJadwalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detail_jadwal', function (Blueprint $table) {
            $table->integer('id_jadwal');
            $table->time('jam_mulai');
            $table->time('jam_akhir');
            $table->integer('id_aktifitas')->unsigned();
            $table->integer('id_mapel')->unsigned();
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
        Schema::dropIfExists('detail_jadwal');
    }
}
