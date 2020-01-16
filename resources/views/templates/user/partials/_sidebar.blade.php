



<nav id="sidebar" aria-label="Main Navigation">
    <!-- Side Header -->
    <div class="content-header bg-white-5">
        <!-- Logo -->
        <a class="font-w600 text-dual" href="">
            <img src="{{ asset('public/assets/media/photos/logo_jki.png') }}" style="width: 30px;">
            <span class="smini-hide">
                <span class="font-w700 font-size-h5">JKI_GRB</span>
            </span>
        </a>
        <!-- END Logo -->


    </div>
    <!-- END Side Header -->

    <!-- Side Navigation -->
    <div class="content-side content-side-full">
        <ul class="nav-main">
            <li class="nav-main-item">
                <a class="nav-main-link @if (Request::is('home')) active @endif" href="{{route('user.home')}}">
                    <i class="nav-main-link-icon si si-speedometer"></i>
                    <span class="nav-main-link-name">Dashboard</span>
                </a>
            </li>
            <li class="nav-main-item">
                <a class="nav-main-link @if (Request::is('rekap-po')) active @endif" href="{{route('user.rekap.index')}}">
                    <i class="nav-main-link-icon far fa-list-alt"></i>
                    <span class="nav-main-link-name">Data PO</span>
                </a>
            </li>

        </ul>

    </div>
    <!-- END Side Navigation -->
</nav>
<!-- END Sidebar -->
