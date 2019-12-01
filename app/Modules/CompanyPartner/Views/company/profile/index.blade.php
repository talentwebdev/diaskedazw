@extends("layouts.app")

@include("company.profile.js_partials.__js_index")


@section("content")

@include('partner.test.firstpage')
@include('company.profile.partials.menudetail')

@include("company.profile.partials._index_advertise")


<div id='product-service-container'>
</div>
<section class='uza-portfolio-area mainarea-seciton' style='background-color:#EEE; position: relative;'>
    <div class='mainarea'>    
        <div class='main-area-content'>
            <div class='article-image-section'>
                <ul class="nav nav-tabs md-tabs" id="myTabMD" role="tablist" >
                    <a style="margin-right: auto; margin-left: 10px;">Category: {{ $company->category }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Area: {{ $company->area }}</a>
                    <li class="nav-item">
                        <a class="nav-link active" id="image-tab-md" data-toggle="tab" href="#image-md" role="tab" aria-controls="image-md"
                        aria-selected="false"><i class="fas fa-images"></i> Εικόνες</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="article-tab-md" data-toggle="tab" href="#article-md" role="tab" aria-controls="article-md"
                        aria-selected="true"><i class='fas fa-newspaper'></i>  Άρθρα</a>
                    </li>                    
                    <li class="nav-item">
                        <a class="nav-link" id="video-tab-md" data-toggle="tab" href="#video-md" role="tab" aria-controls="video-md"
                        aria-selected="false"><i class="fas fa-video"></i> Βίντεο</a>
                    </li>
                </ul>
                <div class="tab-content card " id="myTabContentMD" >
                    <div class="tab-pane fade my-custom-scrollbar my-custom-scrollbar-primary " id="article-md" role="tabpanel" aria-labelledby="home-tab-md">
                        
                    </div>
                    <div class="tab-pane fade show active my-custom-scrollbar1" id="image-md" role="tabpanel" aria-labelledby="profile-tab-md">
                        
                    </div>
                    <div class="tab-pane fade my-custom-scrollbar1" id="video-md" role="tabpanel" aria-labelledby="profile-tab-md">
                        
                    </div>
                </div>
            </div>
        </div>
        @include('company.profile.partials._stickysidebar')
    </div>

    <div class="mainarea" style="padding: 30px;">
        @include('company.profile.partials._company_partner_info')
    </div>
</div>

@include('other.footer')
@endsection

@push("styles")
    <link rel="stylesheet" href="{{ asset('plugins/web/assets/mobirise-icons/mobirise-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/gallery/style.css') }}">

    <link rel='stylesheet' href="{{ asset('css/user-pages/partnerprofile/style.css') }}" type='text/css'>
    <style>
        li.nav-item > .nav-link{
            background-color:#000;
        }
        .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active{

        }
        div.tab-item-container{
            float:right; 
            display: flex; 
            left: 100%; 
            transform:traslateX(-100%);
        }
        .md-tabs{
            background-color:#FFF;
            justify-content:flex-end;
        }
    </style>
@endpush

@push("scripts")
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_grey.js") }}'></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script src='{{ asset("plugins/carouselengine/amazingcarousel.js") }}'></script>
@endpush