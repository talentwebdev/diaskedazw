
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="MALL DIASKEDAZW">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Title -->
    <title>Καλωσορίσατε στo MALL Diaskedazw που σας παρέχει πρόσβαση σε όλες τις υπηρεσίες που προσφέρει. !!</title>

    <!-- Favicon -->
    <link rel="icon" href="{{ asset('img/core-img/favicon (1).ico') }}">    
    <!-- Core Stylesheet -->
    
    <!-- argon assets -->
    <!-- Icons -->
    <link rel="stylesheet" href="{{ asset('plugins/image-gallery/gallery-grid.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <link href="{{ asset( 'assets_bootstrap4/vendor/nucleo/css/nucleo.css' ) }}" rel="stylesheet">
    <link href="{{ asset( 'assets_bootstrap4/vendor/@fortawesome/fontawesome-free/css/all.min.css' ) }}" rel="stylesheet">
    <link href="{{ asset( 'css/forms.less.css') }}" rel="stylesheet">
    <link href="{{ asset( 'css/vendor-prefixes.less.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/upload/jquery.fileupload.css')}}">
    
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link type="text/css" href="{{ asset( 'css/compiled-4.7.4.min.css' ) }}" rel="stylesheet">
    <link rel='stylesheet' href="{{ asset('plugins/owl-carousel/css/owl.carousel.css') }}">
    <link rel='stylesheet' href="{{ asset('plugins/owl-carousel/css/owl.theme.default.css') }}">

    <link rel="stylesheet" href="{{ asset('style.css') }}">

    <!-- Notifications part -->
    <link rel="stylesheet" href="{{ asset('plugins/notifications/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('plugins/favorite/style.css') }}" />

    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.1/mapbox-gl.css' rel='stylesheet' />
    <link rel='stylesheet' href='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v2.1.0/mapbox-gl-geocoder.css' type='text/css' />
    <link rel='stylesheet' href="{{ asset('plugins/mapbox/my-own-mapbox.css') }}" type="text/css" />

    <script>
        const csrf_token = "{{ csrf_token() }}";
    </script>

    @stack('styles')  

    <!-- ******* All JS Files ******* -->
    <script> const asset_url = '{{ asset("") }}'; </script>
    <script> const authorised = {{ auth()->check() ? 1 : 0 }}; </script>
    <script src="{{ asset('js/services/services.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script type="text/javascript" src='{{asset("js/jquery.min.js")}}'></script>
    <script type="text/javascript" src="{{ asset('plugins/form-to-json/jquery.serializeToJSON.js') }}"></script>
    <script src="{{ asset( 'js/popper.min.js') }}"></script>
    <script src="{{ asset( 'js/bootstrap.min.js') }}"></script>
    <script src="{{ asset( 'js/uza.bundle.js') }}"></script>
    <script src="{{ asset('plugins/owl-carousel/owl.carousel.min.js') }}"></script>
</head>

<style>
.container{
    width: 90%;
}
@media (min-width: 1200px)
.container {
    max-width: 1500px;
}
@media (min-width: 992px)
.container {
    max-width: 960px;
}
@media (min-width: 768px)
.container {
    max-width: 720px;
}
@media (min-width: 576px)
.container {
    max-width: 540px;
}
.media-body span{
    cursor: pointer;
    font-size: 18px;
}
.media{
}
@media only screen and (min-width: 991px)
{   
    .classynav #nav{
        margin-right: 50px;
    }
    
    .classynav a{
        font-weight: 600 !important;
        color:#fff !important;
    }

    #mall-submenu-container{
        background: transparent;
        overflow: hidden;
        box-shadow:0px;
    }
    #mall-submenu{
        top:0px; width: 209px; position: absolute;
    }
}
@media only screen and (min-width: 1200px)
{
    .classynav #nav{
        margin-right: 100px;
    }
}

