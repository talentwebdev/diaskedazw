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
    var content_id = "";
</script>
<script src="{{ asset( 'js/user-pages/partnerprofile/home/index.js') }}"></script>
<script src='{{ asset("plugins/calendar/core/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/interaction/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/daygrid/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/timegrid/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/bootstrap/main.min.js") }}'></script> 
<script src="{{ asset('plugins/sticky-sidebar/sticky-sidebar.js') }}"></script>
@endpush

@section('content')
<!-- ***** Welcome Area Start ***** -->
<!-- Single Welcome Slide -->
@include('partner.test.firstpage')
@include('user.partnerprofile.component.menudetail')
<div class="advertise-section">
    <div class="row" style='width:80%; margin:auto;'>    
        <div class="col-md-8 video-area">
            <div>
                <video loop="loop" width="100%" id="mainVideo" controls>
                @auth
                    <source src="{{ asset($partner->partner->promote_member_video_url) }}" type="video/mp4">
                @else
                    <source src="{{ asset($partner->partner->promote_visitor_video_url) }}" type="video/mp4">
                @endauth
                    <source src="video.ogg" type="video/ogg">
                    <source src="video.webm" type="video/webm">
                    <object data="{{ asset('video/diaskedazo.mp4') }}" width="100%" height="380">
                    <embed src="video.swf" width="100%" height="380">
                    </object>
                </video>
            </div>
        </div>
                <!-- Welcome Thumbnail -->
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
    </div>
</div>
<!-- ***** Welcome Area End ***** -->

<!-- Video area start -->
<section class='uza-portfolio-area video-section-area'>
    @include('user.partnerprofile.component.videocarousel', ['page'=>'partnerprofile'])
</section>
<!-- Video area End -->

<!-- ***** Main Area Start ***** -->
<section class='uza-portfolio-area mainarea-seciton' style='background-color:#EEE; position: relative;'>
    <div class='mainarea'>    
        <div class='main-area-content'>
            <div class='article-image-section'>
                <ul class="nav nav-tabs md-tabs" id="myTabMD" role="tablist" >
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab-md" data-toggle="tab" href="#home-md" role="tab" aria-controls="home-md"
                        aria-selected="true"><i class='fas fa-video-camera'></i>  Άρθρα</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab-md" data-toggle="tab" href="#profile-md" role="tab" aria-controls="profile-md"
                        aria-selected="false"><i class="fas fa-images"></i> Εικόνες</a>
                    </li>

                

                </ul>
                <div class="tab-content card " id="myTabContentMD" >
                    <div class="tab-pane fade show active my-custom-scrollbar my-custom-scrollbar-primary " id="home-md" role="tabpanel" aria-labelledby="home-tab-md">
                        @include('user.partnerprofile.component.article', ['count'=>'4'])
                    </div>
                    <div class="tab-pane fade my-custom-scrollbar1" id="profile-md" role="tabpanel" aria-labelledby="profile-tab-md">
                        @include('user.partnerprofile.component.gallery', ['count'=>'9'])
                    </div>
                    
                </div>
            </div>
            <div class='partner-info-secion'>
                <div class='row'>
                    <div class='col-md-4'>
                        <img src="{{ asset($partner->partner->fullimg_url) }}">
                    </div>
                    <div class='col-md-8'>
                        <div class='partner-tip-container'>
                            <span class='tip-box' style="color:white;">Προσωπικό Σημείωμα</span>
                            <div class='partner-info-tip'>{{ $partner->partner->say }} </div>
                        </div>
                        <div class='partner-summary-container'>
                            <span class='tip-box' style="color:white;">Πληροφορίες Συνεργάτη</span>
                            <div class='partner-info-summary'>{{ $partner->summary }}</div>
                        </div>
                    </div>
                </div>
            </div>
            @include('user.partnerprofile.component.calendar')
        </div>
        @include('user.partnerprofile.component.stickysidebar')
        @include('other.activateappointmentdlg')
        @include('other.activatechatdlg')
    </div>
    <!-- site carousel -->
    @include('user.partnerprofile.component.sitecarousel')
    <!-- site carousel end -->
  
    
</section>
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
<link rel="stylesheet" href="{{ asset('plugins/web/assets/mobirise-icons/mobirise-icons.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/gallery/style.css') }}">

<link rel='stylesheet' href="{{ asset('css/user-pages/partnerprofile/style.css') }}" type='text/css'>
@endpush

@push('scripts')
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_grey.js") }}'></script> 
@endpush