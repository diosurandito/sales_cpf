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

	public function filter(Request $request)
	{

		$salesrkp = DB::table('sales_rekaps')
		->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
		->select('sales_rekaps.*', 'dealers.nama_dealer')
		->whereBetween('sales_rekaps.tgl_kunjungan', [date('y-m-d', strtotime($request->from_date)), date('y-m-d', strtotime($request->to_date))])
		->orderBy('sales_rekaps.id', 'DESC')
		->get();

		// return dd($request->from_date, $request->to_date);

		return view('pages.admin.salesrekap', compact('salesrkp'));

	}
}
