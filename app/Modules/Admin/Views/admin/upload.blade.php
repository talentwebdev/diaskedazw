@extends('admin.layouts.app')

@section('content')
<div class="row">
    <div class="card upload-container">
      <ul class="nav nav-tabs md-tabs" id="myTabMD" role="tablist" style='height:10%;'>
        <li class="nav-item">
          <a class="nav-link active" id="home-tab-md" data-toggle="tab" href="#home-md" role="tab" aria-controls="home-md"
            aria-selected="true"><i class='fas fa-video'></i> Big Promote Video</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="profile-tab-md" data-toggle="tab" href="#profile-md" role="tab" aria-controls="profile-md"
            aria-selected="false"><i class="fas fa-newspaper"></i> Promote Videos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="contact-tab-md" data-toggle="tab" href="#contact-md" role="tab" aria-controls="contact-md"
            aria-selected="false"><i class="fas fa-images"></i> Εικόνες</a>
        </li>
      </ul>
      <div class="tab-content">
        <!-- video   panel -->
        <div class="tab-pane fade show active" id='home-md' role='tabpanel' aria-labelledby="home-tab-md">
            @include("admin.partials._top_video_upload")        
        </div>        
        <!-- article panel -->
        <div class="tab-pane fade show " id='profile-md' role='tabpanel' aria-labelledby="profile-tab-md">
            @include("admin.partials._video_upload")
        </div>
        <!-- image panel -->
        <div class="tab-pane fade show " id='contact-md' role='tabpanel' aria-labelledby="contact-tab-md">
            @include("admin.partials._image_upload")
        </div>
      </div>
    </div>
</div>
@endsection

@push('scripts')
<script src="{{asset('js/validator.min.js')}}"></script>
<script src="{{ asset('plugins/editor/editor.js') }}"></script>
<script src="{{ asset('js/jquery.form.min.js') }}"></script>
<script src="{{ asset('js/partner-pages/common/image-preview-upload.js') }}"></script>    
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
