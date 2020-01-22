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
		@if ($message = Session::get('success'))
		<div class="alert alert-success alert-dismissable d-flex" role="alert">
			<div class="flex-00-auto">
				<i class="fa fa-fw fa-check"></i>
			</div>
			<div class="flex-fill ml-3">
				<p class="mb-0">{{ $message }}</p>
			</div>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		@endif
		<div class="block">
			<div class="block-header" style="background: #b54242;">
				<h2 class="block-title text-white">Data Dealer</h2>
				
				<a href="{{ route('admin.dealer.printstkr.all') }}" class="btn btn-warning" title="Cetak Stiker">
					<img src="{{asset('public/assets/media/favicons/printdo.svg')}}" height="23">&nbsp; Print All
				</a>
				<button class="btn btn-light mr-1" data-toggle="modal" data-target="#add_dealer" style="margin-left: 5px">
					<i class="fa fa-fw fa-plus mr-1"></i> Tambah Data
				</button>

			</div>
			
			<div class="block-content block-content-full">
				
				<!-- DataTables init on table by adding .js-dataTable-buttons class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
				<table id="tb_dealer" class="table  table-bordered table-striped" style="font-size: 15px;width:100%;">
					<thead class="thead-dark text-center">
						<tr>
							<th style="font-size: 13px;" class="align-middle">No</th>
							<th style="font-size: 13px;" class="align-middle">ID Dealer</th>
							<th style="font-size: 13px;" class="align-middle">Nama</th>
							<th style="font-size: 13px;" class="align-middle">Alamat</th>
							<th style="font-size: 13px;" class="align-middle">Kota/Kab.</th>
							<th style="font-size: 13px;" class="align-middle">Provinsi</th>
							<th style="font-size: 13px;" class="align-middle">Kontak Person</th>
							<th style="font-size: 13px;" class="align-middle">No Telp</th>
							<th style="font-size: 13px;" class="align-middle">Status</th>
							<th style="font-size: 13px;" class="align-middle">Print</th>
							<th style="font-size: 13px;" class="align-middle">Aksi</th>
						</tr>
					</thead>
					<tbody class="text-center">
						@php($no = 1)
						@foreach($dealer as $data)
						<tr>
							<td>{{$no}}</td>
							<td>{{$data->id_dealer}}</td>
							<td>{{$data->nama_dealer}}</td>
							<td>{{$data->alamat}}</td>
							<td>{{$data->kota}}</td>
							<td>{{$data->provinsi}}</td>
							<td>{{$data->kontak_person}}</td>
							<td>{{$data->no_telp}}</td>
							<td>@if ($data->status == 1) <button type="button" class="btn btn-sm btn-outline-success" title="Aktif"><i class="lg fa fa-check-circle fa-lg"></i></button>@else <button type="button" class="btn btn-sm btn-outline-dark" title="Non-Aktif"><i class="fa fa-times-circle fa-lg"></i></button>@endif</td>
							<td class="text-center">
								<a href="{{ route('admin.dealer.printstkr.id',$data->id) }}" class="btn btn-sm btn-info" target="_blank" title="Cetak Stiker">
									<img src="{{asset('public/assets/media/favicons/printso.svg')}}" width="25" height="25">
								</a>
							</td>
							<td class="text-center">
								<div class="btn-group">
									@if ($data->status == 0)
									<button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#on{{$data->id}}" title="Aktifkan?">
										<i class="fa fa-check"></i>
									</button>
									<button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#edit{{$data->id}}" title="Edit Data">
										<i class="fa fa-pen"></i>
									</button>
									<button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#destroy{{$data->id}}" title="Hapus Data">
										<i class="fa fa-fw fa-trash"></i>
									</button>
									
									@else
									<button type="button" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#off{{$data->id}}" title="Non-aktikan?">
										<i class="fa fa-times"></i>
									</button>
									<button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#edit{{$data->id}}" title="Edit Data">
										<i class="fa fa-pen"></i>
									</button>
									<button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#destroy{{$data->id}}" title="Hapus Data">
										<i class="fa fa-fw fa-trash"></i>
									</button>
									
									@endif
									

								</div>
							</td>
						</tr>
						@php($no++)
						<div class="modal fade" id="on{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin modal-block-vcenter" aria-hidden="true">
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
											<p>Aktifkan Dealer dengan ID Dealer<b>{{$data->id_dealer}}</b> atas nama <b>{{$data->kontak_person}}</b> ?</p>
										</div>
										<form action="{{ route('admin.dealer.on', $data->id) }}" method="post">
											@csrf
											@method('PATCH')
											<div class="block-content block-content-full text-right border-top">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
												<button type="submit" class="btn btn-success text-white">Aktif</button>

											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="off{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin modal-block-vcenter" aria-hidden="true">
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
											<p>Non-aktifkan Dealer dengan ID Dealer<b>{{$data->id_dealer}}</b> atas nama <b>{{$data->kontak_person}}</b> ?</p>
										</div>
										<form action="{{ route('admin.dealer.off', $data->id) }}" method="post">
											@csrf
											@method('PATCH')
											<div class="block-content block-content-full text-right border-top">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
												<button type="submit" class="btn btn-danger text-white">Matikan</button>

											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="destroy{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin modal-block-vcenter" aria-hidden="true">
							<div class="modal-dialog modal-dialog-popin modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="block block-themed block-transparent mb-0">
										<div class="block-header bg-amethyst-dark">
											<h3 class="block-title">Hapus Data Dealer</h3>
											<div class="block-options">
												<button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
													<i class="fa fa-fw fa-times"></i>
												</button>
											</div>
										</div>
										<div class="block-content font-size-sm">
											<p>Anda akan menghapus data dealer dengan ID <b>{{$data->id_dealer}}</b> atas nama <b>{{$data->kontak_person}}</b> ?</p>
										</div>
										<div class="block-content block-content-full text-right border-top">
											<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
											<a href="{{ route('admin.dealer.destroy', $data->id) }}" class="btn btn-danger text-white">Hapus</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal fade" id="edit{{$data->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin" aria-hidden="true">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="block block-themed block-transparent mb-0">
										<div class="block-header" style="background: #b54242;">
											<h3 class="block-title">Ubah Data Dealer ({{$id_dealer}})</h3>
											<div class="block-options">
												<button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
													<i class="fa fa-fw fa-times"></i>
												</button>
											</div>
										</div>
										<div class="block-content font-size-sm">
											<div class="row">
												<div class="col-lg-8 col-xl-12">
													<form action="{{route('admin.dealer.update', $data->id)}}" method="post">
														@csrf
														@method('PATCH')
														<div class="form-group">
															<label for="">Nama Dealer</label><br>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-store-alt"></i>
																	</span>
																</div>
																<input type="text" class="js-maxlength form-control" id="example-group1-input1" name="nama_dealer" value="{{$data->nama_dealer}}" maxlength="100" placeholder="Masukkan Nama Dealer" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
															</div>
														</div>
														<div class="form-group">
															<label for="">Alamat Dealer</label><br>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
																	</span>
																</div>
																<textarea class="js-maxlength form-control" name="alamat" maxlength="150" placeholder="Masukkan Alamat" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>{{$data->alamat}}</textarea>
															</div>
														</div>
														<div class="form-group">
															<label for="">Kota/Kabupaten</label><br>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
																	</span>
																</div>
																<input class="js-maxlength form-control" name="kota" value="{{$data->kota}}" maxlength="40" placeholder="Masukkan Nama Kota/Kabupaten" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
															</div>
														</div>
														<div class="form-group">
															<label for="">Provinsi</label><br>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
																	</span>
																</div>
																<input class="js-maxlength form-control" name="provinsi" value="{{$data->provinsi}}" maxlength="40" placeholder="Masukkan Nama Provinsi" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
															</div>
														</div>

														<div class="form-group">
															<label for="">Kontak Person</label><br>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-user-tie"></i>
																	</span>
																</div>
																<input class="js-maxlength form-control" name="kontak_person" value="{{$data->kontak_person}}" maxlength="60" placeholder="Masukkan Kontak Person" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
															</div>
														</div>
														<div class="form-group">
															<label for="">Nomor Telpon<span class="text-danger">*</span></label><br>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-phone"></i>
																	</span>
																</div>
																<input type="tel" id="no_telp" pattern="\(?(?:\+62|62|0)(?:\d{2,3})?\)?[ .-]?\d{2,4}[ .-]?\d{2,4}[ .-]?\d{2,4}" class="form-control" maxlength="17" name="no_telp" value="{{$data->no_telp}}" placeholder="Masukkan No Telp" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
															</div>
														</div>
														<div class="block-content block-content-full text-right border-top">
															<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
															<button type="submit" class="btn btn-primary text-white">Simpan</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						@endforeach
					</tbody>
				</table>  

			</div>
		</div>
	</div>
	<div class="modal fade" id="add_dealer" tabindex="-1" role="dialog" aria-labelledby="modal-block-popin" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="block block-themed block-transparent mb-0">
					<div class="block-header" style="background: #b54242;">
						<h3 class="block-title">Tambah Data Dealer ({{$id_dealer}})</h3>
						<div class="block-options">
							<button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
								<i class="fa fa-fw fa-times"></i>
							</button>
						</div>
					</div>
					<div class="block-content font-size-sm">
						<div class="row">
							<div class="col-lg-8 col-xl-12">
								<form action="{{route('admin.dealer.store')}}" method="post">
									@csrf
									@method('POST')
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
									<div class="form-group">
										<label for="">Kota/Kabupaten</label><br>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
												</span>
											</div>
											<input class="js-maxlength form-control" name="kota" maxlength="40" placeholder="Masukkan Nama Kota/Kabupaten" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
										</div>
									</div>
									<div class="form-group">
										<label for="">Provinsi</label><br>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-map-marked-alt"></i>
												</span>
											</div>
											<input class="js-maxlength form-control" name="provinsi" maxlength="40" placeholder="Masukkan Nama Provinsi" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
										</div>
									</div>

									<div class="form-group">
										<label for="">Kontak Person</label><br>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-user-tie"></i>
												</span>
											</div>
											<input class="js-maxlength form-control" name="kontak_person" maxlength="60" placeholder="Masukkan Kontak Person" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
										</div>
									</div>
									<div class="form-group">
										<label for="">Nomor Telpon<span class="text-danger">*</span></label><br>
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" style="background-color: #ff000063;"><i class="fa fa-phone"></i>
												</span>
											</div>
											<input type="tel" id="no_telp" pattern="\(?(?:\+62|62|0)(?:\d{2,3})?\)?[ .-]?\d{2,4}[ .-]?\d{2,4}[ .-]?\d{2,4}" class="form-control" maxlength="17" name="no_telp" placeholder="Masukkan No Telp" data-always-show="true" data-warning-class="badge badge-primary" data-limit-reached-class="badge badge-primary" required>
										</div>
									</div>
									<div class="block-content block-content-full text-right border-top">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
										<button type="submit" class="btn btn-primary text-white">Simpan</button>
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