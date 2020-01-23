@extends('templates.admin.default')

@section('content')


<main id="main-container">

	<!-- Hero -->
	<div class="bg-body-dark">
		<div class="content content-full">
			<div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
				<h1 class="flex-sm-fill h3 my-2">
					Data Rekap Kunjungan Sales CPF1
				</h1>
				<nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
					<ol class="breadcrumb breadcrumb-alt">
						<li class="breadcrumb-item">Admin</li>
						<li class="breadcrumb-item" aria-current="page">
							<a class="link-fx" href="">Rekap Sales</a>
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
				<h2 class="block-title text-white">Data Rekap Kunjungan Sales</h2>
				
			</div>
			<div class="block-content block-content-full">
				<form action="{{ route('admin.salesrekap.index.filter')}}" method="post">
					@csrf
					@method('POST')
					<div class="row mb-2 mt-0" style="margin-bottom: 5px;">
						
						<div class="col-2">
							<input type="text" class="js-datepicker form-control" name="from_date" id="from_date" data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd-mm-yyyy" placeholder="Tanggal Awal" required>
						</div>
						<div class="col-xs-1 mt-2 text-center align-middle">
							s/d
						</div>
						<div class="col-2">
							<input type="text" class="js-datepicker form-control" name="to_date" id="to_date" data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd-mm-yyyy" placeholder="Tanggal Akhir" required>
						</div>
						<div class="col-4">
							<button type="submit" name="filter" id="filter" class="btn btn-warning">Filter</button>
							<button type="button" name="refresh" id="refresh" title="Refresh" class="btn btn-secondary"><i class="fa fa-redo"></i></button>
						</div>
						<div class="col-lg-3"></div>
						
					</div>
				</form>
				
				<!-- DataTables init on table by adding .js-dataTable-buttons class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
				<table id="tb_sales_rekap" class="table table-bordered table-striped" width="1015px">
					<thead class="thead-dark text-center align-middle">
						<tr>
							<th style="font-size: 13px;" class="align-middle">ID</th>
							<th style="font-size: 13px;" class="align-middle">NIK</th>
							<th style="font-size: 13px;" class="align-middle">ID Dealer</th>
							<th style="font-size: 13px;" class="align-middle">Nama Dealer</th>
							<th style="font-size: 13px;" class="align-middle">Tanggal Kunjungan</th>
							<th style="font-size: 13px;" class="align-middle">Lokasi Kunjungan</th>
							<!-- <th style="font-size: 13px;" class="align-middle">Aksi</th> -->
						</tr>
					</thead>
					<tbody class="text-center">
						@php($no = 1)
						@foreach($salesrkp as $data)
						<tr>
							<td>{{$no}}</td>
							<td>{{$data->nik}}</td>
							<td>{{$data->id_dealer}}</td>
							<td>{{$data->nama_dealer}}</td>
							<td>{{date('d/m/Y', strtotime($data->tgl_kunjungan))}}</td>
							<td><a href="https://maps.google.com/?q={{$data->lat}},{{$data->lng}}" target="_blank">
								<img src="{{asset('public/assets/media/favicons/map.svg')}}" width="30" height="30" title="Lihat lokasi">
							</a></td>
							
						</tr>
						@php($no++)
						
						@endforeach
					</tbody>
				</table>  

			</div>
		</div>
	</div>
	
</main>


@endsection