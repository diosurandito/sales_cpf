<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SalesRekap;
use DB;


class SalesRekapController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth:admin');
	}

	public function index()
	{
		$salesrkp = DB::table('sales_rekaps')
		->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
		->select('sales_rekaps.*', 'dealers.nama_dealer')
		->orderBy('sales_rekaps.id', 'DESC')
		->get();

		return view('pages.admin.salesrekap', compact('salesrkp'));

	}
}
