
@extends('company.dashboard.layouts.app')

@section('content')
<div class="row live-container">
    <div class="col-md-4 ">
      <div class="card imagelist-container">
        <div class="card-header">
          Λίστα Εικόνων
        </div>
        <div class="card-body list-group-container">
          <ul class="list-group" id='imagelist'>
              

            </ul>
        </div>
      </div>
    </div>
    <div class="col-md-8 ">
      <div class="card video-section">
        <div class="card-header">Προβολή Εικόνας</div>
        <div class="card-body image-container">
          <img src='' id='mainimage' style='width:100%;' />
          <button class="btn btn-danger" style="float:right;" id="btn-image-delete"><i class="fas fa-trash-alt"></i> ΔΙΑΓΡΑΦΗ </button>
        </div>
      </div>
    </div>
</div>

@include('partner.chat.chat')
@endsection


@push('scripts')

<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
@include("company.dashboard.js_partials.__js_image")

@endpush


@push('external-styles')

<link href='{{ asset("css/common/listcommon.css") }}' rel='stylesheet' />

@endpush





@push('page-styles')
body{
  overflow-x: hidden;
}
.video-section{
  height:auto;
  min-height: 700px;
}

.live-container video{
  width: 100%;
  height: 600px;
}

.imagelist-container{
  height:700px;
}

.image-container{
  overflow-y: auto;
}
.image-container::-webkit-scrollbar {
    width: 6px;
}
.image-container::-webkit-scrollbar-button {
    width: 6px;
    display: block;
    height: 100%;
}
.image-container::-webkit-scrollbar-thumb {
    width: 6px;
    border-radius: 4px !important;
    background-color: #d9d6d6;
    cursor: pointer;
}

.list-group-container
{
  height:80%;
  overflow-y: auto;
}
.list-group-container::-webkit-scrollbar {
    width: 6px;
}
.list-group-container::-webkit-scrollbar-button {
    width: 6px;
    display: block;
    height: 100%;
}
.list-group-container::-webkit-scrollbar-thumb {
    width: 6px;
    border-radius: 4px !important;
    background-color: #d9d6d6;
    cursor: pointer;
}

.list-group-item{
  height: auto !important;
}
.list-group-item *{
  cursor: pointer;
}


.live-container{
  margin-top:30px;
}


.btn.dropdown-toggle:after{
  text-align: center;
  display: inline;
  border: 0;
  font-family: "FontAwesome";
  text-decoration: inherit;
  text-rendering: optimizeLegibility;
  text-transform: none;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
  content: "\f107";
  font-size: 0.8rem;
  line-height: 0;
  vertical-align: middle;
  position: relative;
  margin-left: 0.255rem/*rtl:ignore*/;
  margin-right: 0.255rem/*rtl:ignore*/;
}

.Editor-editor{
  height:400px;
}

@endpush
