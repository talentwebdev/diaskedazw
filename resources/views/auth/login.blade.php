@extends('layouts.app')
@push('styles')
<style>
.slider-container .slider-right{
    background: url({{ asset('plugins/3d-smooth-carousel/img/team_arrow.svg') }}) no-repeat;
    background-size: 20px;
    width: 3% !important;
    height: 10% !important;
}
.slider-container .slider-left{
    background: url({{ asset('plugins/3d-smooth-carousel/img/team_arrow1.svg') }}) no-repeat;
    background-size: 20px;
    width: 3% !important;
    height: 10% !important;
}
.head-count .num{
    background-image: url({{ asset('plugins/counter/images/count.jpg') }});
}
</style>
<link type='text/css' href='{{ asset("css/loading/style.css") }}' rel='stylesheet'>
<link type='text/css' href='{{ asset("css/search-box/style.css") }}' rel='stylesheet'>
<link type='text/css' href="{{ asset('css/my-own-carousel/my-carousel.css')}} " rel='stylesheet' >
<link type="text/css" href="{{ asset( 'css/circle-component/circle-component.css') }}" rel='stylesheet' >
<link rel="stylesheet" type="text/css" href="{{ asset('plugins/carouselengine/initcarousel-1.css') }}">
<link rel='stylesheet' type='text/css' href="{{ asset('plugins/3d-smooth-carousel/css/style.css') }}">
<link rel='stylesheet' type='text/css' href="{{ asset('plugins/team-carousel/css/team-carousel.css') }}">
<link rel='stylesheet' type='text/css' href="{{ asset('css/user-pages/login/style.css') }}">
@endpush



@section('content')
    <!-- ***** Welcome Area Start ***** -->
    @include('partner.test.firstpage')
    @include('user.component.menudetail')
    <div class='advertise-section'>
        <div class='row' style='width:80%; margin:auto;'>
            @auth
            <div class='col-md-8 video-area'>
            @else
            <div class='col-md-12 video-area'>
            @endif
                <div>
                    @auth
                    <video width="100%" id="mainVideo" controls muted >
                    @else
                    <video loop='loop' width="100%" id="mainVideo" controls muted autoplay>
                    @endif
                        @if(!auth()->check() && $promotevideo != null)
                            <source src="{{ asset($promotevideo->video_url) }}" type="video/mp4">                                                                       
                        @else
                            <source src="{{ asset('videos/upload/151555573815.mp4') }}" type="video/mp4">                        
                        @endauth
                    </video>
                </div>
                
            </div>
            @auth
            <div class="col-md-4 info-area">
                <div class='announce-panel'>
                    <div class='card'>
                        <div class='card-header'>Ανακοινώσεις</div>
                        
                        <div class='card-body' style="position:relative; top:-5px;" >
                            <ul class='list-group' id='announce-list'>
                            <!--
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                </li>
                                
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                </li>
                                
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                </li>
                                
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                </li>
                                
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                    <p></p>
                                </li>
                                -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            @endauth
            <!--
            <div class='col-md-4 info-area'>
                <div id="loginPanel" >
                    <div class='card'>
                        <div class='header'>Περισσότερες Πληροφορίες</div>
                        <div class='card-body'>
                            <div class='form-group row'>
                                <div class='col-md-4'>
                                    <label>Όνομα:</label>
                                </div>
                                <div class='col-md-8'>
                                    <input type='text' id='email-name' class='form-control' name='name' required />                                        
                                </div>
                            </div>
                            <div class='form-group row'>
                                <div class='col-md-4'>
                                    <label>Επίθετο:</label>
                                </div>
                                <div class='col-md-8'>
                                    <input type='text' id='email-surname' class='form-control' name='surname' required />
                                </div>                                         
                            </div>
                            <div class='form-group row'>
                                <div class='col-md-4'>
                                    <label>Email:</label>
                                </div>
                                <div class='col-md-8'>
                                    <input id='email-email' type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>
                                </div>                                         
                            </div>
                            <div class='form-group row'>
                                <div class='col-md-4'>
                                    <label>Σύσταση:</label>
                                </div>
                                <div class='col-md-8'>
                                    <input type='text' id='email-reference' class='form-control' name='reference' required />
                                </div>                                         
                            </div>
                            <div class='form-group row'>
                                <button class='btn' id='sendemail-btn' style='background-color:rgb(76, 83, 75); border-radius: 20px 20px; width:80%; margin:auto;'>Αποστολή</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            -->
        </div>
    </div>
       <div id="fb-root"></div>
<!-- Video area start -->
<section class='uza-portfolio-area video-section-area'>
    @include('user.partnerprofile.component.videocarousel', ['page'=>'home'])
