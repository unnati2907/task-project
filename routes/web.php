<?php

use Illuminate\Support\Facades\Route;
use app\Http\Controllers\CategoryController;
use app\http\controllers\BookController;
use app\http\controllers\AuthorController;
use app\http\Controllers\RentDetailController;



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
    return view('welcome');
});

Route::get('/dashboard', 'App\Http\Controllers\BookController@bookselect')->middleware(['auth'])->name('dashboard');

require __DIR__ . '/auth.php';

Route::get('/admin/dashboard', function () {
    return view('admin.layouts.auth');
})->middleware(['auth:admin'])->name('admin.dashboard');

require __DIR__ . '/adminauth.php';









//Route::get('/admin/dashboard/category', 'App\Http\Controllers\CategoryController@index');
Route::POST('/addcategory', 'App\Http\Controllers\CategoryController@store');
Route::get('/admin/dashboard/category/list', 'App\Http\Controllers\CategoryController@list');
Route::get('/admin/dashboard/category/list/category_show', 'App\Http\Controllers\CategoryController@show');
Route::get('/admin/dashboard/category/list/edit_category', 'App\Http\Controllers\CategoryController@edit');
Route::post('/category_update', 'App\Http\Controllers\CategoryController@update');
Route::get('/admin/dashboard/category/list/banner_deactivate', 'App\Http\Controllers\CategoryController@banner_deactivate');



//Routes for book
Route::get('/admin/dashboard/book', 'App\Http\Controllers\BookController@index');
Route::post('/add_book', 'App\Http\Controllers\BookController@store');
Route::get('/admin/dashboard/book/list', 'App\Http\Controllers\BookController@list');
Route::GET('/admin/dashboard/book/list/book_show', 'App\Http\Controllers\BookController@show');
Route::get('/admin/dashboard/book/list/edit_book', 'App\Http\Controllers\BookController@edit');
Route::post('/book_update', 'App\Http\Controllers\BookController@update');


//routes for author
Route::get('/admin/dashboard/author', 'App\Http\Controllers\AuthorController@index');
Route::post('/addauthor', 'App\Http\Controllers\AuthorController@store');
Route::get('/author/list/author_show', 'App\Http\Controllers\AuthorController@show');
Route::get('/admin/dashboard/author/list/edit_author', 'App\Http\Controllers\AuthorController@edit');
Route::post('/author_update', 'App\Http\Controllers\AuthorController@update');


//Routes for user

Route::get('/book_rent', 'App\Http\Controllers\rentDetailController@store');
Route::get('/book_return', 'App\Http\Controllers\rentDetailController@returnBook');


//Route::get('/admin/dashboard/category', 'App\Http\Controllers\CategoryController@index');





Route::group(

    ['middleware' => ['guest:admin'], 'prefix' => 'admin', 'as' => 'admin.'],
    function () {

        Route::get('category', [App\Http\Controllers\CategoryController::class, 'index'])->name('category');
        Route::get('book', [App\Http\Controllers\CategoryController::class, 'index'])->name('book');
        Route::get('author', [App\Http\Controllers\CategoryController::class, 'index'])->name('author');
    }
);
