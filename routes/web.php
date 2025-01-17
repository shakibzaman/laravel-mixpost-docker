<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::any('callback/facebook_page', function () {
    $response = Request::all(); // Capture all incoming request data
    Log::info('Callback', [$response]); // Log the data
});
Route::any('callback/instagram', function () {
    $response = Request::all(); // Capture all incoming request data
    Log::info('Callback', [$response]); // Log the data
});
