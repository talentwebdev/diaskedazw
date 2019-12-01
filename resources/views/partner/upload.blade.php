

@extends('partner.layouts.app')


@section('content')
  <div class="row">
    <div class="card upload-container">
      <ul class="nav nav-tabs md-tabs" id="myTabMD" role="tablist" style='height:10%;'>
        <li class="nav-item">
          <a class="nav-link active" id="home-tab-md" data-toggle="tab" href="#home-md" role="tab" aria-controls="home-md"
            aria-selected="true"><i class='fas fa-video'></i> Videos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="profile-tab-md" data-toggle="tab" href="#profile-md" role="tab" aria-controls="profile-md"
            aria-selected="false"><i class="fas fa-newspaper"></i> Άρθρα</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="contact-tab-md" data-toggle="tab" href="#contact-md" role="tab" aria-controls="contact-md"
            aria-selected="false"><i class="fas fa-images"></i> Εικόνες</a>
        </li>
      </ul>
      <div class="tab-content">
        <!-- video   panel -->
        <div class="tab-pane fade show active" id='home-md' role='tabpanel' aria-labelledby="home-tab-md">
          <div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>
              <div style='padding: 10px;'>
                  <label class="radio-btn-container promote-video">Προβολή για τους επισκέπτες
                      <input type="radio"  checked name="video">
                      <span class="checkmark"></span>
                  </label>
              </div>
              <div style='padding: 10px;'>
                  <label class="radio-btn-container content-video">Προβολή για τα μέλη
                      <input type="radio" name="video">
                      <span class="checkmark"></span>
                  </label>
              </div>
          </div>
          <form action="{{ route('uploadimage') }}" method='post' enctype='multipart/form-data' id='video-image-container'>
            @csrf
            <!-- image-preview-filename input [CUT FROM HERE]-->
            <div class="input-group image-preview" >
              <input type="text" class="form-control image-preview-filename" style='border-bottom:1px #555 solid !important;' disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
              <span class="input-group-btn">
                  <!-- image-preview-clear button -->
                  <button type="button" class="btn btn-primary image-preview-clear" style="display:none;background-color:#2BBBAD !important;">
                      <i class="fas fa-remove"></i> Ακύρωση
                  </button>
                  <!-- image-preview-input -->
                  <div class="btn btn-btn-primary image-preview-input" style='background-color:#2BBBAD !important;'>
                      <i class="fas fa-folder-open"></i>
                      <span class="image-preview-input-title">Επιλογη εικονας</span>
                      <input type="file" accept="image/png, image/jpeg, image/gif" name="image"/> <!-- rename it -->
                      <input type='hidden' name='imgurl' val='null' />
                  </div>
              </span>
            </div>
            <div class='progress' id="progressDivId">
              <div class='progress-bar' id='progressBar'></div>
            </div>
          </form>
          

            <!-- /input-group image-preview [TO HERE]--> 
          <form action="{{ route('uploadvideo.file') }}" method='post' enctype='multipart/form-data' id='js-upload-form'>
            @csrf
          </form>

          <div class="upload-drop-zone" id="drop-zone">            
            <div class="form-group">
              <h2> <i class="fas fa-upload" style='color: rgb(0, 173, 239); font-size:50px;'></i> </h2> 
              <h4> “Ανέβασε” το αρχείο σου εδω!</h4> 
              <input type="file" name="video" id="video" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple="">
              <label for="video"><svg xmlns="#" width="20"  viewBox="0 0 20 17">
                  <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
                  </svg> <span>Εύρεση</span></label>
            </div>                      
          </div>

          <div id='preview-video-container'>
            <video id="preview-video" loop="loop" width="100%" height='100%' poster="{{ asset('img/bg-img/22.jpg') }}" controls>
                <source src="{{ asset('videos/diaskedazo.mp4') }}" type="video/mp4">
            </video>
          </div>
          
          <div class='form-video'>
            <div class="progress" style='height:1px;'>
              <div class="progress-bar" role="progressbar" id='video-progress' style="height:100%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <!--Title Line Edit-->
            <div class="md-form">
                <i class="fas fa-envelope prefix"></i>
                <input type="text" id="video-title" class="form-control">
            </div>    
            <!--Description Text Area-->
            <div class="md-form amber-textarea active-amber-textarea-2">
              <i class="fas fa-pencil-alt prefix"></i>
              <textarea id="video-description" class="md-textarea form-control" rows="3"></textarea>
            </div> 
            <div class='btn btn-primary' style='float:right;' id='btn-save-video'><i class="fas fa-upload"></i> ΔΗΜΟΣΙΕΥΣΗ</div>   
          </div>
        
        </div>

        
        <!-- article panel -->
        <div class="tab-pane fade show " id='profile-md' role='tabpanel' aria-labelledby="profile-tab-md">
            <div class="col-lg-12 nopadding">
              <!--Title Line Edit-->
              <form class="md-form" data-toggle="validator" novalidate="true">
                  <i class="fas fa-envelope prefix"></i>
                  <input type="text" id="article-title" class="form-control" required>
                  <div class="help-block with-errors"></div>
              </form> 
              <form action="{{ route('uploadimage') }}" method='post' enctype='multipart/form-data' id='article-image-container'>
                @csrf
                <!-- image-preview-filename input [CUT FROM HERE]-->
                <div class="input-group image-preview" >
                  <input type="text" class="form-control image-preview-filename" style='border-bottom:1px #555 solid !important;' disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                  <span class="input-group-btn">
                      <!-- image-preview-clear button -->
                      <button type="button" class="btn btn-primary image-preview-clear" style="display:none;background-color:#2BBBAD !important;">
                          <i class="fas fa-remove"></i> Ακύρωση
                      </button>
                      <!-- image-preview-input -->
                      <div class="btn btn-btn-primary image-preview-input" style='background-color:#2BBBAD !important;'>
                          <i class="fas fa-folder-open"></i>
                          <span class="image-preview-input-title">Επιλογή εικόνας</span>
                          <input type="file" accept="image/png, image/jpeg, image/gif" name="image"/> <!-- rename it -->
                      </div>
                  </span>
                </div>
                <!-- /input-group image-preview [TO HERE]--> 
                <div class='progress' id="progressDivId">
                  <div class='progress-bar' id='progressBar'></div>
                </div>
              </form>
              <textarea id="txtEditor"></textarea> 
              <div class='btn btn-primary' id='btn-save-article' style='float:right;'><i class="fas fa-upload"></i> Εύρεση</div>
            </div>
        </div>

        <!-- image panel -->
        <div class="tab-pane fade show " id='contact-md' role='tabpanel' aria-labelledby="contact-tab-md">
          <div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>
              <div style='padding: 10px;'>
                  <label class="radio-btn-container promote-gallery">Προβολή για τους επισκέπτες
                      <input type="radio"  checked name="gallery">
                      <span class="checkmark"></span>
                  </label>
              </div>
              <div style='padding: 10px;'>
                  <label class="radio-btn-container content-gallery">Προβολή για τα μέλη
                      <input type="radio" name="gallery">
                      <span class="checkmark"></span>
                  </label>
              </div>
          </div>
          <form action="{{ route('uploadimage') }}" method='post' enctype='multipart/form-data' id='gallery-image-container'>
            @csrf
            <!-- image-preview-filename input [CUT FROM HERE]-->
            <div class="input-group image-preview" >
              <input type="text" class="form-control image-preview-filename" style='border-bottom:1px #555 solid !important;' disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
              <span class="input-group-btn">
                  <!-- image-preview-clear button -->
                  <button type="button" class="btn btn-primary image-preview-clear" style="display:none;background-color:#2BBBAD !important;">
                      <i class="fas fa-remove"></i> Ακύρωση
                  </button>
                  <!-- image-preview-input -->
                  <div class="btn btn-btn-primary image-preview-input" style='background-color:#2BBBAD !important;'>
                      <i class="fas fa-folder-open"></i>
                      <span class="image-preview-input-title">Επιλογη εικονας</span>
                      <input type="file" accept="image/png, image/jpeg, image/gif" name="image"/> <!-- rename it -->
                  </div>
              </span>
            </div>
            <!-- /input-group image-preview [TO HERE]--> 
            <div class='progress' id="progressDivId">
              <div class='progress-bar' id='progressBar'></div>
            </div>
          </form>
          <div class='form-image'>
            <!--Title Line Edit-->
            <div class="md-form">
                <i class="fas fa-envelope prefix"></i>
                <input type="text" id="image-title" class="form-control">
            </div>      
            <div class='btn btn-primary' id='btn-save-gallery' style='float:right;'><i class="fas fa-upload"></i> ΔΗΜΟΣΙΕΥΣΗ</div>  
          </div>
        </div>
      </div>
    </div>
  </div>

  @include('partner.chat.chat')
