@extends('layouts.app')

@section('content')
<section class="section-padding-80">
    @if( Auth::user() != null && Auth::user()->isActivated() && Auth::user()->isActiveEshop())
    <!-- upload user eshop promote video part -->
    <form action="{{ route('uploadvideo.file') }}" method='post' enctype='multipart/form-data' id='js-upload-form'>
        @csrf
    </form>

    <div class="container">
        <h2>Upload Promote Video<h2>    
        <div id='preview-video-container'>
            <video id="preview-video" loop="loop" width="100%" height='100%' controls>
                <source src="{{ asset(Auth::user()->video_url) }}" type="video/mp4">
            </video>
        </div>  
        <div class="upload-drop-zone" id="drop-zone">            
            <div class="form-group">
                <h2> <i class="fas fa-upload" style='color: rgb(0, 173, 239); font-size:50px;'></i> </h2> 
                <h4> Drag and drop anywhere to upload </h4> 
                <input type="file" name="video" id="video" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple="">
                <label for="video"><svg xmlns="#" width="20"  viewBox="0 0 20 17">
                    <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
                    </svg> <span>Choose a file…</span></label>
            </div>                      
        </div>
        <div class="progress" style='height:1px;'>
            <div class="progress-bar" role="progressbar" id='video-progress' style="height:100%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
    </div>
    <!-- upload user eshop promote video part end -->

    @endif

    <hr />    
    <div class="container">
        <h2> Products </h2>
        <div class="row">
            <div class='searchbox col-md-8'>
                <div id="cover">
                    <div class="tb">
                        <div class="td"><input type="text" id='search' placeholder="Search" required></div>
                        <div class="td" id="s-cover">
                            <i class="fas fa-search"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <button class="btn btn-primary form-control" id="addProductBtn"> Add Product </button>
            </div>
        </div>
    </div>
   
    <div class="container">
        <div class="row" id="product-list">
        </div>
    </div>
</section>

<form action="{{ route('productedit') }}" method='post' id="productEditPageForm" style="display:none;">
    @csrf
    <input type="text" name="product_id" id="productID" />
</form>

@if(Auth::user()->isActiveCompany())
    @include("eshop.discountpartial")
@endif
@endsection

@push("styles")
<link rel='stylesheet' href="{{ asset('plugins/searchbox/searchbox.css') }}" />
<link rel="stylesheet" href="{{ asset('css/user-pages/eshop/style.css') }}" />
@endpush

@push("scripts")
<script src="{{ asset('js/user-pages/eshop/productview.js') }}"></script>
<script></script>
@endpush