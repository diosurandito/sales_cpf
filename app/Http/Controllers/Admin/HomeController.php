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
		// $nik = Auth::user()->nik;
		// $no_do = DB::table('d_orders')
		// ->select('no_do')
		// ->where('nik', '=', $nik)
		// ->orderBy('id', 'DESC')
		// ->first();

		// $nodo = substr($no_do->no_do,2);

		// $lnodo = (int)$nodo;
		// $lnodo++;
		// $nomor = sprintf("%07s", $lnodo);


		return view('pages.admin.home');
	}
}
