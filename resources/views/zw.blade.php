@extends('layouts.app')

@section('content')

<!-- style section -->
<style>
  .sidenav {
  height: 100%;
  width: 15%;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #fff;
  overflow-x: hidden;
  padding-top: 20px;
  box-shadow:
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  color: #818181;
  display: block;
}
.sidenav a span{
  margin-left: 20px;
}

.sidenav a:hover {
  color: #f1f1f1;
}

#link h6{
  color:  #818181;
  margin-left: 10px;
  font-size: 15px;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>

<link rel="stylesheet" href="{{ asset('css/my-video-player/scrollbar.css') }}" />
<!-- style section end -->

<!-- html element -->
    <!-- service sidebar -->
    <!--
    <nav class='navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white' id='sidenav-main'>
      <div class='container-fluid' id="main-content">
        <div class='navbar-brand pt-0' href='./index.html' style='height: 60px;'></div>
        <div class='collapse navbar-collapse' id='sidenav-collapse-main'>
          <ul class='navbar-nav' id="items"></ul><hr class='my-3'><h6 class='navbar-heading text-muted'>Other link</h6><ul class='navbar-nav mb-md-3' id="otherlink"></ul>
        </div>
      </div>
    </nav>
-->
    <div class="breadcrumb-bg-curve breadcrumb-area" style='position: absolute; right: 0px;'>
        <img src="http://localhost/laravel/public/img/core-img/curve-5.png" alt="">
    </div>

    <div class="sidenav shadow-lg" id="sidebar">
      <div style="height: 100px;" ></div>
      <div id="service"></div>
      <hr class="my-3">
      <div id="link">
        <h6> OTHER LINK </h6>
      </div>

      <!-- Background Curve -->
      <div class="portfolio-bg-curve">
            <img src="{{ asset('img/core-img/curve-2.png') }}" alt="">
        </div>
    </div>
    <!-- service sidebar end -->
    <!-- main section -->
    <section style="width: 80%; float: right;" class="uza-portfolio-area section-padding-80">
      <!-- video panel -->
      <div class="video-player-panel shadow-lg" >

        <div id="video-rating-ability-wrapper" style="align-content: right; text-align: right; z-order: 1000;"></div>
        <div class="row" id="videoPanel">
        </div>
      </div>
      <!-- video panel end -->


      <!-- article panel -->
      <div class="article-view-panel shadow-lg">
        <div id="article-rating-ability-wrapper" style="align-content: right; text-align: right;"></div>
        <div class="row" id="article-view-panel"></div>
      </div>
      <!-- article panel end -->
    </section>
    <!-- main-section end -->


      <div id="pageAttr" attr="zw" csrf="{{ csrf_token() }}"></div>

<!-- html element end -->

<!-- java script core -->
    <!-- jquery plugin -->
    <script type="text/javascript" src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>

    <!-- my video player javascript -->
    <script type="text/javascript" src="{{ asset('js/my-video-player/my-video-player.js') }}"></script>

    <!-- my article view javascript -->
    <script type="text/javascript" src="{{ asset('js/my-article-view/my-article-view.js') }}"></script>

    <!-- my side navbar javascript -->
    <script type="text/javascript" src="{{ asset('js/my-side-navbar/my-side-navbar.js') }}"></script>

    <!-- my rating javascript -->
    <script type="text/javascript" src="{{ asset('js/my-rating/my-rating.js') }}"></script>

    <script src="{{ asset( 'js/default-assets/zw.js') }}"></script>

    <script>
      /*
        var sidevar_ops = {
            service: [
                { id: 1, img_url: "icon-mo-Football", img_color: "rgb(255, 0, 0)", cost: 100, title: "Football", description: "This is ABCD"},
                { id: 2, img_url: "icon-mo-Psychology", cost: 100, title: "Psychology", description: "This is BCDE"},
                { id: 3, img_url: "icon-mo-Sports_Coach", cost: 100, title: "Coach", description: "This is CDEF"},
                { id: 4, img_url: "icon-mo-Sports_Equipment", cost: 100, title: "DEFG", description: "This is DEFG"}
                ],

                link:[
                { link_url: "index.html", img_url: "icon-mo-home",  title: "index" },
                { link_url: "services.html", img_url: "icon-mo-Profile", title: "services" }
                ]
            };

        var sidebar = $( "#sidebar" ).my_own_sidebar( sidevar_ops );

        $( "#sidebar" ).on( "sevice-select", function( event, element ) {

        } );
        */
/*
        var video = {
        "id": 1,
        "partner_id": 2,
        "service_id": 3,
        "video_url": "videos/diaskedazo.mp4",
        "title": "Hello",
        "adimg_url": "img/bg-img/1.png",
        "popular": 4,
        "user": "hello"

      };

      //var playerComponent  = $("#videoPanel").my_video_player([video, video, video, video]);
      var video1 = {
        "id": 1,
        "partner_id": 2,
        "service_id": 3,
        "video_url": "videos/diaskedazo.mp4",
        "title": "Hello",
        "adimg_url": "img/bg-img/19.jpg",
        "popular": 4,
        "user": "hello"

      };
      //playerComponent.addVideoList(video1);


      var article = {

                "id": 1,
                "partner_id": 2,
                "service_id": 3,
                "title": "my first title",
                "content": "my first content",
                "popular": 5,
                "user": {
                    "id": 3,
                    "img_url": "img/bg-img/15.jpg",
                    "name": "jupyong"
                }

            };
         var articleComponent  = $("#article-view-panel").my_article_view([article, article, article, article, article, article]);
         */
    </script>
<!-- java script core end -->
@endsection
