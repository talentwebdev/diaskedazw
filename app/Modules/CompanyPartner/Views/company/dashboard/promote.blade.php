
@extends('company.dashboard.layouts.app')


@section('content')

 <div class="card" style='width:80%; margin:auto;'>
    <div class="card-header">
        Promote 
    </div>
    <div class="card-body list-group-container">
        <div>
            <h2><i class="fas fa-video" style='font-size:20px;'></i> Βίντεο </h2>
            <div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>
                <div style='padding: 10px;'>
                    <label class="radio-btn-container promote-visitor">Προβολή για τους επισκέπτες
                        <input type="radio"  checked name="area">
                        <span class="checkmark"></span>
                    </label>
                </div>
                <div style='padding: 10px;'>
                    <label class="radio-btn-container promote-member">Προβολή για τα μέλη
                        <input type="radio"  name="area">
                        <span class="checkmark"></span>
                    </label>
                </div>
                <div style='padding: 10px;'>
                    <label class="radio-btn-container profile">Προφίλ
                        <input type="radio" name="area">
                        <span class="checkmark"></span>
                    </label>
                </div>
            </div>
            <form action="{{ route('uploadvideo.file') }}" method='post' enctype='multipart/form-data' id='js-upload-form'>
                @csrf
            </form>

            <div class="upload-drop-zone" id="drop-zone">            
                <div class="form-group">
                    <h2> <i class="fas fa-upload" style='color: rgb(0, 173, 239); font-size:50px;'></i> </h2> 
                    <h4> Τοποθετήστε το αρχείο εδώ! </h4> 
                    <input type="file" name="video" id="video" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple="">
                    <label for="video"><svg xmlns="#" width="20"  viewBox="0 0 20 17">
                        <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
                        </svg> <span>Αναζήτηση…</span></label>
                </div>                      
            </div>
            <div class="progress" style='height:1px;'>
              <div class="progress-bar" role="progressbar" id='video-progress' style="height:100%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
            </div>

            <div id='preview-video-container'>
                <video id="preview-video" loop="loop" width="100%" height='100%' poster="{{ asset('img/bg-img/22.jpg') }}" controls>
                    <source src="{{ asset('videos/diaskedazo.mp4') }}" type="video/mp4">
                </video>
            </div>            
        </div>
        <hr/>
        <div>
            <h2><i class="fas fa-bullhorn" style='font-size:20px;'></i> Ανακώσεις </h2>
            <div class="md-form">
                <i class="fab fa-cuttlefish prefix"></i>
                <input type="text" id="announce-title" class="form-control">
                <label for="announce-title" class="">Τίτλος</label>
            </div> 
            <div class="md-form amber-textarea active-amber-textarea-2">
              <i class="fas fa-pencil-alt prefix"></i>
              <textarea id="announce-content" class="md-textarea form-control" rows="3"></textarea>
              <label for="announce-content">Ανακοίνωση</label>
            </div> 
            <div class='btn btn-primary' style='float:right;' id='btn-save-announce'><i class="fas fa-upload"></i> ΑΠΟΘΗΚΕΥΣΗ</div>   
        </div>
    </div>
</div>
@include('partner.chat.chat')
@endsection


@push('external-styles')

<link rel='stylesheet' href="{{ asset('plugins/editor/editor.css') }}">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href='{{ asset("css/common/listcommon.css") }}' rel='stylesheet' />
<link href="{{ asset('plugins/radiobutton/radiobutton.css') }}" rel="stylesheet" />
@endpush


@push('page-styles')
    

.video-section{
  height:700px;
}

.live-container video{
  width: 100%;
  height: 600px;
}

.articlelist-container{
  height:700px;
}

.list-group-container
{
  height:80%;
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

.selected{
  color:#FFF !important;
  background-color:rgb(0, 162, 232);
}
/* layout.css Style */
.upload-drop-zone {
  height: 200px;
  border-width: 2px;
  margin-bottom: 50px;
  margin-top:20px;
}

/* skin.css Style*/
.upload-drop-zone {
  color: #ccc;
  border-style: dashed;
  border-color: #ccc;
  text-align: center
}
.upload-drop-zone.drop {
  color: #222;
  border-color: #222;
}

/*///////////////////////////
     inputfile strat
///////////////////////////*/

.inputfile {
    width: 0.1px;
    height: 0.1px;
    opacity: 0;
    overflow: hidden;
    position: absolute;
    z-index: -1;
}
.inputfile-1 + label {
    color: #ffffff;
    background-color: #32c5d2;
}
.inputfile + label {
    width:200px;
    font-size: 1.25rem;
    font-weight: 700;
    text-overflow: ellipsis;
    white-space: nowrap;
    cursor: pointer;
    display: inline-block;
    overflow: hidden;
    padding: 0.625rem 1.25rem;
}
.inputfile + label svg {
    width: 1em;
    height: 1em;
    vertical-align: middle;
    fill: currentColor;
    margin-top: -0.25em;
    margin-right: 0.25em;
}
/*///////////////////////////
     inputfile end
///////////////////////////*/
#preview-video-container{
  width: 400px;
  height: 300px;
  margin: auto;
  display: none;
}
@endpush


@push('scripts')
<script>
    const video_url = "{{ Auth::user()->partner->video_url }}";
</script>
<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
<script src="{{ asset('js/partner-pages/promote/index.js') }}"></script>
@endpush
