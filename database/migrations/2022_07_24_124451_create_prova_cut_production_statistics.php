<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProvaCutProductionStatistics extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prova_cut_production_statistics', function (Blueprint $table) {
            $table->id();
            $table->string('durum');
            $table->string('tur');
            $table->integer('prova_id');
            $table->integer('cut_status_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('sure');
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
        Schema::dropIfExists('prova_cut_production_statistics');
    }
}
