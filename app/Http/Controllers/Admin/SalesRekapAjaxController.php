<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SalesRekap;
use Carbon\Carbon;
use DataTables;
use Validator;
use Auth;
use DB;



class SalesRekapAjaxController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth:admin');
	}

	public function index(Request $request)
	{
		$nik = Auth::user()->nik;
		$sales = DB::table('sales_admins')
		->select('*')
		->where('nik', '=', $nik)
		->first();

		if($request->ajax())
		{
			if(!empty($request->from_date))
			{
				$from_date = date('Y-m-d 00:00:01', strtotime($request->from_date));
				$to_date = date('Y-m-d 23:59:59', strtotime($request->to_date));

				$data = DB::table('sales_rekaps')
				->join('sales_admins', 'sales_admins.nik', '=', 'sales_rekaps.nik')
				->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
				->select('sales_rekaps.*', 'dealers.nama_dealer', 'dealers.alamat as d_alamat', 'sales_admins.nik as sadm_nik', 'sales_admins.kode_akses')
				->where('sales_admins.kode_akses', '=', $sales->kode_akses)
				->whereNull('sales_rekaps.deleted_at')
				->whereBetween('sales_rekaps.tgl_kunjungan', array($from_date, $to_date))
				->orderBy('sales_rekaps.id', 'DESC')
				->get();

				$data->map(function ($data) {
					$detail = DB::connection('mysql2')
					->table('master_karyawan')
					->select('nama')
					->where('nik', $data->nik)
					->get()->first();

					$data->nama = $detail->nama;
					$data->tgl_kunjungan2 = date('d-m-Y H:i', strtotime($data->tgl_kunjungan));
					if ($data->id_dealer == 'DLRJKI0000') {
						$data->nama_dealer2 = $data->nm_tempat;
					}else {
						$data->nama_dealer2 = $data->nama_dealer;
					}

					if ($data->id_dealer != 'DLRJKI0000') {
						$data->d_alamat2 = $data->d_alamat;
					}else {
						$data->d_alamat2 = $data->alamat;
					}
					
					return $data;

				});
			}
			else
			{
				$data = DB::table('sales_rekaps')
				->join('sales_admins', 'sales_admins.nik', '=', 'sales_rekaps.nik')
				->join('dealers', 'dealers.id_dealer', '=', 'sales_rekaps.id_dealer')
				->select('sales_rekaps.*', 'dealers.nama_dealer', 'dealers.alamat as d_alamat', 'sales_admins.nik as sadm_nik', 'sales_admins.kode_akses')
				->where('sales_admins.kode_akses', '=', $sales->kode_akses)
				->whereNull('sales_rekaps.deleted_at')
				->orderBy('sales_rekaps.id', 'DESC')
				->get();

				$data->map(function ($data) {
					$detail = DB::connection('mysql2')
					->table('master_karyawan')
					->select('nama')
					->where('nik', $data->nik)
					->get()->first();

					$data->nama = $detail->nama;
					$data->tgl_kunjungan2 = date('d-m-Y H:i', strtotime($data->tgl_kunjungan));
					if ($data->id_dealer == 'DLRJKI0000') {
						$data->nama_dealer2 = $data->nm_tempat;
					}else {
						$data->nama_dealer2 = $data->nama_dealer;
					}

					if ($data->id_dealer != 'DLRJKI0000') {
						$data->d_alamat2 = $data->d_alamat;
					}else {
						$data->d_alamat2 = $data->alamat;
					}
					return $data;
				});
			}

			return DataTables::of($data)
			->addIndexColumn()
			->addColumn('lokasi', function($data){
				$button = '<a href="https://maps.google.com/?q='.$data->lat.','.$data->lng.'" target="_blank"><img src="'.asset('public/assets/media/favicons/map.svg').'" width="30" height="30" title="Lihat lokasi"></a>';
				return $button;
			})
			->rawColumns(['lokasi'])
			->make(true);
		}

		return view('pages.admin.salesrekap2', compact('sales'));
	}
}
