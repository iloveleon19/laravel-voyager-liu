<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
})->name('menu.index');

Route::get('/company', function () {
    return view('company');
})->name('menu.company');

Route::get('/journal', function () {
    return view('journal');
})->name('menu.journal');

Route::get('/product-item', function () {
    return view('product-item');
})->name('menu.product.item');

Route::get('/product','ProductController@index')->name('menu.product');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
