



<nav id="sidebar" aria-label="Main Navigation">
    <!-- Side Header -->
    <div class="content-header" style="background-color: #f3f3f3c7;padding-left: 12px;">
        <!-- Logo -->
        <a class="font-w600 text-dual" href="">
            <img src="{{ asset('public/images/logo/logo_jki.png') }}" style="width: 35px;">
            <span class="smini-hide">
                <span class="font-w700 font-size-h5 text-dark">&nbsp;Sistem RKS JKI</span>
            </span>
        </a>
        <!-- END Logo -->


    </div>
    <!-- END Side Header -->

    <!-- Side Navigation -->
    <div class="content-side content-side-full">
        <ul class="nav-main">
            <li class="nav-main-item">
                <a class="nav-main-link @if (Request::is('home')) active @endif" href="{{route('admin.home')}}">
                    <i class="nav-main-link-icon si si-speedometer"></i>
                    <span class="nav-main-link-name">Dashboard</span>
                </a>
            </li>
            <li class="nav-main-item">
                <a class="nav-main-link @if (Request::is('dealer')) active @elseif (Request::is('print-sticker')) active @endif" href="{{route('admin.dealer.index')}}">
                    <i class="nav-main-link-icon fa fa-store-alt"></i>
                    <span class="nav-main-link-name">Dealer</span>
                </a>
            </li>
            <li class="nav-main-item">
                <a class="nav-main-link @if (Request::is('dealer-ajax')) active @elseif (Request::is('print-sticker')) active @endif" href="{{route('admin.dealer_ajax.index')}}">
                    <i class="nav-main-link-icon fa fa-store-alt"></i>
                    <span class="nav-main-link-name">Dealer Ajax</span>
                </a>
            </li>
            <li class="nav-main-item">
                <a class="nav-main-link @if (Request::is('sales-rekap')) active @elseif(Request::is('sales-rekap/filter')) active @endif" href="{{route('admin.salesrekap.index')}}">
                    <i class="nav-main-link-icon fa fa-business-time"></i>
                    <span class="nav-main-link-name">Rekap Kunjungan</span>
                </a>
            </li>

            <!-- <li class="nav-main-item">
                <a class="nav-main-link @if (Request::is('print-sticker')) active @endif" href="{{route('admin.dealer.printstkr.all')}}">
                    <i class="nav-main-link-icon fa fa-qrcode"></i>
                    <span class="nav-main-link-name">Cetak Stiker</span>
                </a>
            </li> -->
            <!--  -->

        </ul>

    </div>
    <!-- END Side Navigation -->
</nav>
<!-- END Sidebar -->
