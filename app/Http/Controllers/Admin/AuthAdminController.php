<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\SalesAdmin;
use Illuminate\Validation\Rule;
use DB;

class AuthAdminController extends Controller
{
	public function __construct()
	{
		$this->middleware('guest:admin')->except('logoutAdmin');
	}


	public function showLoginForm()
	{
		return view('authAdmin.login');
	}

	public function login(Request $request){
		$this->validate($request,[
			'password' => 'min:1'
		]);

		$credential = [
			'username' => $request->username,
			'password' => $request->password,

		];

		if (Auth::guard('admin')->attempt($credential, $request->member)){
			$admin = SalesAdmin::find(Auth::guard('admin')->user()->no);
			
			$sales = DB::table('sales_admins')
			->select('*')
			->where('nik', '=', $admin->nik)
			->first();
			if (!empty($sales->nik)) {
				if ($sales->kode_akses === 'salescpf_adm1' || 'saleslmr_adm1' || 'salesgrb_adm1') {
					return redirect()->route('admin.home');
				}else{
					Auth::guard('admin')->logout();
					return redirect()->back()->withInput($request->only('username', 'remember'))->with('alertunauth','Maaf Akun Anda Tidak Mempunyai Hak Akses.');

				}

				//return dd($sales->kode_akses);

				
			}else{
				Auth::guard('admin')->logout();
				return redirect()->back()->withInput($request->only('username', 'remember'))->with('alertunauth','Maaf Akun Anda Tidak Mempunyai Hak Akses.');

			}
			
			
			// return redirect()->route('admin.home'); 

		}
		return redirect()->back()->withInput($request->only('username', 'remember'))->with('alert','Username atau Password Salah, Silahkan Coba Lagi.');


	}

	public function logoutAdmin(){
		Auth::guard('admin')->logout();
		return redirect()->route('admin.login');
	}
}
