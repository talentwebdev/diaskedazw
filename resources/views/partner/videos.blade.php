
@extends('partner.layouts.app')


@section('content')
<div class="row live-container">
    <div class="col-md-4 ">
      <div class="card videolist-container">
        <div class="card-header">
          Videos
        </div>
        <div class="card-body list-group-container">
          <ul class="list-group" id='videolist'>
              
            </ul>
        </div>
      </div>
    </div>
    <div class="col-md-8 ">
      <div class="card video-section">
        <div class="card-header">Video Player</div>
        <div class="card-body">
          <video style="border-radius: 20px; box-shadow: 10px 20px 40px rgba(0, 0, 0, .5);" loop="loop" poster="img/bg-img/22.jpg" id="mainVideo" controls>
          
          </video>
          <button class="btn btn-danger" style="float:right;" id="btn-video-delete"><i class="fas fa-trash-alt"></i> ΔΙΑΓΡΑΦΗ </button>
        </div>
      </div>
    </div>
</div>

@include('partner.chat.chat')
@endsection


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




@push('scripts')
<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
<script src="{{ asset('js/partner-pages/videos/index.js') }}"></script>

<script>
</script>

<script>
</script>


@endpush
