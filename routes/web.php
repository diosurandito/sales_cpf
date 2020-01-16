<?php

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
	return redirect()->route('admlogin');
});

Route::group(['prefix' => '/'], function()
{
	//AUTHADMIN
	Route::get('login', 'Admin\AuthAdminController@showLoginForm')->name('admlogin');
	Route::post('login','Admin\AuthAdminController@login')->name('admin.login');
	Route::post('logout','Admin\AuthAdminController@logoutAdmin')->name('admlogout');
	Route::get('home', 'Admin\HomeController@index')->name('admin.home');
});

