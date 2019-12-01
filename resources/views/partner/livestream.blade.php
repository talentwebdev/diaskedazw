
@extends('partner.layouts.app')


@section('content')
    <div class="row live-container">
    <div class="col-md-8 ">
      <div class="card video-section">
        <div class="card-header"><i class="fas fa-podcast"></i> Live Streaming</div>
        <div class="card-body">
          <video style="border-radius: 20px; box-shadow: 10px 20px 40px rgba(0, 0, 0, .5);" loop="loop" poster="img/bg-img/22.jpg" id="mainVideo" controls>
          
          </video>
        </div>
      </div>
    </div>
    <div class="col-md-4 ">
      <div class="card chat-section">
        <div class="card-header"><i class="fas fa-envelope"></i> Message</div>
        <div class="card-body">
          <!-- Material input -->
          <div class="md-form">
              <i class="fas fa-envelope prefix"></i>
              <input type="text" id="form2" class="form-control">
              <label for="form2" class="">Input text</label>
          </div>
          <div class="row message-container" style='position:relative;'>
            <div class="chat-container">
              <img src="img/bg-img/10.jpg" alt="Avatar" style="width:100%;">
              <p>Hello. How are you today?</p>
              <span class="time-right">11:00</span>
            </div>
              
            <div class="chat-container darker">
              <img src="img/bg-img/10.jpg" alt="Avatar" class="right" style="width:100%;">
              <p>Hey! I m fine. Thanks for asking!</p>
              <span class="time-left">11:01</span>
            </div>
            
            <div class="chat-container">
              <img src="img/bg-img/10.jpg" alt="Avatar" style="width:100%;">
              <p>Sweet! So, what do you wanna do today?</p>
              <span class="time-right">11:02</span>
            </div>
            
            <div class="chat-container darker">
              <img src="img/bg-img/10.jpg" alt="Avatar" style="width:100%;">
              <p>Nah, I dunno. Play soccer.. or learn more coding perhaps?</p>
              <span class="time-left">11:05</span>
            </div>
            <div class="chat-container darker">
              <img src="img/bg-img/10.jpg" alt="Avatar" style="width:100%;">
              <p>Nah, I dunno. Play soccer.. or learn more coding perhaps?</p>
              <span class="time-left">11:05</span>
            </div>
            <div class="chat-container darker">
              <img src="img/bg-img/10.jpg" alt="Avatar" style="width:100%;">
              <p>Nah, I dunno. Play soccer.. or learn more coding perhaps?</p>
              <span class="time-left">11:05</span>
            </div>
            <div class="chat-container darker">
              <img src="img/bg-img/10.jpg" alt="Avatar" style="width:100%;">
              <p>Nah, I dunno. Play soccer.. or learn more coding perhaps?</p>
              <span class="time-left">11:05</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  @include('partner.chat.chat')
@endsection


@push('scripts')
    <script>
      new PerfectScrollbar( '.message-container' );
    </script>

@endpush


@push('page-styles')

.video-section, .chat-section{
  height:700px;
}

.uza-portfolio-area{
  position:relative;
}

.live-container{
  position: absolute;
  top:50%;
  margin-top:-350px;
  width:96%;
}

.live-container video{
  width: 100%;
  height: 600px;
}

.chat-container {
  border: 2px solid #dedede;
  background-color: #f1f1f1;
  border-radius: 5px;
  padding: 10px;
  margin: 10px 0;
  width:98%;
}

.chat-container.darker {
  border-color: #ccc;
  background-color: #ddd;
}

.chat-container::after {
  content: "";
  clear: both;
  display: table;
}

.chat-container img {
  float: left;
  max-width: 60px;
  width: 100%;
  margin-right: 20px;
  border-radius: 50%;
}

.chat-container img.right {
  float: right;
  margin-left: 20px;
  margin-right:0;
}

.chat-container .time-right {
  float: right;
  color: #aaa;
}

.chat-container .time-left {
  float: left;
  color: #999;
}

.message-container{
  margin-left:3%;
  width:97%;
  height:500px;
}


    
@endpush
