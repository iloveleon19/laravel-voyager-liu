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

Route::get('/', 'IndexController@index')->name('menu.index');

Route::get('/company', 'CompanyController@index')->name('menu.company');

    Route::get('/journal', function () {
        return view('journal');
    })->name('menu.journal');

Route::get('/journal', 'JournalController@index')->name('menu.journal');
Route::get('/journal-item/{slug}', 'JournalItemController@index')->name('menu.journal.item');


Route::get('/product', 'ProductController@index')->name('menu.product');
Route::get('/product-item/{slug}', 'ProductItemController@index')->name('menu.product.item');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
