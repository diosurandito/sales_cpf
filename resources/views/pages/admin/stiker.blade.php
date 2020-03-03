<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<meta name="robots" content="noindex, nofollow">

	<title>Sticker Dealer</title>

	<link rel="shortcut icon" sizes="32x32" href="{{ asset('public/images/logo/logo_jki.png') }}">
	<!-- END Icons -->
	<link rel="stylesheet" type="text/css" href="{{ asset('public/assets/bs4/css/bootstrap.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/assets/bs4/css/dataTables.bootstrap4.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/assets/bs4/css/fixedColumns.bootstrap4.min.css')}}">
	<!-- Stylesheets -->
	<!-- Page JS Plugins CSS -->


	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400italic,600,700%7COpen+Sans:300,400,400italic,600,700">
	<link rel="stylesheet" id="css-main" href="{{ asset('public/assets/css/oneui.min.css') }}">

	<script src="{{ asset('public/assets/js/oneui.core.min.js') }}"></script>

	<script src="{{ asset('public/assets/js/oneui.app.min.js') }}"></script>
	<!-- <link rel="stylesheet" href="{{asset('public/css/paper.css')}}"> -->

	<style>@page { size: A4 }</style>
	<style type="text/css">
		body {
			margin-top: 3mm;
			/*margin-bottom: 14mm;*/
			margin-right: 3mm;
			margin-left: 4mm;
		}
	</style>

</head>
<body class="A4" onload="window.print()">

	<!-- Invoice -->
	<!-- <div class="block"> -->
		<!-- <div class="block-header">
			<div class="block-options"> -->
				<!-- Print Page functionality is initialized in Helpers.print() -->
				<!-- <button type="button" class="btn-block-option" onclick="One.helpers('print');">
					<i class="si si-printer mr-1"></i> Print Sticker
				</button>
			</div>
		</div> -->
		<!-- <div class="block-content"> -->
			<div class="col-lg-12">
				<div class="row">
					@foreach($dealer as $data)
					<div class="col-lg-2 mb-3 mt-3" style="margin-right: 0px;">
						<div class="card mr-0" style="width: 12rem;height: 27rem;border-style: solid;border-width: 5px; border-color: #656565;">
							<div class="card-header text-center">{!! QrCode::size(144)->backgroundColor(255,131,0)->margin(0)->generate($data->id_dealer); !!}
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item text-center text-black"><b>{{$data->id_dealer}}</b></li>
								<li class="list-group-item text-center text-black" style="font-size: 14px;">{{$data->nama_dealer}}</li>
								<li class="list-group-item text-center text-black" style="font-size: 12px;">{{$data->alamat}}</li>

							</ul>
						</div>
					</div>
					
					@endforeach

				</div>
			</div>
			<!-- </div> -->
			<!-- </div> -->
			<!-- END Invoice -->



			<script type="text/javascript" src="{{ asset('public/assets/bs4/js/jquery.dataTables.min.js')}}"></script>
			<script type="text/javascript" src="{{ asset('public/assets/bs4/js/dataTables.bootstrap4.min.js')}}"></script>
			<script type="text/javascript" src="{{ asset('public/assets/bs4/js/dataTables.fixedColumns.min.js')}}"></script>

			<script src="{{ asset('public/assets/js/plugins/jquery-validation/jquery.validate.min.js') }}"></script>
			<script src="{{ asset('public/assets/js/plugins/jquery-validation/additional-methods.js') }}"></script>

			<!-- Page JS Helpers (Select2 plugin) -->


			<!-- Page JS Code -->
			<script src="{{ asset('public/assets/js/pages/be_forms_validation.min.js') }}"></script>

			<!-- Page JS Plugins -->
			<script src="{{ asset('public/assets/js/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js') }}"></script>
			<script src="{{ asset('public/assets/js/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js') }}"></script>
			<script src="{{ asset('public/assets/js/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js') }}"></script>
			<script src="{{ asset('public/assets/js/plugins/select2/js/select2.full.min.js') }}"></script>
			<script src="{{ asset('public/assets/js/plugins/jquery.maskedinput/jquery.maskedinput.min.js') }}"></script>
			<script src="{{ asset('public/assets/js/plugins/ion-rangeslider/js/ion.rangeSlider.min.js') }}"></script>
			<script src="{{ asset('public/assets/js/plugins/dropzone/dropzone.min.js') }}"></script>

			<script>jQuery(function(){ One.helpers(['datepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider']); });</script>
			<script src="{{ asset('public/assets/js/plugins/jquery-validation/jquery.validate.min.js') }}"></script>
			<script src="{{ asset('public/assets/js/plugins/jquery-validation/additional-methods.js') }}"></script>
			<!-- Page JS Code -->
			<script src="{{ asset('public/assets/js/pages/be_forms_validation.min.js') }}"></script>

			<script src="{{ asset('public/assets/js/plugins/jquery-validation/localization/messages_id.js') }}"></script>
		</body>
		</html>