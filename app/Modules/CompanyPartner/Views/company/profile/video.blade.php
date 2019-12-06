@extends('layouts.app')

@include('company.profile.js_partials.__js_video')

@section('content')

@include('partner.test.firstpage')
@include('company.profile.partials.menudetail')

<section class='uza-portfolio-area mainarea-seciton' style='width: 90%; margin:auto; margin-top: 50px; margin-bottom: 50px; position: relative;'>
    <div class='mainarea'>    
        <div class='main-area-content'>
            
            <div id='video-container' style="margin-top: 20px;">
            </div>
        </div>
        @include('company.profile.partials._stickysidebar')
    </div>
</section>

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