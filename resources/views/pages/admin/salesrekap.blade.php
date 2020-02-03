@extends('templates.admin.default')

@section('content')

<!-- @php
function tanggal_indo($tanggal)
{
	$bulan = array (1 =>   'Januari',
	'Februari',
	'Maret',
	'April',
	'Mei',
	'Juni',
	'Juli',
	'Agustus',
	'September',
	'Oktober',
	'November',
	'Desember'
	);
	$split = explode('-', $tanggal);
	return $split[2] . ' ' . $bulan[ (int)$split[1] ] . ' ' . $split[0];
}
@endphp -->

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
		@if ($message = Session::get('failed'))
		<div class="alert alert-danger alert-dismissable d-flex" role="alert">
			<div class="flex-00-auto">
				<i class="fa fa-fw fa-times"></i>
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
				@if(Request::is('sales-rekap'))
				<h2 class="block-title text-white">Data Rekap Kunjungan Sales</h2> <h2 class="block-title text-white" style="text-align: right;"><img src="{{asset('public/assets/media/favicons/calendar.svg')}}" width="22" height="22"> &nbsp;@php echo $bulan[date('m')] .' '. date('Y'); @endphp</h2>
				@else
				<h2 class="block-title text-white">Data Rekap Kunjungan Sales</h2>
				@endif


			</div>
			<div class="block-content block-content-full">
				<form action="{{ route('admin.salesrekap.index.filter')}}" method="post">
					@csrf
					@method('POST')
					<div class="row mb-2 mt-0" style="margin-bottom: 5px;">
						
						<div class="col-2">
							<input type="text" class="js-datepicker form-control" name="from_date" id="from_date" @if(empty($fd)) value="" @else value="{{$fd}}" @endif data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd-mm-yyyy" placeholder="Tanggal Awal" autocomplete="off" required>
						</div>
						<div class="col-xs-1 mt-2 text-center align-middle">
							s/d
						</div>
						<div class="col-2">
							<input type="text" class="js-datepicker form-control" name="to_date" id="to_date" @if(empty($td)) value="" @else value="{{$td}}" @endif data-week-start="1" data-autoclose="true" data-today-highlight="true" data-date-format="dd-mm-yyyy" placeholder="Tanggal Akhir" autocomplete="off" required>
						</div>
						<div class="col-4">
							<button type="submit" name="filter" id="filter" class="btn btn-warning">Filter</button>
							<a href="{{ route('admin.salesrekap.index')}}" name="refresh" id="refresh" title="Refresh" class="btn btn-secondary"><i class="fa fa-redo"></i></a>
						</div>
						<div class="col-lg-3"></div>

					</div>
				</form>

				<!-- DataTables init on table by adding .js-dataTable-buttons class, functionality is initialized in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
				<table id="tb_sales_rekap" class="table table-bordered table-striped" width="1015px">
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
						@php($no = 1)
						@foreach($salesrkp as $data)
						<tr>
							<td>{{$no}}</td>
							<td>{{$data->nik}}</td>
							<td>{{$data->nama}}</td>
							<td>@if($data->id_dealer == 'DLRJKI0000') {{$data->nm_tempat}} @else {{$data->nama_dealer}} @endif</td>
							<td>@if($data->id_dealer != 'DLRJKI0000') {{$data->d_alamat}} @else {{$data->alamat}} @endif</td>
							<td>{{date('d-m-Y H:i', strtotime($data->tgl_kunjungan))}}</td>
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