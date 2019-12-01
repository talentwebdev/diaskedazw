<div id="{{ $index }}">
<!-- /input-group image-preview [TO HERE]--> 
<form action="{{ route('uploadvideo.file') }}" method='post' enctype='multipart/form-data' id='js-upload-form'>
@csrf
</form> 


<div class="upload-drop-zone" id="drop-zone">            
    <div class="form-group">
        <h2> <i class="fas fa-upload" style='color: rgb(0, 173, 239); font-size:50px;'></i> </h2> 
        <h4> Τοποθέτησε το αρχείο εδώ! </h4> 
        <input type="file" name="video" id="video" class="" data-multiple-caption="{count} files selected" multiple="">
        
    </div>                      
    
</div>
<div class="progress" style='height:1px;'>
    <div class="progress-bar" role="progressbar" id='video-progress' style="height:100%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
</div>

@if($isVideoPreview ==  true)
<div id='preview-video-container'>
    <video id="preview-video" loop="loop" width="100%" height='100%' poster="{{ asset('img/bg-img/22.jpg') }}" controls>
        <source src="{{ asset('videos/diaskedazo.mp4') }}" type="video/mp4">
    </video>
</div>
@endif
</div>

@push('scripts')
    @include('components.videoupload._js_videoupload', ['index' => $index])
    <script>
    </script>
@endpush