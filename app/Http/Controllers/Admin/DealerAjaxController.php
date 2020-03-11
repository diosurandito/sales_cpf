<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DataTables;
use App\Dealer;
use Validator;
use Auth;
use DB;

class DealerAjaxController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth:admin');
	}

	public function index(Request $request)
	{
		if($request->ajax())
		{
			$data = Dealer::latest()
			->where('id_dealer', '!=', 'DLRJKI0000')
			->orderBy('id', 'DESC')
			->get();
			return DataTables::of($data)
			->addIndexColumn()
			->addColumn('status', function($data){
				if ($data->status == 1) {
					$status = '<button type="button" class="btn btn-sm btn-outline-success" style="cursor: default;" title="Aktif"><i class="lg fa fa-check-circle fa-lg"></i></button>';
				}else{
					$status = '<button type="button" class="btn btn-sm btn-outline-dark" style="cursor: default;" title="Non-Aktif"><i class="fa fa-times-circle fa-lg"></i></button>';
				}
				return $status;
			})
			->addColumn('print', function($data){
				$print = '<a href="'.route('admin.dealer.printstkr.id', $data->id).'" class="btn btn-sm btn-info" target="_blank" title="Cetak Stiker"><img src="'.asset('public/assets/media/favicons/printso.svg').'" width="22" height="22"></a>';
				
				return $print;
			})
			->addColumn('aksi', function($data){
				if ($data->status == 0) {
					$aksi = '<div class="btn-group"><button type="button" class="on_dlr btn btn-sm btn-success" data-toggle="modal" data-target="#on_modal_dlr" name="on_modal_dlr" id="'.$data->id.'" id_dealer="'.$data->id_dealer.'" nama_dealer="'.$data->nama_dealer.'" title="Aktifkan?"><i class="fa fa-check"></i></button>
					<button type="button" class="edit_dlr btn btn-sm btn-warning" data-toggle="modal" data-target="#edit_modal_dlr" name="edit_modal_dlr" id="'.$data->id.'" id_dealer="'.$data->id_dealer.'" nama_dealer="'.$data->nama_dealer.'" title="Edit Data"><i class="fa fa-pen"></i>
					</button>
					<button type="button" class="delete_dlr btn btn-sm btn-danger" data-toggle="modal" data-target="#destroy_modal_dlr" name="confirm_delete_modal_dlr" id="'.$data->id.'" id_dealer="'.$data->id_dealer.'" nama_dealer="'.$data->nama_dealer.'" title="Hapus Data"><i class="fa fa-fw fa-trash"></i>
					</button></div>';
				}else{
					$aksi = '<div class="btn-group"><button type="button" class="off_dlr btn btn-sm btn-secondary" data-toggle="modal" data-target="#off_modal_dlr" name="off_modal_dlr" id="'.$data->id.'" id_dealer="'.$data->id_dealer.'" nama_dealer="'.$data->nama_dealer.'" title="Non-aktikan?"><i class="fa fa-times"></i></button>
					<button type="button" class="edit_dlr btn btn-sm btn-warning" data-toggle="modal" data-target="#edit_modal_dlr" name="edit_modal_dlr" id="'.$data->id.'" id_dealer="'.$data->id_dealer.'" nama_dealer="'.$data->nama_dealer.'" title="Edit Data"><i class="fa fa-pen"></i>
					</button>
					<button type="button" class="delete_dlr btn btn-sm btn-danger" data-toggle="modal" data-target="#confirm_delete_modal_dlr" name="destroy_modal_dlr" id="'.$data->id.'" id_dealer="'.$data->id_dealer.'" nama_dealer="'.$data->nama_dealer.'" title="Hapus Data"><i class="fa fa-fw fa-trash"></i>
					</button></div>';
				}
				return $aksi;
			})
			->rawColumns(['status', 'print', 'aksi'])
			->make(true);
		}

		return view('pages.admin.dealer2');

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
		
		$form_data = array(
			'id_dealer' => $id_dealer,
			'nama_dealer' => $request->nama_dealer,
			'alamat' => $request->alamat,
			'kota' => $request->kota,
			'provinsi' => $request->provinsi,
			'kontak_person' => $request->kontak_person,
			'no_telp' => $request->no_telp,
		);

		Dealer::create($form_data);

		return response()->json(['success' => 'Data Dealer Berhasil Ditambahkan.']);
	}

	public function edit($id)
	{
		if(request()->ajax())
		{
			$data = Dealer::findOrFail($id);
			return response()->json(['result' => $data]);
		}
	}

	public function update(Request $request)
	{
		$form_data = array(
			'nama_dealer' => $request->nama_dealer_edit,
			'alamat' => $request->alamat_edit,
			'kota' => $request->kota_edit,
			'provinsi' => $request->provinsi_edit,
			'kontak_person' => $request->kontak_person_edit,
			'no_telp' => $request->no_telp_edit,
		);

		Dealer::whereId($request->hidden_id_dlr)->update($form_data);

		return response()->json(['success_edit' => 'Data Dealer Berhasil Diubah.']);
	}

	public function destroy($id)
	{
		$data = Dealer::findOrFail($id);
		$data->delete();
		return response()->json(['success' => 'Data Dealer Berhasil Dihapus.']);
	}
}
