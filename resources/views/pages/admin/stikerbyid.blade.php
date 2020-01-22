<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>Sticker Dealer {{$data->id_dealer}}</title>

	<link rel="shortcut icon" sizes="32x32" href="{{ asset('public/assets/media/photos/logo_jki.png') }}">
	<link rel="icon" type="image/png" sizes="192x192" href="{{ asset('public/assets/media/photos/logo_jki.png') }}">
	<link rel="apple-touch-icon" sizes="180x180" href="{{ asset('public/assets/media/photos/logo_jki.png') }}">
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
	<link rel="stylesheet" href="{{asset('public/css/paper.css')}}">

	<style>@page { size: A4 }</style>
	<style type="text/css">
		body {
			margin-top: 0mm;
			margin-bottom: 0mm;
			margin-right: 0mm;
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
			<div class="p-sm-4 p-xl-7">
				<div class="row">
					<div class="card mb-3 mr-3" style="width: 12rem; border-style: solid;border-width: 5px; border-color: #656565;">
						<div class="card-header text-center">{!! QrCode::size(144)->backgroundColor(255,131,0)->margin(0)->generate($data->id_dealer); !!}
						</div>
						<ul class="list-group list-group-flush">
							<li class="list-group-item text-center text-black"><b>{{$data->id_dealer}}</b></li>
							<li class="list-group-item text-center text-black" style="font-size: 14px;">{{$data->nama_dealer}}</li>
							<li class="list-group-item text-center text-black" style="font-size: 12px;">{{$data->alamat}}</li>

						</ul>
					</div>
				</div>

				<!-- Footer -->
					<!-- <p class="font-size-sm text-muted text-center py-3 my-3 border-top">
						Thank you very much for doing business with us. We look forward to working with you again!
					</p> -->
					<!-- END Footer -->
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