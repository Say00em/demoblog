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

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//post management
Route::get('/home/post', 'App\Http\Controllers\PostController@post')->name('home.post');
Route::post('/home/post/store', 'App\Http\Controllers\PostController@post_store')->name('post.store');
Route::get('/home/post/delete{post_id}', 'App\Http\Controllers\PostController@post_delete')->name('post.delete');

//author
Route::get('/home/author', 'App\Http\Controllers\AuthorController@author')->name('home.author');
Route::post('/home/author/store', 'App\Http\Controllers\AuthorController@author_store')->name('author.store');
Route::get('/home/author/delete{author_id}', 'App\Http\Controllers\AuthorController@author_delete')->name('author.delete');

//category
Route::get('/home/category', 'App\Http\Controllers\CategoryController@category')->name('home.category');
Route::post('/home/category/store', 'App\Http\Controllers\CategoryController@category_store')->name('category.store');
Route::get('/home/category/delete{category_id}', 'App\Http\Controllers\CategoryController@category_delete')->name('category.delete');

// FRONTEND
Route::get('/', 'App\Http\Controllers\FrontendController@index')->name('index');
Route::get('/authors', 'App\Http\Controllers\FrontendController@authors')->name('authors');
Route::get('/about', 'App\Http\Controllers\FrontendController@about')->name('about');
Route::get('/blog/{id}', 'App\Http\Controllers\FrontendController@blog')->name('blog');

//Blog comment
Route::post('/blog/comment/store', 'App\Http\Controllers\CommentController@blog_comment_store')->name('blog.comment.store');

//Contact
Route::get('/contact', 'App\Http\Controllers\ContactController@contact')->name('contact');
Route::get('/message/notification', 'App\Http\Controllers\ContactController@message_notification')->name('message.notification');
Route::post('/contact/store', 'App\Http\Controllers\ContactController@contact_store')->name('contact.store');
Route::get('/message/delete{notification_id}', 'App\Http\Controllers\AuthorController@message_delete')->name('message.delete');



