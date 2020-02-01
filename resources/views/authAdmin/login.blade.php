<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>Login CPF1 SUNMASTER</title>
  
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <meta name="robots" content="noindex, nofollow">
  
  <link rel="shortcut icon" sizes="32x32" href="{{ asset('public/assets/media/photos/salesapp.png') }}">
  <link rel="stylesheet" href="{{ asset('public/adminLTE/bootstrap/css/bootstrap.min.css') }}">
  <link rel="stylesheet" href="{{ asset('public/adminLTE/dist/css/AdminLTE.min.css') }}">
  <link rel="stylesheet" href="{{ asset('public/adminLTE/plugins/iCheck/square/blue.css') }}">


  <style>
    .adm-image {
      background-image: url("{{ asset('public/images/bg/redwhite.jpg') }}");
      background-color: #cccccc;
      height: 536px;
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      position: relative;
    }

  </style>
</head>

<body class="hold-transition login-page adm-image">
  <div class="login-box">


    <div class="login-box-body" style="background: #02020242;">
      <div class="login-logo">
        <img src="{{ asset('public/assets/media/photos/cpf1_sm.png') }}" width="200">
        <img src="{{ asset('public/assets/media/photos/sunmaster_sm.png') }}" width="200">
      </div>
      <p class="login-box-msg">LOGIN ADMIN</p>
      @if(\Session::has('alert'))

      <div class="alert alert-danger alert-dismissable d-flex" role="alert">
        <div class="flex-00-auto">
         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="flex-fill ml-3">
        <p class="mb-0">{{Session::get('alert')}}</p>
      </div>

    </div>
    @endif
    @if(\Session::has('alertunauth'))

    <div class="alert alert-warning alert-dismissable d-flex" role="alert">
      <div class="flex-00-auto">
       <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="flex-fill ml-3">
      <p class="mb-0">{{Session::get('alertunauth')}}</p>
    </div>

  </div>
  @endif

  <form action="{{route('admin.login')}}" method="post">
    @csrf
    <div class="form-group has-feedback">
      <input type="text" class="form-control" placeholder="Username" name="username" value="{{ old('username') }}" required autofocus>
      <span class="glyphicon glyphicon-user form-control-feedback"></span>

    </div>
    <div class="form-group has-feedback">
      <input type="password" class="form-control" placeholder="Password" name="password" id="password" required>
      <span class="glyphicon glyphicon-lock form-control-feedback"></span>
    </div>

    <div class="row">
      <div class="col-md-8">
        <div class="checkbox">
          <label>
            <input type="checkbox" style="width: 1,25rem; height: 1,25rem;" onclick="showPassword()"> <a style="color: black;">Tampilkan Password</a>
          </label>
        </div>
      </div>

      <div class="col-xs-4">
        <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
      </div>

    </div>
  </form>

</div>

</div>

<script src="{{ asset('public/adminLTE/plugins/jQuery/jquery-2.2.3.min.js') }}"></script>
<script src="{{ asset('public/adminLTE/bootstrap/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('public/adminLTE/plugins/iCheck/icheck.min.js') }}"></script>
<!-- <script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' 
    });
  });

</script> -->
<script type="text/javascript">
  function showPassword() {
    var x = document.getElementById("password");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }
</script>
</body>
</html>
