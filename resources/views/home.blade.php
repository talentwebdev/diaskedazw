@extends('layouts.app')

@section('content')    
    <!-- ***** Welcome Area Start ***** -->
    <section class="welcome-area">
        <div class="welcome-slides owl-carousel">

            <!-- Single Welcome Slide -->
            <div class="single-welcome-slide">
                <!-- Background Curve -->
                <div class="background-curve">
                    <img src="{{ asset('img/core-img/curve-1.png') }}" alt="">
                </div>

                <!-- Welcome Content -->
                <div class="welcome-content h-100">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <!-- Welcome Text -->
                            <div style="margin-top: 2%;" class="col-1 col-lg-12">
                                <video style="border-radius: 20px; box-shadow: 10px 20px 40px rgba(0, 0, 0, .5);" loop="loop" width="100%" poster="{{ asset('img/bg-img/22.jpg') }}" id="mainVideo" controls>
                                    <source src="{{ asset('videos/diaskedazo.mp4') }}" type="video/mp4">
                                    <source src="video.ogg" type="video/ogg">
                                    <source src="video.webm" type="video/webm">
                                    <object data="{{ asset('video/diaskedazo.mp4') }}" width="100%" height="550">
                                    <embed src="video.swf" width="100%" height="550">
                                    </object>
                                </video>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </section>
    <!-- ***** Welcome Area End ***** -->

 <!-- ***** Main Area Start ***** -->
    <section class="uza-portfolio-area section-padding-80">
        <div class="container">
            <div class="row">
                <!-- Section Heading -->
                <div class="col-12">
                    <div class="section-heading text-center">
                        <a href="{{ route('zw') }}" class="btn uza-btn btn-2 mt-2" style="width: 50%;">Z W</a>
                    </div>
                </div>
            </div>
        </div>


        <div class="container-fluid" >
            <div class="row" >

                <!-- Portfolio Slides -->
                <div class="portfolio-sildes owl-carousel" id="videoSlider">

                </div>
            </div>
        </div>

        <!-- Client Feedback Area Start -->
        <div class="clients-feedback-area mt-80 section-padding-80 clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Testimonial Slides -->
                        <div class="testimonial-slides owl-carousel">


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Client Feedback Area End -->

        <!-- Other sites introducing -->
        <div class="container-fluid">
            <div class="row">
                <!-- Portfolio Slides -->
                <div class="site-slides owl-carousel">

                    <!-- Single Portfolio Slide -->
                    <div class="single-portfolio-slide">
                        <img src="{{ asset('img/site-img/1.jpg') }}" alt="">
                        <!-- Overlay Effect -->
                        <div class="overlay-effect">
                            <h4>Digital Marketing</h4>
                            <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet gubergren no sea takimata sanctus est</p>
                        </div>
                    </div>

                    <!-- Single Portfolio Slide -->
                    <div class="single-portfolio-slide">
                        <img src="{{ asset('img/site-img/2.jpg') }}" alt="">
                        <!-- Overlay Effect -->
                        <div class="overlay-effect">
                            <h4>Digital Marketing</h4>
                            <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet gubergren no sea takimata sanctus est</p>
                        </div>
                    </div>

                    <!-- Single Portfolio Slide -->
                    <div class="single-portfolio-slide">
                        <img src="{{ asset('img/site-img/3.jpg') }}" alt="">
                        <!-- Overlay Effect -->
                        <div class="overlay-effect">
                            <h4>Digital Marketing</h4>
                            <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet gubergren no sea takimata sanctus est</p>
                        </div>
                    </div>

                    <!-- Single Portfolio Slide -->
                    <div class="single-portfolio-slide">
                        <img src="{{ asset('img/site-img/4.jpg') }}" alt="">
                        <!-- Overlay Effect -->
                        <div class="overlay-effect">
                            <h4>Digital Marketing</h4>
                            <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet gubergren no sea takimata sanctus est</p>
                        </div>
                    </div>

                    <!-- Single Portfolio Slide -->
                    <div class="single-portfolio-slide">
                        <img src="{{ asset('img/site-img/5.jpg') }}" alt="">
                        <!-- Overlay Effect -->
                        <div class="overlay-effect">
                            <h4>Digital Marketing</h4>
                            <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet gubergren no sea takimata sanctus est</p>
                        </div>
                    </div>

                    <!-- Single Portfolio Slide -->
                    <div class="single-portfolio-slide">
                        <img src="{{ asset('img/site-img/6.jpg') }}" alt="">
                        <!-- Overlay Effect -->
                        <div class="overlay-effect">
                            <h4>Digital Marketing</h4>
                            <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet gubergren no sea takimata sanctus est</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Other sites introducing End -->

        <!-- Advertising site -->
        <div class="container-fluid">
            <div class="row">
                <!-- Portfolio Slides -->
                <div id="advertiseSite" class="container carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#advertiseSite" data-slide-to="0" class="active"></li>
                    <li data-target="#advertiseSite" data-slide-to="1"></li>
                    <li data-target="#advertiseSite" data-slide-to="2"></li>
                    <li data-target="#advertiseSite" data-slide-to="3"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img class="d-block w-100" src="{{ asset('img/adv-img/adv-1.png') }}" alt="First slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="{{ asset('img/adv-img/adv-2.png') }}" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="{{ asset('img/adv-img/adv-3.png') }}" alt="Third slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="{{ asset('img/adv-img/adv-4.png') }}" alt="Forth slide">
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#advertiseSite" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#advertiseSite" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
            </div>
        </div>
        <!-- Advertising site End -->

        <!-- Border -->
        <div class="container">
            <div class="border-line"></div>
        </div>

        <!-- Background Curve -->
        <div class="portfolio-bg-curve">
            <img src="{{ asset('img/core-img/curve-3.png') }}" alt="">
        </div>
    </section>
    <!-- ***** Main Area End ***** -->


    <!-- ***** Services Area Start ***** -->
