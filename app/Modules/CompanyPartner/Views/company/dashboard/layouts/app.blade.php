<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Καλωσορίσατε στo MALL Υπηρεσιών Diaskedazw">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Title -->
    <title>Καλωσορίσατε στo MALL Υπηρεσιών Diaskedazw!!</title>

    <!-- Favicon -->
    <link rel="icon" href="{{ asset('img/core-img/favicon (1).ico') }}">    
    <!-- Core Stylesheet -->
    
    <!-- argon assets -->
    <!-- Icons -->
    <link href="{{ asset( 'assets_bootstrap4/vendor/nucleo/css/nucleo.css' ) }}" rel="stylesheet">
    <link href="{{ asset( 'assets_bootstrap4/vendor/@fortawesome/fontawesome-free/css/all.min.css' ) }}" rel="stylesheet">
    <link href="{{ asset( 'css/forms.less.css') }}" rel="stylesheet">
    <link href="{{ asset( 'css/vendor-prefixes.less.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/upload/jquery.fileupload.css')}}">
    
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link type="text/css" href="{{ asset( 'css/compiled-4.7.4.min.css' ) }}" rel="stylesheet">
    <link rel='stylesheet' href="{{ asset('plugins/owl-carousel/css/owl.carousel.css') }}">
    <link rel='stylesheet' href="{{ asset('plugins/owl-carousel/css/owl.theme.default.css') }}">

    <link rel="stylesheet" href="{{ asset('style.css') }}">

    <!-- Notifications part -->
    <link rel="stylesheet" href="{{ asset('plugins/notifications/style.css') }}" />

    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.1/mapbox-gl.css' rel='stylesheet' />
    <link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v2.1.0/mapbox-gl-geocoder.css' type='text/css' />
    <link rel='stylesheet' href="{{ asset('plugins/mapbox/my-own-mapbox.css') }}" type="text/css" />
    <link href='{{ asset("css/chat-component/chat-component.css") }}' rel='stylesheet'>

    @stack('external-styles')
</head>

<style>

@import url(https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.3/css/mdb.min.css);

.uza-portfolio-area{
  background-color:#eee;
}

.main-header-area .classy-nav-container{
  background-color:#fff;
}
.collapse.navbar-collapse{
  width: 250px;
}

.m-stack__item.m-brand{
  width: 250px;
}


.card{
  -webkit-box-shadow: 0px 1px 15px 1px rgba(69,65,78,0.08);
  box-shadow: 0px 1px 15px 1px rgba(69,65,78,0.08);
  background-color: #fff;
  border: 0px solid;
}

.card-header{
  border-bottom: 1px solid #ebedf2;
    border-bottom-width: 1px;
    border-bottom-style: solid;
    border-bottom-color: rgb(235, 237, 242);
  background-color: #fff;
  color: #555;
  font-weight: 700;
}

@media only screen and (max-width: 767px)
{
  .classy-navbar-toggler{
    display: block !important;
  }
}
#nav{
  margin-right: 80px;
}
@media only screen and (max-width: 767px){
  #nav{
    margin-right: 0px;
  }
  
}
</style>




