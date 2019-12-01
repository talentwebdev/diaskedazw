
@extends('admin.layouts.app')

@section('content')
<div class="row live-container">
    <div class="col-md-4 ">
      <div class="card imagelist-container">
        <div class="card-header">
          Βίντεο
        </div>
        <div class="card-body list-group-container">
            <ul class="list-group" id='videolist'>
                @foreach($videos as $video)
                <li video-id="{{ $video->id }}" video-url="{{ asset($video->video_url) }}" class="list-group-item" style="display:flex; flex-direction: row;">
                    <div style="width:30%;" >
                        <img src="{{ asset($video->adimg_url) }}" alt="" srcset="">
                    </div>
                    <div style=' width: 70%; padding: 10px;' >
                        {{ $video->title }}
                    </div>
                </li>
                @endforeach
            </ul>
        </div>
      </div>
    </div>
    <div class="col-md-8 ">
      <div class="card video-section">
        <div class="card-header">Προβολή Βίντεο</div>
        <div class="card-body image-container">
            <video style="border-radius: 20px; box-shadow: 10px 20px 40px rgba(0, 0, 0, .5);" loop="loop" poster="img/bg-img/22.jpg" id="mainVideo" controls>            
            </video>
            <button class="btn btn-primary" style="float:right;" id="btn-video-accept"><i class="fas fa-check"></i> ΕΓΚΡΙΣΗ </button>
            <button class="btn btn-danger" style="float:right;" id="btn-video-deny"><i class="fas fa-times"></i> ΑΠΟΡΡΙΨΗ </button>            
        </div>
      </div>
    </div>
</div>
<form action="{{ route('admin.video.accept') }}" method='post' id='video-accept-form'>
    @csrf
    <input type="hidden" name='video_id' id='accept_video_id' />
</form>
<form action="{{ route('admin.video.deny') }}" method='post' id='video-deny-form'>
    @csrf
    <input type="hidden" name='video_id' id='deny_video_id' />
</form>
@endsection


@push('scripts')
<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
<script>
$(".list-group-item").click(function(e){
    var videoEl = document.getElementById( 'mainVideo' );
    videoEl.poster = $(this).find('img').attr("src");
    videoEl.src = $(this).attr("video-url");
    videoEl.load();

    $("#accept_video_id").val($(this).attr("video-id"));
    $("#deny_video_id").val($(this).attr("video-id"));
});
$("#btn-video-accept").click(e => {
    $("#video-accept-form").submit();
});
$("#btn-video-deny").click(e => {
    $("#video-deny-form").submit();
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
