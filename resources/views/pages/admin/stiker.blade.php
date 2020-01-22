@extends('templates.admin.default')

@section('content')
<main id="main-container">
	<!-- Hero -->
	<div class="bg-body-light d-print-none">
		<div class="content content-full">
			<div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center">
				<h1 class="flex-sm-fill h3 my-2">
					Cetak Stiker<small class="d-block d-sm-inline-block mt-2 mt-sm-0 font-size-base font-w400 text-muted"></small>
				</h1>
				<nav class="flex-sm-00-auto ml-sm-3" aria-label="breadcrumb">
					<ol class="breadcrumb breadcrumb-alt">
						<li class="breadcrumb-item">Admin</li>
						<li class="breadcrumb-item" aria-current="page">
							<a class="link-fx" href="">Cetak Stiker</a>
						</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
	<!-- END Hero -->
	<div class="content content-boxed">
		<!-- Invoice -->
		<div class="block">
			<div class="block-header">
				<h3 class="block-title">Dealer JKI</h3>
				<div class="block-options">
					<!-- Print Page functionality is initialized in Helpers.print() -->
					<button type="button" class="btn-block-option" onclick="One.helpers('print');">
						<i class="si si-printer mr-1"></i> Print Sticker
					</button>
				</div>
			</div>
			<div class="block-content">
				<div class="p-sm-4 p-xl-7">
					<div class="row">
						@foreach($dealer as $data)
						<div class="card mb-3 mr-3" style="width: 12rem; border-style: solid;border-width: 5px; border-color: #656565;">
							<div class="card-header text-center">{!! QrCode::size(144)->backgroundColor(255,131,0)->margin(0)->generate($data->id_dealer); !!}
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item text-center text-black"><b>{{$data->id_dealer}}</b></li>
								<li class="list-group-item text-center text-black" style="font-size: 14px;">{{$data->nama_dealer}}</li>
								<li class="list-group-item text-center text-black" style="font-size: 12px;">{{$data->alamat}}</li>

							</ul>
						</div>
						@endforeach

					</div>
				</div>
			</div>
		</div>
		<!-- END Invoice -->

	</main>
	@endsection