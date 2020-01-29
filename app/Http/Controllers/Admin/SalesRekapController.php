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

		$salesrkp->map(function ($salesrkp) {
			$detail = DB::connection('mysql2')
			->table('master_karyawan')
			->select('nama')
			->where('nik', $salesrkp->nik)
			->get()->first();


			$salesrkp->nama = $detail->nama;
			return $salesrkp;

		});

		// return dd($karyawan);

		return view('pages.admin.salesrekap', compact('salesrkp'));

	}

	public function filter(Request $request)
	{
		$from_date = date('y-m-d 23:59:59', strtotime($request->from_date));
		$to_date = date('y-m-d 23:59:59', strtotime($request->to_date));

		$salesrkp = DB::table('sales_rekaps')
		->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
		->select('sales_rekaps.*', 'dealers.nama_dealer')
		->whereBetween('sales_rekaps.tgl_kunjungan', [$from_date, $to_date])
		->orderBy('sales_rekaps.id', 'DESC')
		->get();



		$salesrkp->map(function ($salesrkp) {
			$detail = DB::connection('mysql2')
			->table('master_karyawan')
			->select('nama')
			->where('nik', $salesrkp->nik)
			->get()->first();


			$salesrkp->nama = $detail->nama;
			return $salesrkp;

		});

		//return dd($to_date);

		return view('pages.admin.salesrekap', compact('salesrkp'));

	}
}
