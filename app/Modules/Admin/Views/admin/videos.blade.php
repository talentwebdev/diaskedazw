@extends('admin.layouts.app')

@section('content')
<div class="row live-container">
    <div class="col-md-4 ">
      <div class="card videolist-container">
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
        <div class="card-body">
            <video style="border-radius: 20px; box-shadow: 10px 20px 40px rgba(0, 0, 0, .5);" loop="loop" poster="img/bg-img/22.jpg" id="mainVideo" controls>            
            </video>
            <form action="{{ route('admin.video.delete') }}" method='post'>
                @csrf
                <input type='hidden' name='video_id' id="video_id" />
                <button class="btn btn-danger" style="float:right;" id="btn-video-delete"><i class="fas fa-trash-alt"></i> ΔΙΑΓΡΑΦΗ </button>
            </form>              
        </div>
      </div>
    </div>
</div>
@endsection

@push('scripts')
<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
<script>
$("#btn-video-delete").addClass("disabled")
$(".list-group-item").click(function(e){    
    var videoEl = document.getElementById( 'mainVideo' );
    videoEl.poster = $(this).find('img').attr("src");
    videoEl.src = $(this).attr("video-url");
    videoEl.load();

    $("#video_id").val($(this).attr("video-id"));
    $("#btn-video-delete").removeClass("disabled");
});
</script>   
@endpush

@push('page-styles')

.video-section{
  height:auto;
}

.live-container video{
  width: 100%;
  height: 600px;
}

.videolist-container{
  height:700px;
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

@endpush


@push('external-styles')

<link href='{{ asset("css/common/listcommon.css") }}' rel='stylesheet' />
  
@endpush