</section>
<!-- Video area End -->
<!-- ***** Article Area Start ***** -->
<section class="uza-portfolio-area article-section-area"> 
    <!-- article section start -->
    <div class='container-fluid'>        
        @auth
        <div style='height:50px;'>
            <form action="" class="search-form">
                <div class="form-group has-feedback">
                    <label for="search" class="sr-only">Search</label>
                    <input type="text" class="form-control" name="search" id="search" placeholder="search">                
                    <i class="fa fa-search form-control-feedback"></i>                    
                    <div class="lds-roller" style='display:none;'><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>                    
                </div>
            </form>
        </div>
        @endauth
        <div class='row article-slides-container' style='width: 80%; margin:auto; padding: 30px;'>            
            <h2 class='section-title'> Τελευταία Άρθρα </h2>
            <div class='article-slides owl-carousel'>
            </div>
        </div>
    </div>
    <!-- article section end -->
    


    <!-- Border -->
    <div class="container">
        <div class="border-line"></div>
    </div>
</section>
<!-- ***** Article Area End ***** -->

<!-- ***** Site Area Start ***** -->
<section class="uza-portfolio-area">
    <!-- Other sites introducing -->
    @include('user.partnerprofile.component.sitecarousel')
    <!-- Other sites introducing End -->
</section>
<!-- ***** Site Area End ***** -->


<!-- ***** Circle Mall Area Start **** -->
<section class='uza-portfolio-area'>    
    <div class='circle-mall-section'>    
        <div class="row" style="float:right; margin-right: 5%;">
            <label id='showAllSwitch' class="switch switch-pill switch-label switch-outline-primary-alt">
                <input type="checkbox" class="switch-input" checked>
                <span class="switch-slider" data-checked="On" data-unchecked="Off"></span>
            </label>
        </div>

        <div class='row' style='margin:auto;'>
            <div class='col-md-6' id='service-latest-article' style='padding-left:5%; padding-right: 2%;'>                
                <h2 class='section-title' style='text-align: center;  margin:auto; margin-bottom: 20px;'> MALL Υπηρεσιών Diaskedazw </h2>
                <p id='latest-article-text' style='text-align: center; word-wrap: break-word;'>
                    Ως μέλος Diaskedazw μπορείς να απολαμβάνεις δωρεάν  εκδηλώσεις διασκέδασης και
                    υπηρεσίες που ενδιαφέρουν εσένα και την οικογένεια σου.</p>
                <button class="btn" id="link-btn" style="background-color:#20A8D8; border-radius: 20px 20px; width:80%; margin-left:10%; display:none;"><a style=>Επισκεψη</a></button>
            </div>
            <div class='col-md-6' style='position: relative; width: 100%; padding: 50px; margin-bottom: 200px; ' id='service-area'>
                <!--
                <div id='circle-component' style='margin: auto; margin-top: 100px;' class='circle-container'>
                    <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
                </div>
                <div id='sub-component' style='display: none; margin: auto;' class="circle-container sub">
                    <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
                </div>
                <div id='adv-service' style='position: absolute; left: 45%; top: 45%; display: none; width: 200px; height: 200px;  margin: auto;' class="circle-container sub">
                    <img src='' style='width:100%;' />
                </div>
                -->
                @include('user.component.circle')
            </div>    
        </div>
    </div>
</section>
<!-- ***** Circle Mall Area End **** -->

<!-- ***** Become a partner Area Start ***** -->
<section class="uza-services-area section-padding-80-0 become-partner-section" style='z-index: 200;'>
    <div class='become-partner' style='width: 80%; margin:auto;'>
        <div class='row' >
            <div class='col-md-6' style='z-index: 200;'>
                <div class="as">
                    <div class="ass">

                <img  src='{{ asset("img/bg-img/layer-125.png") }}' />
                </div></div>
            </div>
            <style>
            @media screen and (max-width: 700px) {
  .as {
     position:relative; top:5px; left:-50px;
  }
}

 @media screen and (max-width: 700px) {
  .ass {
     position:relative; top:70px; 
  }
}
</style>

            <div class='col-md-6' style='position:relative; top:-40px;text-align:center; color: #FFF;'>
                
                <div class="ass">

                <h2 style='font-weight: 800; color: #FFF;'> Επαγγελματική Ευκαιρία </h2>
                </div>
                <div class="ass">

                <h5 style='font-weight: 700; color: #FFF;'> Επιπλέον μπορείς να δημιουργήσεις τη δική σου επιχείρηση, σε παγκόσμιο επίπεδο, χωρίς κεφάλαιο, δουλεύοντας απο το δικό σου χώρο, στο δικό σου χρόνο στον τομέα του Social Marketing. </h5>
                </div>
                <div class="ass">
                <button class="btn" id="link-btn" style="background-color:#20A8D8; border-radius: 20px ; width:40%;margin-top:10px; "><a href="/about/" style="color:white;">Επισκεψη</a></button></div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Become a partner Area End ***** -->