@endsection


@push('external-styles')
    <link rel='stylesheet' href="{{ asset('plugins/editor/editor.css') }}">
@endpush


@push('page-styles')
    
.upload-container{
  width:80%;
  margin:auto;
  margin-top:40px;
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

.upload-drop-zone .form-group{
	position: relative;;
  top:50%;
  margin-top:-50px;
}

/* image upload form */
.image-preview-input {
    position: relative;
    overflow: hidden;
    margin: 0px;    
    color: #333;
    background-color: #fff;
    border-color: #ccc;    
}
.image-preview-input input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
}
.image-preview-input-title {
    margin-left:2px;
}

/* tab pane */
.tab-pane{
  padding:40px;
}

.form-video .md-form{
  width: 80%;
  margin:auto;
  margin-top:20px;
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

#preview-video-container{
  width: 400px;
  height: 300px;
  margin: auto;
  display: none;
}
.popover {
  opacity: 1.0 !important;
}
@endpush


@push('scripts')
    <!-- editor js -->
    <script src="{{asset('js/validator.min.js')}}"></script>
    <script src="{{ asset('plugins/editor/editor.js') }}"></script>
    <script src="{{ asset('js/jquery.form.min.js') }}"></script>
    <script src="{{ asset('js/partner-pages/common/image-preview-upload.js') }}"></script>    
    <script src="{{ asset('js/partner-pages/upload/index.js') }}"></script>      
    
    <script>
      $(document).ready(function() {
            $("#txtEditor").Editor();  
        });
    </script>
@endpush


