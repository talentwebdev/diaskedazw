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
</script>
<script src="{{ asset( 'js/user-pages/shopprofile/index.js') }}"></script>
<script src="{{ asset('plugins/sticky-sidebar/sticky-sidebar.js') }}"></script>
@endpush

@section('content')
<!-- ***** Welcome Area Start ***** -->
<!-- Single Welcome Slide -->
@include('partner.test.firstpage')
@include('user.shopprofile.components.menudetail')
<div class="advertise-section">
    <div class="row" style='width:80%; margin:auto;'>    
        <div class="col-md-8 video-area">
            <div>
                <video loop="loop" width="100%" id="mainVideo" controls>
                    <source src="{{ asset($partner->video_url) }}" type="video/mp4">
                </video>
            </div>
        </div>
                <!-- Welcome Thumbnail -->
        <div class="col-md-4 info-area">
            <div class='announce-panel'>
                <div class='card'>
                    <div class='card-body' style="position:relative;" >
                        <ul class='list-group' id='announce-list'>
                        <!--  
                            <li class='list-group-item' style="display:flex; flex-direction: row;">
                                <div style="width: 30%; padding: 10px;"><img src="{{ asset('images/overview/121563525434.jpg') }}" width='100%' /></div>
                                <div style="padding: 10px;">
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                </div>
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

<div id="pageAttr" attr="partnerprofile"></div>
<!-- ***** Portfolio Area End ***** --


    <!-- ***** Promote Packages Area Start ***** -->
    <section class='uza-services-area' style='padding: 50px; background-color:rgba(0, 0, 0, 0.7); position:relative;'>
        <div class="advertise-title" style="top: 0; transform: translateY(-100%); opacity: 0.7; border-radius: 20px 20px 0px 0px; background:black; left: 10%; z-index:1;  width: auto; padding-left: 30px; padding-right: 30px;">Διαφήμιση</div>
        <div class='row '>
            <div class='owl-carousel owl-theme promote-packages-container'>
                
            </div>
        </div>
    </section>

    <!-- diask product setion -->
    <section class='uza-services-area' style='background-color:#EEE;'>
        <div class='diask-product-section'>
            <div class='side-product-container row'>
                <div class='mobile-sidebar-container col-md-12'>
                    <h4 class='product-sidebar-title'>Εταιρείες & Συνεργάτες</h4>
                    <div class="wrap-select">
                        <label>Κατηγορία:</label>
                        <div id="dd1" class="wrapper-dropdown-3">
                            <span>Κατηγορία...</span>
                            <ul class="dropdown" id='category-dropdown'>
                                							
                            </ul>
                        </div>
                    </div>
                </div>
                <div class='sidebar-container col-md-3'>
                    @include('user.shopprofile.components.sidebar')
                </div>
                <div class='product-panel-container col-md-9'>
                    @include('user.shopprofile.components.productpanel', ["isFavorite" => false])
                    @include('user.shopprofile.components.productdetail')
                </div>
            </div>
        </div>
    </section>
    <!-- diask product section end -->

    <!-- ***** Become a partner Area Start ***** -->
    <section class="uza-services-area become-partner-section" style='z-index: 200; background-color:#AAA;'>
        <div class='become-partner' style='width: 80%; margin:auto;'>
            <div class='row' >
                <div class='col-md-6' style='z-index: 200; position:relative;'>
                    <img src='{{ asset("img/bg-img/layer-125.png") }}' />
                </div>
                <div class='col-md-6' style='text-align:center; color: #000; margin-top:-10px;'>
                    <h2 style='font-weight: 800; color:#2196F3;'>Θέλετε να προσφέρετε και εσείς; </h2>
                    <h5 style='font-weight: 600; margin-top:-5px;'> Ενημερωθείτε για τα ωφελήματα και πλεονεκτήματα των επιχειρήσεων που συνεργάζονται με την Diaskedazw.  </h2><p></p>
                    <a style='margin-top: 10px; padding-left: 50px; padding-right: 50px; border-radius: 20px; padding-top:10px; padding-bottom:10px; background-color:#2196F3; color:#FFF;'>ΕΝΔΙΑΦΕΡΟΜΑΙ</a>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Become a partner Area End ***** -->  


@include('other.footer')

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
<link rel='stylesheet' href="{{ asset('css/user-pages/product/style.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/web/assets/mobirise-icons/mobirise-icons.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/gallery/style.css') }}">

<link rel='stylesheet' href="{{ asset('css/user-pages/shopprofile/style.css') }}" type='text/css'>
<link rel='stylesheet' href="{{ asset('plugins/select-component/select-component.css') }}">
@endpush

@push('scripts')
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_yellow.js") }}'></script> 
@endpush