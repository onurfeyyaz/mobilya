<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ProvaCutProcessStatistics extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prova_cut_process_statistics', function (Blueprint $table) {
            $table->id();
            $table->integer("prova_id");
            $table->integer("user_id");
            $table->integer("cut_status_id");
            $table->integer("prova_cut_process_id");
            $table->integer("toplam_sure");
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
        Schema::dropIfExists('prova_cut_process_statistics');
    }
}