.dropdown a{
    color: #333 !important;
}
.nav-brand h5{
    color:#fff;
}
.body-class{
    padding-right: 0px !important;
}
</style>
<body class='body-class'>
    <div id="asset-url" url="{{ asset( '' ) }}"></div>

    <!-- Preloader -->
    <div id="preloader">
        <div class="wrapper">
            <div class="cssload-loader"></div>
        </div>
    </div>


    <!-- ***** Header Area Start ***** -->
    <header class="header-area">
        <!-- Main Header Start -->
        <div class="main-header-area">
            <div class="classy-nav-container breakpoint-off">
                <!-- Classy Menu -->
                <nav class="classy-navbar justify-content-between" id="uzaNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="{{ route('/') }}">
                        <h5>Diask<img src="{{ asset('img/diask-img/ellinsds.png') }}" width="13" height="9" alt="ΕΛΛΗΝ"/>da<span>zw</span> </h5>
                    </a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">
                        <!-- Menu Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul id="nav">

                                @auth
                                 <li>
                                    <a>
                                        <i class="fas fa-bell" style='font-size: 12px; color: rgb(255, 201, 14);'></i> Ειδοποιήσεις
                                    </a>
                                    <ul class="dropdown" style='width: 400px;' id="notifications">                                      
                                    
                                    </ul>
                                </li>
                                <li>
                                    <!--<a>
                                        <i class="fas fa-star" style='font-size: 12px; color: rgb(32, 112, 217);'></i> Favorite
                                    </a>
                                    <ul class="dropdown">                                      
                                        <li>
                                            <a><i class="fas fa-star" style='font-size: 12px; color: rgb(32, 112, 217);'></i> Favorite Company</a>
                                            <ul class="dropdown" style='width: 400px;' id="favorite-company">                                      
                                            </ul>
                                        </li>
                                        <li>
                                            <a>
                                                <i class="fas fa-heart" style='font-size: 12px; color: rgb(206, 34, 82);'></i> Favorite Discount
                                            </a>
                                            <ul class="dropdown" style='width: 400px;' id="favorite-discount">                                      
                                            
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                -->
                                @endauth
                                <li id='home-top-menu' style=""><a href="{{ route('home') }}">Αρχική</a></li>
                                
                                <!-- <li id='mall-top-menu' style=""><a href="#">Mall Υπηρεσιών </a>
                                
                                    <ul class="dropdown" id='mall-submenu-container' >
                                        <div id='mall-submenu' style=''>
                                        </div>
                                    </ul>
                                    
                                    <!--
                                    <ul class='dropdown' id='mall-submenu'>
                                    </ul>
                                    -->
                                </li>

                                <li id='discount-top-menu' style=""><a href="#">Εκπτώσεις</a>
                                
                                <ul class="dropdown"> 
                                 <li><a href="{{ route('discount',['user_id'=>'0'] ) }}"> <i class="fas fa-building" style='margin-left:5px;'></i> Επιχειρήσεις</a></li>
                                 @auth
                                        <li>
                                            <a><i class="fas fa-heart" style='margin-left:5px;'></i>Αγαπήμενες Επιχειρήσεις</a>
                                            <ul class="dropdown" style='width: 400px;' id="favorite-company">                                      
                                            </ul>
                                        </li>
                                         @endauth
                                          @auth
                                        <li>
                                            <a>
                                                 <i class="fa fa-percent" style='margin-left:5px;'></i> Αγαπήμενες Εκπτώσεις
                                            </a>
                                            <ul class="dropdown" style='width: 400px;' id="favorite-discount">                                      
                                            
                                            </ul>
                                        </li>
                                        @endauth
                                    </ul></li>  
                                
                                <li id='product-top-menu' style="">
                                    <a href="#">E-shop</a>
                                    <ul class="dropdown">
                                        <li><a href="{{ route('products') }}"><i class="fas fa-shopping-cart" style='margin-left:5px;'></i> Κατάστημα</a></li>
                                        @auth
                                        <li><a href="{{ route('favorite') }}"><i class="fas fa-star" style='margin-left:5px;'></i> Αγαπημένα</a></li>
                                        @endauth
                                    </ul>
                                </li>    
                                <li id='packages-top-menu' style=""><a href="{{ route('packages') }}">Κάρτες</a></li>                                
                                
                                <li id='partners-top-menu' style=""><a href="{{ route('partners') }} ">Συνεργάτες</a></li>
                                <li id='about-top-menu' style=""><a href="{{ route('about') }} ">Ευκαιρία</a></li>
                                
                                <li id="contactus-top-menu" style=""><a href="{{ route('contactus') }}">Επικοινωνία</a></li>
                                @auth
                               
                                <li style="">
                                    <a href="#"> <img alt="Image placeholder" width='30' height='30' class="rounded-circle" src="{{ asset(Auth::user()->img_url) }}"> {{ Auth::user()->getUserName() }}</a>
                                    <ul class="dropdown" style="margin-top:10px;">
                                        <div class=" dropdown-header noti-title">
                                            <h6 class="text-overflow m-0" style='color:#FFF;'>Καλωσορίσατε!</h6>
                                        </div>
                                        <li>
                                            <a href="{{ route('profile') }}" class="dropdown-item">
                                                <i class="ni ni-single-02" style='margin-left:5px;'></i>
                                                <span>Λογαριασμός</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" id='user-points' class="dropdown-item">
                                                <i class="fas fa-coins" style='margin-left:5px;'></i>
                                                <span>Πόντοι: {{ Auth::user()->points }}</span>
                                            </a>
                                        </li>
                                        @if(Auth::user()->isActiveEshop())
                                        <li>
                                            <a href="{{ route('userproducts') }}" class="dropdown-item">
                                                <i class="fas fa-shopping-cart" style='margin-left:5px;'></i>
                                                <span> Κατάστημα </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('subscription') }}" class="dropdown-item">
                                                <i class="fa fa-bullseye" style='margin-left:5px;'></i>
                                                <span> Διαφήμιση </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{ route('report') }}" class="dropdown-item">
                                                <i class=" fa fa-bar-chart" style='margin-left:5px;'></i>
                                                <span> Στατιστικά </span>
                                            </a>
                                        </li>
                                        @endif
                                         <li>
                                            <a href="#" class="dropdown-item">
                                                <i class=" fa fa-clock-o" style='margin-left:5px;'></i>
                                                <span> {{ Helper::getRestDay() }} Ημέρες</span>
                                            </a>
                                        </li>

                                        <div class="dropdown-divider"></div>
                                        <li>
                                            <a class="dropdown-item" 
                                               onclick="event.preventDefault();
                                                             document.getElementById('logout-form').submit();" style='z-index:1000;'>
                                                <i class="ni ni-user-run"style='margin-left:5px;'></i>
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
                                        <li id='video-menu'> <a href='partnerprofile.video'>Videos</a> </li>
                                        <li id='article-menu'> <a href='partnerprofile.article'>Άρθρα</a> </li>
                                        <li id='gallery-menu'> <a href='partnerprofile.gallery'>Εικόνες</a> </li>
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
    <!-- ***** Header Area End ***** -->
    

    <main class='main-content'>    
        <div>
            @yield('menu-detail')
        </div>       
        @yield('content')

        @if(Auth::user() != null && Auth::user()->active_package != 0 && Auth::user()->isActivated() == false)
            @include('other.activatedlg')            
        @endif          
        
        @include('other.activatealertdlg')
        @include('other.errorwithpointsdlg')
        
    </main>
    <form method="get" id="notificationForm" style="display:none;">
        <input type="text" name="type" id="notificationType" />
        <input type="text" name="content_id" id="contentID" />
    </form>
    <div class='cookie-policy-alert'>Αυτός ο ιστότοπος χρησιμοποιεί cookies για να βελτιώσει την εμπειρία χρήσης. <a href="javascript:void(null);" class="cookie-accept-btn">Το κατάλαβα</a></div>
    

