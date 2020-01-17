<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Dealer;
use DB;

class DealerController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth:admin');
	}

	public function index()
	{
		$dealer = Dealer::select('*')
		->orderBy('dealers.id', 'DESC')
		->get();

		$dlr = DB::table('dealers')
		->select('id_dealer')
		->orderBy('id', 'DESC')
		->first();

		$nodlr = substr($dlr->id_dealer, 6);

		$intdlr = (int)$nodlr;
		$intdlr++;
		$nomor = sprintf("%04s", $intdlr);
		$id_dealer = 'DLRJKI'.$nomor;


		return view('pages.admin.dealer', compact('dealer', 'id_dealer'));

	}

	public function store(Request $request)
	{
		$dlr = DB::table('dealers')
		->select('id_dealer')
		->orderBy('id', 'DESC')
		->first();

		$nodlr = substr($dlr->id_dealer, 6);

		$intdlr = (int)$nodlr;
		$intdlr++;
		$nomor = sprintf("%04s", $intdlr);
		$id_dealer = 'DLRJKI'.$nomor;

		$dealer = Dealer::create([
			'id_dealer' => $id_dealer,
			'nama_dealer' => $request->nama_dealer,
			'alamat' => $request->alamat,
			'kota' => $request->kota,
			'provinsi' => $request->provinsi,
			'kontak_person' => $request->kontak_person,
			'no_telp' => $request->no_telp,
		]);

		return redirect()->route('admin.dealer.index')->with('success', 'Data dealer berhasil ditambahkan');


	}

	public function on($id)
	{
		$dealer = Dealer::find($id);
		$dealer->update([
			'status' => 1
		]);

		return back()->with('success', 'Dealer berhasil diAKTIFkan');
	}

	public function off($id)
	{
		$dealer = Dealer::find($id);
		$dealer->update([
			'status' => 0
		]);

		return back()->with('success', 'Dealer berhasil diNON-AKTIFkan');
	}

	public function destroy($id)
	{
		$dealer = Dealer::find($id);
		$dealer->delete();
		return redirect()->route('admin.dealer.index')->with('success', 'Data dealer berhasil dihapus');
	}
}