<!-- ***** Package carousel Section **** -->
<section class='uza-portfolio-area' style='position:relative; padding-left: 0%; padding-right: 0%;'>
    <p class='package-slide-text'>ΠΑΚΕΤΑ</p>
    <div id="carousel" style='position:relative;'>
        <a id="prev" class='left-button' style='position: absolute; left:50px; top:30%; font-weight: 800; font-size:xx-large; color: #aaa;'><i class='fas fa-angle-left'></i></a>
        <a id="next" class='right-button' style='position: absolute; right:50px; top:30%; font-weight: 800; font-size:xx-large; color: #aaa;'><i class='fas fa-angle-right'></i></a>
    </div>
</section>
<!-- ***** Package carousel section End ***** -->

<!-- **** Gallery Carousel Section Start ***** -->
<section class='uza-services-area'>
    <div class='row' style='width:100%; margin-left: 0px;'>
        <div class='' style='width: 5%; background-color:#EEE;'></div>
        <div class=' gallery-slides-container' style='width: 90%; margin:auto; padding: 20px; padding-top: 50px; '>            
            <div class='gallery-slides owl-carousel'>
            </div>
        </div>
        <div class='' style='width: 5%;background-color:#EEE;'></div>
    </div>
</section>
<!-- **** Gallery Carousel Section End ***** -->

<!-- **** Annouce panel Area Start **** -->
<!--
<section class='uza-portfolio-area announce-panel-section'>
    
    <div id='announce-panel'  style='position: relative; height: 500px; width: 90%; margin: auto; background-color: #FFF;'>

        <div class="row" style='width: 100%; height:100%;'>
            <div class="card box-1 notification">
                <div class="card-header">Box1</div>
                <div class="card-body">
                    <div>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                    <div>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                    <div>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                </div>
            </div>

            <div class="card box-2 notification">
                <div class="card-header">Box2</div>
                <div class="card-body">
                    <div style='border-bottom: solid #eee'>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                </div>
            </div>

            <div class="card box-3 notification">
                <div class="card-header">Box3</div>
                <div class="card-body">
                    <div style='border-bottom: solid #eee'>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</section>
-->
<!-- **** Annouce panel area end **** -->

<!-- ***** Partner Introduce Area Start ***** -->
<section class='uza-portfolio-area partners-section' style='padding-bottom: 100px; padding-top: 130px;'>
    <div class='partners-section-child'>
        <span class='section-title' style='text-align:center; font-size:bold; font-size: 16px;'> Εξειδικευμένοι Συνεργάτες </span>
        <div class='team-container' style='width: 100%; position:relative;'>
            
            <ul class='team-carousel'>
            </ul>
            <span>
                <div class='prev'></div>
                <div class='next'></div>
            </span>
        </div>
        <!--
        <div class="slider-container">
            <div class="slider-content">
            </div>
            <div class="slider-left" href="javascript:void(0);"></i></div>
            <div class="slider-right" href="javascript:void(0);"></i></div>
        </div>
        -->
    </div>
</section>
<!-- ***** Partner Introduce Area End ***** -->

@include('other.footer')
@push('scripts')
    
    <script src='{{ asset("plugins/carouselengine/amazingcarousel.js") }}'></script>
    <script src="{{ asset('plugins/3d-smooth-carousel/js/index.js') }}"></script>
    <script src='{{ asset("js/user-pages/login/video-carousel.js") }}'></script>    
    <script src="{{ asset( 'js/circle-component/circle-component.js') }}" ></script>
    <script type='text/javascript' src="{{ asset('js/my-own-carousel/my-carousel.js') }}"></script>
    <!-- <script type='text/javascript' src='{{ asset("plugins/counter/counter.js") }}'></script> -->
    <script src="{{ asset('plugins/team-carousel/js/team_carousel.js') }}"></script>
    <script src="{{ asset('js/user-pages/login/index.js') }}"></script>   
    
    <script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
    <script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
    <script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
    <script src='{{ asset("plugins/canvas-map/js.js") }}'></script> 
    <!-- Load Facebook SDK for JavaScript -->
   
      <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v4.0'
          });
        };

        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/el_GR/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>

      
@endpush
@endsection

