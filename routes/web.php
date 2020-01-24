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
})->name('login');

Route::group(['prefix' => '/'], function()
{
	//AUTHADMIN
	Route::get('login', 'Admin\AuthAdminController@showLoginForm')->name('admlogin');
	Route::post('login','Admin\AuthAdminController@login')->name('admin.login');
	Route::post('logout','Admin\AuthAdminController@logoutAdmin')->name('admlogout');
	Route::get('home', 'Admin\HomeController@index')->name('admin.home');

	//Dealer
	Route::get('dealer', 'Admin\DealerController@index')->name('admin.dealer.index');
	Route::post('dealer/store','Admin\DealerController@store')->name('admin.dealer.store');
	Route::patch('dealer/on/{id}', 'Admin\DealerController@on')->name('admin.dealer.on');
	Route::patch('dealer/off/{id}', 'Admin\DealerController@off')->name('admin.dealer.off');
	Route::get('dealer/destroy/{id}','Admin\DealerController@destroy')->name('admin.dealer.destroy');
	Route::patch('dealer/update/{id}', 'Admin\DealerController@update')->name('admin.dealer.update');

	//Sales Rekap
	Route::get('sales-rekap', 'Admin\SalesRekapController@index')->name('admin.salesrekap.index');
	Route::post('sales-rekap/filter', 'Admin\SalesRekapController@filter')->name('admin.salesrekap.index.filter');


	//Sticker
	Route::get('print-sticker', 'Admin\DealerController@printstkr_all')->name('admin.dealer.printstkr.all');

	Route::get('print-sticker/{id}', 'Admin\DealerController@printstkr')->name('admin.dealer.printstkr.id');

	//Unautho
	


});

