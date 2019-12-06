
@extends('admin.layouts.app')

@section('content')
<div class="row live-container">
    <div class="col-md-4 ">
      <div class="card imagelist-container">
        <div class="card-header">
          Εικόνες
        </div>
        <div class="card-body list-group-container">
            <ul class="list-group" id='imagelist'>
                @foreach($images as $image)
                    <li image-id="{{ $image->id }}" image-url="{{ asset($image->img_url) }}" class="list-group-item" style="display:flex; flex-direction: row;">
                        <div style="width:30%;" >
                            <img src="{{ asset($image->img_url) }}" alt="" srcset="">
                        </div>
                        <div style=' width: 70%; padding: 10px;' >
                            {{ $image->title }}
                        </div>
                    </li>
                @endforeach
            </ul>
        </div>
      </div>
    </div>
    <div class="col-md-8 ">
      <div class="card video-section">
        <div class="card-header">Προβολή Εικόνας</div>
        <div class="card-body image-container">
            <img src='' id='mainimage' style='width:100%;' />
            <form action="{{ route('admin.images.delete') }}" method="post">
                @csrf
                <input type="hidden" name="image_id" id="image_id" />
                <button class="btn btn-danger" style="float:right;" id="btn-image-delete"><i class="fas fa-trash-alt"></i> ΔΙΑΓΡΑΦΗ </button>
            </form>
        </div>
      </div>
    </div>
</div>

@endsection


@push('scripts')

<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
<script>
$(".list-group-item").click(function(e){
    $("#mainimage").attr("src", $(this).attr("image-url"));
    $("#image_id").val($(this).attr("image-id"));
});
</script>
@endpush


@push('external-styles')

<link href='{{ asset("css/common/listcommon.css") }}' rel='stylesheet' />

@endpush





@push('page-styles')
    
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