</body>
    

    <script src="{{ asset('plugins/notifications/index.js') }}"></script>
    <script src="{{ asset('js/default-assets/notifications.js') }}"></script>

    @auth
        @include('__js_fetch_favorites')
    @endauth

    <script src="{{ asset( 'js/default-assets/uza_window_init.js') }}"></script>
    <script src="{{ asset('js/jquery.transform2d.js') }}"></script>
    <script src="{{ asset( 'js/jquery.transform3d.js') }}"></script>
    <script src="{{ asset('js/coreui.min.js') }}"></script>
    <script src="{{ asset('js/default-assets/menu.js') }}"></script>
    
    <script> const user = {
                            id: '{{ auth()->check() ? Auth::user()->id : "null" }}',
                            img_url: "{{ auth()->check() ? Auth::user()->img_url : 'null' }}",
                            name: "{{ auth()->check() ? Auth::user()->name : 'null' }}",
                            email: "{{ auth()->check() ? Auth::user()->email : 'null' }}",
                            package_id: parseInt('{{ auth()->check() ? auth()->user()->active_package : "0" }}')
                        };
    </script>
    <script> var token = "{{ Braintree_ClientToken::generate() }}"; </script>
    <script src="https://js.braintreegateway.com/web/dropin/1.8.1/js/dropin.min.js"></script>
    <script src="{{ asset('js/cookie-policy.js') }}"></script>

    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.1/mapbox-gl.js'></script>    
    <script src='https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-geocoder/v2.1.0/mapbox-gl-geocoder.min.js'></script>
    <script src="{{ asset('plugins/mapbox/my-own-mapbox.js') }}"></script>
    
    <script>
        if(authorised && !user.package_id)
            $("#modalactivealert").modal();
    </script>
    @stack('scripts')
</html>
