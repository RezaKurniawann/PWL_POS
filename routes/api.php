<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\http\Controller\Api\RegisterController;
use App\http\Controller\Api\LoginController;
use App\http\Controller\Api\LogoutController;
use App\Http\Controllers\Api\LevelController;
use App\Http\Controller\Api\UserController;
use App\Http\Controllers\Api\KategoriController;
use App\Http\Controllers\Api\BarangController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post ('/register', App\Http\Controllers\Api\RegisterController::class) -> name('register');
Route::post ('/register1', App\Http\Controllers\Api\RegisterController::class) -> name('register1');
Route::post ('/login', App\Http\Controllers\Api\LoginController::class) -> name('login');
Route::post ('/logout', App\Http\Controllers\Api\LogoutController::class) -> name('logout');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



//Level
Route::get('levels', [LevelController::class, 'index']);
Route:: post('levels', [LevelController::class, 'store' ]);
Route::get('levels/{level}', [LevelController::class, 'show' ]);
Route::put('levels/{level}', [LevelController::class, 'update']);
Route::delete('levels/{level}', [LevelController::class, 'destroy' ]);

//Kategori
Route::get('kategoris', [KategoriController::class, 'index']);
Route::post('kategoris', [KategoriController::class, 'store']);
Route::get('kategoris/{kategori}', [KategoriController::class, 'show']);
Route::put('kategoris/{kategori}', [KategoriController::class, 'update']);
Route::delete('kategoris/{kategori}', [KategoriController::class, 'destroy']);

//Barang
Route::get('barangs', [BarangController::class, 'index']);
Route::post('barangs', [BarangController::class, 'store']);
Route::get('barangs/{barang}', [BarangController::class, 'show']);
Route::put('barangs/{barang}', [BarangController::class, 'update']);
Route::delete('barangs/{barang}', [BarangController::class, 'destroy']);

//User
Route::get('users', [App\Http\Controllers\Api\UserController::class, 'index']);
Route::post('users', [App\Http\Controllers\Api\UserController::class, 'store']);
Route::get('users/{user}', [App\Http\Controllers\Api\UserController::class, 'show']);
Route::put('users/{user}', [App\Http\Controllers\Api\UserController::class, 'update']);
Route::delete('users/{user}', [App\Http\Controllers\Api\UserController::class, 'destroy']);