<body class='m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--fixed m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default' style='padding-right: 0px !important;'>
    <!-- Preloader -->
    <div id="preloader">
        <div class="wrapper">
            <div class="cssload-loader"></div>
        </div>
    </div>



  <div class='main-content' style='height:100%;'>
    <!-- ***** Top Search Area Start ***** -->
    <div class="top-search-area">
        <!-- Search Modal -->
        <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <!-- Close Button -->
                        <button type="button" class="btn close-btn" data-dismiss="modal"><i class="fa fa-times"></i></button>
                        <!-- Form -->
                        <form action="index.html" method="post">
                            <input type="search" name="top-search-bar" class="form-control" placeholder="Search and hit enter...">
                            <button type="submit">ΑΝΑΖΗΤΗΣΗ</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Top Search Area End ***** -->
      <header class="header-area">
        <!-- Main Header Start -->
        <div class="main-header-area">
            <div class="classy-nav-container breakpoint-off">
                <!-- Classy Menu -->
                <nav class="classy-navbar justify-content-between" id="uzaNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="{{ route('homepage') }}">
                        <h5>Diask<img src="{{ asset('img/diask-img/ellinsds.png') }}" width="13" height="9" alt="ΕΛΛΗΝ" />da<span>zw</span> </h5>
                    </a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul id="nav" >
                                  

                                @auth
                                 <li>
                                    <a>
                                        <i class="fas fa-bell" style='font-size: 12px; color: rgb(255, 201, 14);'></i> Ειδοποιήσεις
                                    </a>
                                    <ul class="dropdown" style='width: 400px;' id="notifications">                                      
                                    
                                    </ul>
                                </li>
                                @endauth
                                <li>
                                      <a href="{{ route('homepage') }}">
                                          <i class="fa fa-home" style="font-size:16px; color:orange;"></i>  Αρχική
                                      </a>
                                    </li>
                                <li>
                                  <a href='#'>  <i class="fa fa-bars" style="font-size: 13px; color: green;"></i> Μενού</a>
                                  <ul class="dropdown">
                                    <li>
                                      <a class="nav-link waves-effect waves-light" href="{{ route('company.dashboard.home') }}">
                                          <i class="fas fa-tv text-primary"></i> Γενικές Πληροφορίες
                                      </a>
                                    </li>
                                    <li>
                                      <a class="nav-link waves-effect waves-light" href="{{ route('company.dashboard.upload') }}">
                                        <i class="fas fa-upload text-orange"></i> Πρόσθεση Υλικού
                                      </a>
                                    </li>
                                    <li>
                                      <a class="nav-link waves-effect waves-light" href="{{ route('company.dashboard.articles') }}">
                                        <i class="fas fa-newspaper text-red"></i> Άρθρα
                                      </a>
                                    </li>
                                    <li>
                                      <a class="nav-link waves-effect waves-light" href="{{ route('company.dashboard.videos') }}">
                                        <i class="fas fa-video text-green"></i> Βίντεο
                                      </a>
                                    </li>
                                    <li>
                                      <a class="nav-link waves-effect waves-light" href="{{ route('company.dashboard.images') }}">
                                        <i class="fas fa-images text-blue"></i> Εικόνες
                                      </a>
                                    </li>
                                    <li>
                                        <a class='nav-link waves-effect waves-light' href="{{ route('company.dashboard.inbox') }}">
                                            <i class="fas fa-inbox"></i> Μηνύματα 
                                        </a>
                                    </li>
                                    <li>
                                        <a class='nav-link waves-effect waves-light' href="{{ route('company.dashboard.companyedit') }}">
                                            <i class="fas fa-pencil-alt"></i> Επεξεργασία Επιχείρησης 
                                        </a>
                                    </li>
                                    <li>
                                        <a class='nav-link waves-effect waves-light' href="{{ route('company.dashboard.companyads') }}">
                                            <i class="fas fa-ad"></i> Company Advertise
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('company.subscription.index') }}" class="dropdown-item">
                                            <i class="fas fa-dollar-sign"></i>
                                            <span> Επιπλέον Διαφήμιση </span>
                                        </a>
                                    </li>
                                  </ul>
                                </li>
                                @auth                                
                                <li style="">
                                    <a href="#"> <img alt="Image placeholder" width='30' height='30' class="rounded-circle" src="{{ asset(Auth::user()->img_url) }}"> {{ Auth::user()->name }}</a>
                                    <ul class="dropdown">
                                        <div class=" dropdown-header noti-title">
                                            <h6 class="text-overflow m-0" style='color:#FFF;'>Καλωσορίσατε!</h6>
                                        </div>
                                        <li>
                                            <a href="{{ route('profile') }}" class="dropdown-item">
                                                <i class="ni ni-single-02"></i>
                                                <span>Λογαριασμός</span>
                                            </a>
                                        </li>
                                        @if(Auth::user()->isActiveEshop())
                                        <li>
                                            <a href="{{ route('userproducts') }}" class="dropdown-item">
                                                <i class="fab fa-product-hunt"></i>
                                                <span> Κατάστημα </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('subscription') }}" class="dropdown-item">
                                                <i class="fas fa-dollar-sign"></i>
                                                <span> Διαφήμιση </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('report') }}" class="dropdown-item">
                                                <i class="far fa-file-alt"></i>
                                                <span> Στατιστικά </span>
                                            </a>
                                        </li>
                                        @endif
                                        <li>
                                            <a href="#" id='user-points' class="dropdown-item">
                                                <i class="fas fa-coins"></i>
                                                <span>Βαθμοί: {{ Auth::user()->points }}</span>
                                            </a>
                                        </li>
                                         <li>
                                            <a href="#" class="dropdown-item">
                                                <i class="fas fa-coins"></i>
                                                <span>: {{ Helper::getRestDay() }} Ημέρες</span>
                                            </a>
                                        </li>

                                        <div class="dropdown-divider"></div>
                                        <li>
                                            <a class="dropdown-item" 
                                               onclick="event.preventDefault();
                                                             document.getElementById('logout-form').submit();" style='z-index:1000;'>
                                                <i class="ni ni-user-run"></i>
                                                <span>Έξοδος</span>
                                            </a>

                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                        </li>
                                    </ul>
                                    
                                </li>
                                @endauth
                                <li id="partnerprofile-top-menu" style="display:none;"><a href="#">Συνεργάτης</a>
                                    <ul class='dropdown' style='margin-top: 10px;'>
                                        <li id='home-menu'> <a href='partnerprofile.home'>Αρχική</a> </li>
                                        <li id='video-menu'> <a href='partnerprofile.video'>Όλα τα Βίντεο</a> </li>
                                        <li id='article-menu'> <a href='partnerprofile.article'>Όλα τα Άρθρα</a> </li>
                                        <li id='gallery-menu'> <a href='partnerprofile.gallery'>Όλες οι Εικόνες</a> </li>
                                    </ul>
                                </li>
                            </ul>

                        </div>
                        <!-- Nav End -->

                    </div>
                </nav>
            </div>
              
        </div>
         
    </header>


    <!-- ****** Gallery Area Start ****** -->
