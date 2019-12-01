@extends('layouts.app')


@push('scripts')    
<!-- script core -->

<!-- jquery plugin -->
<!-- All js -->
<script> 
    var partner = {
        "id": "{{ $partner->id }}",
        "img_url": "{{ $partner->img_url }}",
        "name": "{{ $partner->name }}",
        "email": "{{ $partner->email }}"
    };
    var content_id = "{{ $content_id }}";
    console.log("partner", partner);
</script>
<script src='{{ asset("plugins/calendar/core/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/interaction/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/daygrid/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/timegrid/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/bootstrap/main.min.js") }}'></script> 
<script src="{{ asset( 'js/user-pages/partnerprofile/gallery/index.js') }}"></script>
@endpush

@section('menu-detail')
    @include('user.partnerprofile.component.menudetail')
@endsection

@section('content')
<!-- ***** Welcome Area Start ***** -->
<!-- Single Welcome Slide -->
@include('partner.test.firstpage')
<!-- ***** Welcome Area End ***** -->

<!-- ***** Main Area Start ***** -->
<section class='uza-portfolio-area mainarea-seciton' style='width: 90%; margin:auto; margin-top: 50px; margin-bottom: 50px; position: relative;'>
    <div class='mainarea'>    
        <div class='main-area-content'>
            <h4 class='image-gallery-title'> <i class='fas fa-image'></i> Gallery </h4>
            @include('user.partnerprofile.component.gallery', ['count'=>'-1'])
            @include('user.partnerprofile.component.calendar')
        </div>
        @include('user.partnerprofile.component.stickysidebar')
        @include('other.activateappointmentdlg')
        @include('other.activatechatdlg')
    </div>
</section>

<!-- site carousel -->
<section class='uza-portfolio-area' style='background-color:#EEE; padding: 20px;'>
    @include('user.partnerprofile.component.sitecarousel')
</section>
<!-- site carousel end -->
<div id="pageAttr" attr="partnerprofile"></div>
<!-- ***** Portfolio Area End ***** --

@include('other.footer')

<!-- chatting component -->
@if(Auth::user() != null && Auth::user()->isActivated() == true)
@include('other.chat')
@endif

@endsection

@push('styles')
<style>
.vidplayer-container{
    margin-top: 50px !important;
    
}
.card{
    border: 1px solid rgba(0, 0, 0, 0.16);
}
.card-body{
    overflow-y: auto;
    overflow-x: hidden;
    height: 100%;
}
.card-body::-webkit-scrollbar {
    width: 6px;
}
.card-body::-webkit-scrollbar-button {
    width: 6px;
    display: block;
    height: 100%;
}
.card-body::-webkit-scrollbar-thumb {
    width: 6px;
    border-radius: 4px !important;
    background-color: #d9d6d6;
    cursor: pointer;
}
</style>
<link rel='stylesheet' href="{{ asset('css/user-pages/partnerprofile/style.css') }}" type='text/css'>
<link type='text/css' href='{{ asset("css/loading/style.css") }}' rel='stylesheet'>
@endpush

@push('scripts')
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_grey.js") }}'></script> 
@endpush