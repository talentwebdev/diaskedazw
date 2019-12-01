<div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>
  
</div>
<form action="{{ route('uploadimage') }}" method='post' enctype='multipart/form-data' id='video-image-container'>
@csrf
<!-- image-preview-filename input [CUT FROM HERE]-->
<div class="input-group image-preview" >
    <input type="text" class="form-control image-preview-filename" style='border-bottom:1px #555 solid !important;' disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
    <span class="input-group-btn">
        <!-- image-preview-clear button -->
        <button type="button" class="btn btn-primary image-preview-clear" style="display:none;background-color:#2BBBAD !important;">
            <i class="fas fa-remove"></i> ΔΙΑΓΡΑΦΗ
        </button>
        <!-- image-preview-input -->
        <div class="btn btn-btn-primary image-preview-input" style='background-color:#2BBBAD !important;'>
            <i class="fas fa-folder-open"></i>
            <span class="image-preview-input-title">ΑΝΑΖΗΤΗΣΗ</span>
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
    <h4> Τοποθετήστε το βίντεο εδώ! </h4> 
    <input type="file" name="video" id="video" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple="">
    <label for="video"><svg xmlns="#" width="20"  viewBox="0 0 20 17">
        <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
        </svg> <span>Αναζήτηση…</span></label>
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
<div class='btn btn-primary' style='float:right;' id='btn-save-video'><i class="fas fa-upload"></i> ΕΠΙΛΟΓΗ</div>   
</div>

@push("scripts")
    @include("company.dashboard.js_partials.__js_video_upload")
@endpush