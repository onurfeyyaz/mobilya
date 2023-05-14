<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('prova_cut_processes')->insert([
            [
                "key" => 1,
                "value" => "Başlatıldı"
            ],
            [
                "key" => 2,
                "value" => "Durduruldu"
            ],
            [
                "key" => 3,
                "value" => "Tamamlandı"
            ]
        ]);
    }
}
