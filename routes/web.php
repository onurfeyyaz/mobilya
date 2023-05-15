<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VersionController;

Route::get('/', function () {
    return view('welcome');
});
