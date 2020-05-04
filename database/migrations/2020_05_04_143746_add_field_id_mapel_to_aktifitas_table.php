<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldIdMapelToAktifitasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('aktifitas', function (Blueprint $table) {
            $table->bigInteger('id_mapel')->after('id_aktifitas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('aktifitas', function (Blueprint $table) {
            $table->dropColumn('id_mapel');
        });
    }
}
