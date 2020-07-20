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

Auth::routes();

Route::middleware('auth', 'admin')->namespace('Admin')->prefix('admin')->group(function () {
    Route::get('dashboard','DashboardController@index');
    Route::resource('tag','TagController');
    Route::resource('category','CategoryController');
    Route::resource('post','PostController');
    Route::get('pending/post','PostController@pending');
    Route::put('post/{id}/approved','PostController@approved');
    Route::get('subscriber','SubscriberController@index');
    Route::delete('subscriber/{id}','SubscriberController@delete');

    Route::get('profile','SettingController@index');
    Route::put('profile/update','SettingController@update');

    Route::get('password','SettingController@password');
    Route::put('password/update','SettingController@password_update');
});

Route::middleware('auth', 'author')->namespace('Author')->prefix('author')->group(function () {
    Route::get('dashboard','DashboardController@index');
    Route::resource('post','PostController');

    Route::get('profile','SettingController@index');
    Route::put('profile/update','SettingController@update');

    Route::get('password','SettingController@password');
    Route::put('password/update','SettingController@password_update');
});

Route::post('subscriber','SubscriberController@store');


