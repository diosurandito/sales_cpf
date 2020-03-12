@extends('templates.admin.default')

@section('content')


<main id="main-container">

	<!-- Hero -->
	<div class="bg-body-dark">
		<div class="content content-full">
			<div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
				<h1 class="flex-sm-fill h3 my-2">
					Data Dealer
				</h1>
				<nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
					<ol class="breadcrumb breadcrumb-alt">
						<li class="breadcrumb-item">Admin</li>
						<li class="breadcrumb-item" aria-current="page">
							<a class="link-fx" href="">Dealer</a>
						</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
	<!-- END Hero -->

	<!-- Page Content -->

	<div class="content">
		<div id="alert_dlr"></div>
		<div class="block">
			<div class="block-header" style="background: #b54242;">
				<h2 class="block-title text-white">Data Dealer</h2>
				
				<a href="{{ route('admin.dealer.printstkr.all') }}" class="btn btn-warning" title="Cetak Stiker" target="_blank">
					<img src="{{asset('public/assets/media/favicons/printdo.svg')}}" height="23">&nbsp; Print All
				</a>
				<button class="btn btn-light mr-1" data-toggle="modal" data-target="#add_dlr_modal" id="add_dlr_btn" style="margin-left: 5px">
					<i class="fa fa-fw fa-plus mr-1"></i> Tambah Data
				</button>

			</div>
			
			<div class="block-content block-content-full">
				
				<!-- DataTables init on table by adding .js-dataTable-buttons class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
				<table id="tb_dealer_2" class="table table-bordered table-striped table-hover table-sm" style="font-size: 15px;width:100%;">
					<thead class="thead-dark text-center">
						<tr>
							<th style="font-size: 13px;" class="align-middle">No</th>
							<th style="font-size: 13px;" class="align-middle">ID Dealer</th>
							<th style="font-size: 13px;" class="align-middle">Nama Dealer</th>
							<th style="font-size: 13px;" class="align-middle text-center">Alamat</th>
							<th style="font-size: 13px;" class="align-middle">Kota/Kab.</th>
							<th style="font-size: 13px;" class="align-middle">Provinsi</th>
							<th style="font-size: 13px;" class="align-middle">Kontak Person</th>
							<th style="font-size: 13px;" class="align-middle">No Telp</th>
							<th style="font-size: 13px;" class="align-middle">Status</th>
							<th style="font-size: 13px;" class="align-middle">Print</th>
							<th style="font-size: 13px;" class="align-middle">Aksi</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>  

			</div>
		</div>
	</div>
	<div class="modal fade" id="add_dlr_modal" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="block block-themed block-transparent mb-0">
					<div class="block-header" style="background: #b54242;">
						<h3 class="block-title">Tambah Data Dealer</h3>
						<div class="block-options">
							<button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
								<i class="fa fa-fw fa-times"></i>
							</button>
						</div>
					</div>
					<div class="block-content font-size-sm">
						<div class="row">
							<div class="col-lg-8 col-xl-12">
								<form method="post" id="add_dlr_form">
									@csrf
									<div class="form-group">
										<label for="">Nama Dealer</label><br>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-store-alt"></i>
												</span>
											</div>
											<input type="text" class="js-maxlength form-control" id="example-group1-input1" name="nama_dealer" maxlength="100" placeholder="Masukkan Nama Dealer" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
										</div>
									</div>
									<div class="form-group">
										<label for="">Alamat Dealer</label><br>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
												</span>
											</div>
											<textarea class="js-maxlength form-control" name="alamat" maxlength="150" placeholder="Masukkan Alamat" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required></textarea>
										</div>
									</div>
									<div class="row">
										<div class="form-group col-6">
											<label for="">Kota/Kabupaten</label><br>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
													</span>
												</div>
												<input class="js-maxlength form-control" name="kota" maxlength="40" placeholder="Masukkan Nama Kota/Kabupaten" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
											</div>
										</div>
										<div class="form-group col-6">
											<label for="">Provinsi</label><br>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
													</span>
												</div>
												<input class="js-maxlength form-control" name="provinsi" maxlength="40" placeholder="Masukkan Nama Provinsi" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
											</div>
										</div>
										
									</div>
									<div class="row">
										<div class="form-group col-6">
											<label for="">Kontak Person</label><br>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-user-tie"></i>
													</span>
												</div>
												<input class="js-maxlength form-control" name="kontak_person" maxlength="60" placeholder="Masukkan Kontak Person" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
											</div>
										</div>
										<div class="form-group col-6">
											<label for="">Nomor Telpon<span class="text-danger">*</span></label><br>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-phone"></i>
													</span>
												</div>
												<input type="tel" id="no_telp" pattern="\+?([ -]?\d+)+|\(\d+\)([ -]\d+)" class="form-control js-maxlength" maxlength="50" name="no_telp" placeholder="Masukkan No Telp" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
											</div>
										</div>
									</div>
									
									<div class="block-content block-content-full text-right border-top">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
										<button type="submit" class="btn btn-info text-dark" id="add_dlr_savebtn">Simpan</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ON Dealer -->
	<div class="modal fade" id="on_modal_dlr" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin modal-block-vcenter" aria-hidden="true">
		<div class="modal-dialog modal-dialog-popin modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="block block-themed block-transparent mb-0">
					<div class="block-header bg-amethyst-dark">
						<h3 class="block-title">Aktifkan Dealer</h3>
						<div class="block-options">
							<button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
								<i class="fa fa-fw fa-times"></i>
							</button>
						</div>
					</div>
					<div class="block-content font-size-sm">
						<p id="on_message_dlr" style="font-size: 17px;"></p>
					</div>
					
					@csrf
					<div class="block-content block-content-full text-right border-top">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
						<button type="submit" class="btn btn-success text-white" id="on_dlr_btn">Aktif</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- OFF Dealer -->
	<div class="modal fade" id="off_modal_dlr" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin modal-block-vcenter" aria-hidden="true">
		<div class="modal-dialog modal-dialog-popin modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="block block-themed block-transparent mb-0">
					<div class="block-header bg-amethyst-dark">
						<h3 class="block-title">Non-Aktifkan Dealer</h3>
						<div class="block-options">
							<button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
								<i class="fa fa-fw fa-times"></i>
							</button>
						</div>
					</div>
					<div class="block-content font-size-sm">
						<p id="off_message_dlr" style="font-size: 17px;"></p>
					</div>
					@csrf
					<div class="block-content block-content-full text-right border-top">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
						<button type="submit" class="btn btn-danger text-white" id="off_dlr_btn">Matikan</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- delete -->
	<div class="modal fade" id="confirm_delete_modal_dlr" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin modal-block-vcenter" aria-hidden="true">
		<div class="modal-dialog modal-dialog-popin modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="block block-themed block-transparent mb-0">
					<div class="block-header" style="background-color: #b12f1d;">
						<h3 class="block-title">Hapus Data Dealer</h3>
						<div class="block-options">
							<button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
								<i class="fa fa-fw fa-times"></i>
							</button>
						</div>
					</div>
					<div class="block-content font-size-sm">
						<p id="delete_message_dlr" style="font-size: 17px;"></p>
					</div>
					<div class="block-content block-content-full text-right border-top">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
						<button type="button" class="btn btn-danger text-white" id="confirm_delete_dlr_btn">Hapus</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- edit -->
	<div class="modal fade" id="edit_modal_dlr" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="block block-themed block-transparent mb-0">
					<div class="block-header" style="background: #ff711c;">
						<h3 class="block-title">Ubah Data Dealer</h3>
						<div class="block-options">
							<button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
								<i class="fa fa-fw fa-times"></i>
							</button>
						</div>
					</div>
					<div class="block-content font-size-sm">
						<div class="row">
							<div class="col-lg-8 col-xl-12">
								<form method="post" id="edit_dlr_form">
									@csrf
									<div class="form-group">
										<label for="">Nama Dealer</label><br>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-store-alt"></i>
												</span>
											</div>
											<input type="text" class="js-maxlength form-control" id="nama_dealer_edit" name="nama_dealer_edit" maxlength="100" placeholder="Masukkan Nama Dealer" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
										</div>
									</div>
									<div class="form-group">
										<label for="">Alamat Dealer</label><br>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
												</span>
											</div>
											<textarea class="js-maxlength form-control" id="alamat_edit" name="alamat_edit" maxlength="150" placeholder="Masukkan Alamat" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required></textarea>
										</div>
									</div>
									<div class="row">
										<div class="form-group col-6">
											<label for="">Kota/Kabupaten</label><br>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
													</span>
												</div>
												<input class="js-maxlength form-control" id="kota_edit" name="kota_edit" maxlength="40" placeholder="Masukkan Nama Kota/Kabupaten" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
											</div>
										</div>
										<div class="form-group col-6">
											<label for="">Provinsi</label><br>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
													</span>
												</div>
												<input class="js-maxlength form-control" id="provinsi_edit" name="provinsi_edit" maxlength="40" placeholder="Masukkan Nama Provinsi" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group col-6">
											<label for="">Kontak Person</label><br>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-user-tie"></i>
													</span>
												</div>
												<input class="js-maxlength form-control" id="kontak_person_edit" name="kontak_person_edit" maxlength="60" placeholder="Masukkan Kontak Person" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
											</div>
										</div>
										<div class="form-group col-6">
											<label for="">Nomor Telpon<span class="text-danger">*</span></label><br>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-phone"></i>
													</span>
												</div>
												<input type="tel" id="no_telp_edit" pattern="\+?([ -]?\d+)+|\(\d+\)([ -]\d+)" class="form-control js-maxlength" maxlength="50" name="no_telp_edit" placeholder="Masukkan No Telp" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
											</div>
										</div>
									</div>
									<div class="block-content block-content-full text-right border-top">
										<input type="hidden" name="hidden_id_dlr" id="hidden_id_dlr">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
										<button type="submit" id="edit_dlr_savebtn" class="btn btn-warning text-dark">Simpan</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</main>
@endsection