@extends('layouts.app')

@include('company.profile.js_partials.__js_article')

@section('content')

@include('partner.test.firstpage')
@include('company.profile.partials.menudetail')

<section class='uza-portfolio-area mainarea-seciton' style='width: 90%; margin:auto; margin-top: 50px; margin-bottom: 50px; position: relative;'>
    <div class='mainarea'>    
        <div class='main-area-content'>
            <div class='row' style='width:100%; border-bottom: 1px solid #444;'>
                <div class='col-md-6'>
                    <h4 class='article-gallery-title' style='border-bottom:0px solid;'> 
                        <i class='fas fa-newspaper'></i> Άρθρα                  
                    </h4>
                </div>
            </div>
            
            @include('user.partnerprofile.component.articleshow')
            <div id='article-container' style="margin-top: 20px;">
            </div>
        </div>
        @include('company.profile.partials._stickysidebar')
    </div>
</section>

<!-- ***** Site Area Start ***** -->
<section class="uza-portfolio-area">
    <!-- Other sites introducing -->
    @include('user.partnerprofile.component.sitecarousel')
    <!-- Other sites introducing End -->
</section>
<!-- ***** Site Area End ***** -->

@include('other.footer')
@endsection

@push("scripts")
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_grey.js") }}'></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script src='{{ asset("plugins/carouselengine/amazingcarousel.js") }}'></script>
@endpush

@push("styles")
    <link rel="stylesheet" href="{{ asset('plugins/web/assets/mobirise-icons/mobirise-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/gallery/style.css') }}">

    <link rel='stylesheet' href="{{ asset('css/user-pages/partnerprofile/style.css') }}" type='text/css'>
@endpush