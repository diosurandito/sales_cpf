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
		$from_date = date('Y-m-d 23:59:59', strtotime($request->from_date));
		$to_date = date('Y-m-d 23:59:59', strtotime($request->to_date));

		$one_date = substr($from_date, 0, 10);
		$fd = date('d-m-Y', strtotime($from_date));
		$td = date('d-m-Y', strtotime($to_date));

		if ($from_date == $to_date) 
		{
			$salesrkp = DB::table('sales_rekaps')
			->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
			->select('sales_rekaps.*', 'dealers.nama_dealer')
			->whereDate('sales_rekaps.tgl_kunjungan', $one_date)
			->orderBy('sales_rekaps.id', 'DESC')
			->get();
		}

		elseif ($from_date < $to_date) 
		{
			$salesrkp = DB::table('sales_rekaps')
			->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
			->select('sales_rekaps.*', 'dealers.nama_dealer')
			->whereBetween('sales_rekaps.tgl_kunjungan', [$from_date, $to_date])
			->orderBy('sales_rekaps.id', 'DESC')
			->get();
		}

		else
		{
			return redirect()->route('admin.salesrekap.index')->with('failed', 'Tanggal tidak valid! Tanggal akhir tidak boleh kurang dari Tanggal awal');
			
			
		}

		$salesrkp->map(function ($salesrkp) {
			$detail = DB::connection('mysql2')
			->table('master_karyawan')
			->select('nama')
			->where('nik', $salesrkp->nik)
			->get()->first();


			$salesrkp->nama = $detail->nama;
			return $salesrkp;

		});

		// return dd($one_date);

		return view('pages.admin.salesrekap', compact('salesrkp', 'td', 'fd'));

	}
}