<section>
    <div class="row" style="float:right; margin-right: 20%;">
        <label id='showAllSwitch' class="switch switch-pill switch-label switch-outline-primary-alt">
            <input type="checkbox" class="switch-input" checked>
            <span class="switch-slider" data-checked="On" data-unchecked="Off"></span>
        </label>
    </div>

    <div style='position: relative; width: 100%; margin-bottom: 200px; ' id='service-area'>
        <div id='circle-component' style='margin: auto; margin-top: 100px;' class='circle-container'>
            <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
        </div>
        <div id='sub-component' style='display: none; margin: auto;' class="circle-container sub">
            <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
        </div>
        <div id='adv-service' style='position: absolute; left: 45%; top: 45%; display: none; width: 200px; height: 200px;  margin: auto;' class="circle-container sub">
            <img src='' style='width:100%;' />
        </div>
    </div>
    <div id='announce-panel'  style='position: relative; height: 500px; background-color: rgba(200, 200, 200); margin-bottom: 50px; margin-top: -600px; z-index: 2000;'>

        <div class="row" style='width: 100%; height:100%;'>
            <div class="card" style='width:20%; margin: auto; margin-top: 30px; height: 80%; border-radius: 20px; background-color: rgb(33, 25, 15);'>
                <div class="card-header" style='text-align:center; width:95%; margin:auto; margin-top: 10px; border-radius:10px; background-color: rgb(224, 216, 205);'>Box1</div>
                <div class="card-body" style='color: rgb(255, 255, 255);'>
                    <div style='border-bottom: solid #eee'>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                    <div style='border-bottom: solid #eee'>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                    <div style='border-bottom: solid #eee'>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                </div>
            </div>

            <div class="card" style='width:20%; margin: auto; margin-top: 60px; height: 80%; border-radius: 20px; background-color: rgb(33, 25, 15);'>
                <div class="card-header" style='text-align:center; width:95%; margin:auto; margin-top: 10px; border-radius:10px; background-color: rgb(224, 216, 205);'>Box2</div>
                <div class="card-body" style='color: rgb(255, 255, 255);'>
                    <div style='border-bottom: solid #eee'>
                        <span style='margin-top:0px;'>asdfasd</span></br>
                        <span style='margin-top:0px; color: rgb(101, 93, 83);'>asdfasdasdfasdfadfasdfasdfasdfasdfasdfaadfasfdf</span></br>
                        <span style='margin-top:0px; color: rgb(151, 112, 45);'>asdfasdf</span>
                    </div>
                </div>
            </div>

            <div class="card" style='width:20%; margin: auto; margin-top: 30px; height: 80%; border-radius: 20px; background-color: rgb(33, 25, 15);'>
                <div class="card-header" style='text-align:center; width:95%; margin:auto; margin-top: 10px; border-radius:10px; background-color: rgb(224, 216, 205);'>Box3</div>
                <div class="card-body" style='color: rgb(255, 255, 255);'>
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
    <!-- ***** Services Area End ***** -->

    <!-- package area start -->
    <section>
        <div>
            <div id="carousel" style='position:relative;'>
                <a id="prev" class='left-button' style='position: absolute; left:50px; top:30%; font-weight: 800; font-size:xx-large; color: #aaa;'><i class='fas fa-angle-left'></i></a>
                <a id="next" class='right-button' style='position: absolute; right:50px; top:30%; font-weight: 800; font-size:xx-large; color: #aaa;'><i class='fas fa-angle-right'></i></a>
            </div>
        </div>
    </section>
    <!-- package area end -->



    <!-- ***** Blog Area Start ***** -->
    <section class="uza-blog-area">
        <!-- Background Curve -->
        <div class="blog-bg-curve">
            <img src="{{ asset('img/core-img/curve-4.png') }}" alt="">
        </div>


        <div class="container">
            <div class="row">
                <!-- Section Heading -->
                <div class="col-12">
                    <div class="section-heading text-center">
                        <h2>Latest Articles</h2>
                        <p>Hit the button below or give us a call!</p>
                    </div>
                </div>
            </div>

            <div class="row" id="latestArticle">

            </div>
        </div>
    </section>
    <!-- ***** Blog Area End ***** -->

    <!-- ***** Footer Area Start ***** -->
    <footer class="footer-area section-padding-80-0">
        <div class="container">
            <div class="row justify-content-between">

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">Contact Us</h4>

                        <!-- Footer Content -->
                        <div class="footer-content mb-15">
                            <h3>(+65) 1234 5678</h3>
                            <p>40 Baria Sreet 13/2 NY City, US <br> hello.colorlib@gmail.com</p>
                        </div>
                        <p class="mb-0">Mon - Fri: 9:00 - 19:00 <br>
                            Closed on Weekends</p>
                    </div>
                </div>

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">Quick Link</h4>

                        <!-- Nav -->
                        <nav>
                            <ul class="our-link">
                                <li><a href="{{route('about')}}">About Us</a></li>
                                <li><a href="{{route('profile')}}">Profile</a></li>
                                <li><a href="{{route('packages')}}">Packages</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">Resources</h4>

                        <!-- Nav -->
                        <nav>
                            <ul class="our-link">
                                <li><a href="#">Customer Support</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Media &amp; Press</a></li>
                                <li><a href="#">Our Team</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">About Us</h4>
                        <p>Integer vehicula mauris libero, at molestie eros imperdiet sit amet.</p>

                        <!-- Copywrite Text -->
                        <div class="copywrite-text mb-30">
                            <p>&copy; Copyright 2018 <a href="#">Colorlib</a>.</p>
                        </div>

                    </div>
                </div>

            </div>
            <div class="row" style="margin-bottom: 30px;">

            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>

        </div>
    </footer>
    <!-- ***** Footer Area End ***** -->


    <div class="modal fade" id="showvideomodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-show="true">
        <div class="modal-dialog modal-lg modal-notify modal-white modal-info" role="document">
            <!--Content-->
            <div class="modal-content">
                <!--Header-->
                <div class="modal-header">
                <p class="heading lead" id="videotitle"></p>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">×</span>
                </button>
                </div>

                <!--Body-->
                <div class="modal-body mb-0 p-0">
                <div class="text-center">
                    <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                        <video id="modalshowvideo" loop="loop" width="100%" poster="{{ asset('img/bg-img/22.jpg') }}" controls>
                            <source src="{{ asset('videos/diaskedazo.mp4') }}" type="video/mp4">
                        </video>
                    </div>
                </div>

                </div>

                <!--Footer-->
                <div class="modal-footer">
                <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Close</a>
                </div>
            </div>
            <!--/.Content-->
        </div>
        
    </div>
    <div class="modal fade" id="showarticlemodal" tabindex="-1" role="dialog" style='z-index: 3000;' aria-labelledby="myModalLabel" aria-show="true">
        <div class="modal-dialog modal-lg modal-notify modal-white modal-info" role="document">
        <!--Content-->
            <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
              <p class="heading lead" id="articletitle"></p>

              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">×</span>
              </button>
            </div>

            <!--Body-->
            <div class="modal-body mb-0 p-0">
              <div class="text-center">
                <i class="fas fa-check fa-4x mb-3 animated rotateIn"></i>
                <p id='articleContent'>
                </p>
              </div>

            </div>

            <!--Footer-->
            <div class="modal-footer">
              <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Close</a>
            </div>
        </div>
        <!--/.Content-->
    </div>
@endsection


@push('scripts')
    <script type='text/javascript' src="{{ asset('js/my-own-carousel/my-carousel.js') }}"></script>
    <script src="{{ asset( 'js/circle-component/circle-component.js') }}" ></script>
    <script>

        $('#showvideomodal').on('hidden.bs.modal', function (e) {
            // do something...
            var video = document.getElementById("modalshowvideo");
            video.currentTime = 0;
            video.pause();
        });
    </script>
    <script src="{{ asset( 'js/default-assets/home.js') }}"></script>
@endpush

@push('styles')
    <!-- my own circle-component css -->
    <link type="text/css" href="{{ asset( 'css/circle-component/circle-component.css') }}" rel='stylesheet' >
    <!-- my own carousel css -->
    <link type='text/css' href="{{ asset('css/my-own-carousel/my-carousel.css')}} " rel='stylesheet' >
@endpush

