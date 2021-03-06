<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SalesRekap;
use DB;
use Auth;
use Carbon\Carbon;


class SalesRekapController extends Controller
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

		$month = Carbon::now()->format('m');
		$year = Carbon::now()->format('Y');

		$salesrkp = DB::table('sales_rekaps')
		->join('sales_admins', 'sales_admins.nik', '=', 'sales_rekaps.nik')
		->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
		->select('sales_rekaps.*', 'dealers.nama_dealer', 'dealers.alamat as d_alamat', 'sales_admins.nik as sadm_nik', 'sales_admins.kode_akses')
		->where('sales_admins.kode_akses', '=', $sales->kode_akses)
		->whereMonth('sales_rekaps.tgl_kunjungan', '=', $month)
		->whereYear('sales_rekaps.tgl_kunjungan', '=', $year)
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

		return view('pages.admin.salesrekap', compact('salesrkp', 'sales'));

	}

	public function filter(Request $request)
	{
		$nik = Auth::user()->nik;
		$sales = DB::table('sales_admins')
		->select('*')
		->where('nik', '=', $nik)
		->first();

		$from_date = date('Y-m-d 00:00:01', strtotime($request->from_date));
		$to_date = date('Y-m-d 23:59:59', strtotime($request->to_date));

		$one_date = substr($from_date, 0, 10);
		$fd = date('d-m-Y', strtotime($from_date));
		$td = date('d-m-Y', strtotime($to_date));

		if ($from_date == $to_date) 
		{
			$salesrkp = DB::table('sales_rekaps')
			->join('sales_admins', 'sales_admins.nik', '=', 'sales_rekaps.nik')
			->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
			->select('sales_rekaps.*', 'dealers.nama_dealer', 'dealers.alamat as d_alamat', 'sales_admins.nik as sadm_nik', 'sales_admins.kode_akses')
			->where('sales_admins.kode_akses', '=', $sales->kode_akses)
			->whereDate('sales_rekaps.tgl_kunjungan', $one_date)
			->orderBy('sales_rekaps.id', 'DESC')
			->get();
		}

		elseif ($from_date < $to_date) 
		{
			$salesrkp = DB::table('sales_rekaps')
			->join('sales_admins', 'sales_admins.nik', '=', 'sales_rekaps.nik')
			->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
			->select('sales_rekaps.*', 'dealers.nama_dealer', 'dealers.alamat as d_alamat', 'sales_admins.nik as sadm_nik', 'sales_admins.kode_akses')
			->where('sales_admins.kode_akses', '=', $sales->kode_akses)
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

		return view('pages.admin.salesrekap', compact('salesrkp', 'td', 'fd', 'sales'));

	}
}
