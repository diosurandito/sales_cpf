@extends('templates.admin.default')

@section('content')


@php
$bulan = array(
'01' => 'Januari',
'02' => 'Februari',
'03' => 'Maret',
'04' => 'April',
'05' => 'Mei',
'06' => 'Juni',
'07' => 'Juli',
'08' => 'Agustus',
'09' => 'September',
'10' => 'Oktober',
'11' => 'November',
'12' => 'Desember',
);
@endphp


<main id="main-container">

	<!-- Hero -->
	<div class="bg-body-dark">
		<div class="content content-full">
			<div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
				<h1 class="flex-sm-fill h3 my-2">
					Data Rekap Kunjungan Sales
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
		
		<div class="block">
			<div class="block-header" style="background: #b54242;">
				<h2 class="block-title text-white">Data Rekap Kunjungan Sales @if($sales->kode_akses == 'saleslmr_adm1')LLumar @endif @if($sales->kode_akses == 'salescpf_adm1')CPF1 & SUNMASTER @endif @if($sales->kode_akses == 'salesgrb_adm1')GRB @endif</h2>
			</div>
			<div class="block-content block-content-full">
				@csrf
				<div class="row mb-2 mt-0" style="margin-bottom: 5px;">

					<div class="col-2">
						<input type="text" class="js-datepicker form-control" name="from_date" id="from_date" data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd-mm-yyyy" placeholder="Tanggal Awal" autocomplete="off" required>
					</div>
					<div class="col-xs-1 mt-2 text-center align-middle">
						s/d
					</div>
					<div class="col-2">
						<input type="text" class="js-datepicker form-control" name="to_date" id="to_date" data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd-mm-yyyy" placeholder="Tanggal Akhir" autocomplete="off" required>
					</div>
					<div class="col-4">
						<button type="submit" name="filter" id="filter" class="btn btn-warning">Filter</button>
						<button type="button" name="refresh" id="refresh" title="Refresh" class="btn btn-secondary"><i class="fa fa-redo"></i></button>
					</div>
					<div class="col-lg-3"></div>
				</div>
				<table id="tb_sales_rekap2" class="table table-bordered table-striped table-sm" style="font-size: 15px;width: 100%">
					<thead class="thead-dark text-center align-middle">
						<tr>
							<th style="font-size: 13px;" class="align-middle">No</th>
							<th style="font-size: 13px;" class="align-middle">NIK</th>
							<th style="font-size: 13px;" class="align-middle">Nama</th>
							<th style="font-size: 13px;" class="align-middle">Nama Dealer</th>
							<th style="font-size: 13px;" class="align-middle">Alamat</th>
							<th style="font-size: 13px;" class="align-middle">Tanggal Kunjungan</th>
							<th style="font-size: 13px;" class="align-middle">Lokasi Kunjungan</th>
							<!-- <th style="font-size: 13px;" class="align-middle">Aksi</th> -->
						</tr>
					</thead>
					<tbody class="text-center">
					</tbody>
				</table>  

			</div>
		</div>
	</div>

</main>


@endsection