<section class="uza-portfolio-area section-padding-80" style='height:100%; '>
  @yield('content')
</section>


@include('other.activatealertdlg')
@include('other.activatedlg')
    <!-- ****** Gallery Area End ****** -->

</div>
@include('partner.chat.chat')
    <!-- ***** Footer Area End ***** -->
    <!-- ******* All JS Files ******* -->
    <!-- jQuery js -->    
    <script>
      const asset_url = "{{ asset('') }}";
      const partner = {
            'id': '{{ Auth::user()->id }}',
            'img_url' : "{{ Auth::user()->img_url }}",
            'name': "{{ Auth::user()->name }}",
            'email': "{{ Auth::user()->email }}",
            "active": parseInt("{{ Auth::user()->active_package }}")
      };

      const csrf_token = "{{ csrf_token() }}";
      
    </script>
    <!--
    <script src="{{ asset('js/services/services.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script type="text/javascript" src='{{asset("js/jquery.min.js")}}'></script>
    <script src="{{ asset( 'js/popper.min.js') }}"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="{{ asset( 'js/bootstrap.min.js') }}"></script>
    <script src="{{ asset( 'js/uza.bundle.js') }}"></script>
    <script src="{{ asset( 'js/default-assets/uza_window_init.js') }}"></script>
    <script src="{{ asset('plugins/perfect-scrollbar/perfect-scrollbar.js') }}"></script>   
    <script src="{{ asset( 'js/default-assets/uza_window_init.js') }}"></script>
    <script src="{{ asset('js/jquery.transform2d.js') }}"></script>
    <script src="{{ asset( 'js/jquery.transform3d.js') }}"></script>
    <script src="{{ asset('js/coreui.min.js') }}"></script>
    <script src="{{ asset('js/default-assets/menu.js') }}"></script>
    
    
    <script> var token = "{{ Braintree_ClientToken::generate() }}"; </script>
    <script src="https://js.braintreegateway.com/web/dropin/1.8.1/js/dropin.min.js"></script>
    <script src="{{ asset('js/partner-pages/index.js') }}"></script>
    -->
    <script src="{{ asset('js/services/services.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script> var token = "{{ Braintree_ClientToken::generate() }}"; </script>
    <script src="https://js.braintreegateway.com/web/dropin/1.8.1/js/dropin.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="{{ asset( 'js/popper.min.js') }}"></script>
    <script src="{{ asset( 'js/uza.bundle.js') }}"></script>
    <script src="{{ asset('js/jquery.transform2d.js') }}"></script>
    <script src="{{ asset( 'js/jquery.transform3d.js') }}"></script>
    <script src="{{ asset('js/coreui.min.js') }}"></script>
    <script src="{{ asset('js/default-assets/menu.js') }}"></script>
    <script src="{{ asset('plugins/perfect-scrollbar/perfect-scrollbar.js') }}"></script>   
    <script src="{{ asset( 'js/default-assets/uza_window_init.js') }}"></script>
    <script src="{{ asset('js/partner-pages/index.js') }}"></script>

    <!-- Notifications part -->
    <script src="{{ asset('plugins/notifications/index.js') }}"></script>
    <script src="{{ asset('js/default-assets/notifications.js') }}"></script>    
    <!-- Notifications part end -->

    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.1/mapbox-gl.js'></script>    
    <script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v2.1.0/mapbox-gl-geocoder.min.js'></script>
    <script src="{{ asset('plugins/mapbox/my-own-mapbox.js') }}"></script>

    @if(Auth::user() != null && Auth::user()->active_package != 0 && Auth::user()->isActivated() == false)
    <script>
      $("#modalactivealert").modal();
    </script>
    @endif
    @stack('scripts')
</body>
</html>

<style>  
  @stack('page-styles')
</style>