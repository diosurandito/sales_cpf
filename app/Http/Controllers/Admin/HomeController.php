<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Database\Eloquent\Builder;
use DB;
use Auth;


class HomeController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth:admin');
	}

	public function index()
	{
		$nik = Auth::user()->nik;
		$sales = DB::table('sales_admins')
		->select('*')
		->where('nik', '=', $nik)
		->first();
		


		return view('pages.admin.home', compact('sales'));
	}
}
