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

Route::get('/', 'HomeController@index');

Auth::routes(['verify' => true]);

Route::middleware('auth', 'admin')->namespace('Admin')->prefix('admin')->group(function () {
    Route::get('dashboard','DashboardController@index');
    Route::resource('tag','TagController');
    Route::resource('category','CategoryController');
    Route::resource('post','PostController');
    Route::get('pending/post','PostController@pending');
    Route::put('post/{id}/approved','PostController@approved');

    Route::get('favourite','FavouriteController@index');

    Route::get('author','AuthorController@index');
    Route::delete('author/{id}','AuthorController@delete');

    Route::get('subscriber','SubscriberController@index');
    Route::delete('subscriber/{id}','SubscriberController@delete');

    Route::get('profile','SettingController@index');
    Route::post('profile/update','SettingController@update');

    Route::get('password','SettingController@password');
    Route::put('password/update','SettingController@password_update');

    Route::get('comment','CommentController@index');
    Route::delete('comment/{id}','CommentController@delete');
});

Route::middleware('auth', 'author')->namespace('Author')->prefix('author')->group(function () {
    Route::get('dashboard','DashboardController@index');
    Route::resource('post','PostController');

    Route::get('favourite','FavouriteController@index');
    
    Route::get('profile','SettingController@index');
    Route::post('profile/update','SettingController@update');

    Route::get('password','SettingController@password');
    Route::put('password/update','SettingController@password_update');

    Route::get('comment','CommentController@index');
    Route::delete('comment/{id}','CommentController@delete');
});

Route::middleware('auth')->group(function () {
    Route::post('favourite/{id}/create','FavouriteController@store');
    Route::post('comment/{id}','CommentController@store');
});

Route::get('single/post/{slug}','SinglePostController@index');
Route::get('posts','SinglePostController@post');

Route::get('category/{slug}','SinglePostController@postByCategory');
Route::get('tag/{slug}','SinglePostController@postByTag');

Route::post('subscriber','SubscriberController@store');

Route::get('profile/{username}','AuthorController@profile');


View::composer('layouts.frontend.partials.footer',function($view){
    $catgories = App\Category::all();
    $view->with('catgories',$catgories);
});

// Socialite
Route::get('login/{provider}', 'Auth\LoginController@redirectToProvider');
Route::get('login/{provider}/callback', 'Auth\LoginController@handleProviderCallback');



