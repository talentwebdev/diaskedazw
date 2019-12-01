
<div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>  
</div>

<div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>
    <div style='padding: 10px;'>
        <label class="radio-btn-container visitor-video">Επισκέπτες
            <input type="radio"  checked name="video">
            <span class="checkmark"></span>
        </label>
    </div>
    <div style='padding: 10px;'>
        <label class="radio-btn-container member-video">Μέλη
            <input type="radio" name="video">
            <span class="checkmark"></span>
        </label>
    </div>
</div>

@include('components.videoimageupload.component_videoimageupload', ['index' => 'video-videoimage'])
@include('components.videoupload.component_videoupload', ['index' => 'video', 'isVideoPreview' => true])

<div id="video">
<form action="{{ route('admin.video.store') }}" method='post'>
    @csrf
    <input type="hidden" name="adimg_url" id="adimg_url" />
    <input type="hidden" name="video_url" id="video_url" />
    <input type="hidden" name="type" id="video_type" value="visitor" />
    <div class='form-video'>    
        <!--Title Line Edit-->
        <div class="md-form">
            <i class="fas fa-envelope prefix"></i>
            <input type="text" name='title' class="form-control">
        </div>    
        <!--Description Text Area-->
        <div class="md-form amber-textarea active-amber-textarea-2">
            <i class="fas fa-pencil-alt prefix"></i>
            <textarea id="video-description" name='description' class="md-textarea form-control" rows="3"></textarea>
        </div> 
        <button class='btn btn-primary' style='float:right;' id='btn-save-video'><i class="fas fa-upload"></i> ΑΠΟΘΗΚΕΥΣΗ</button>   
    </div>
</form>
</div>

@push("scripts")
<script>
$("document").ready(e => {
    $("#video #js-upload-form").on("videouploaded", function(e, param){
        $("#video #video_url").val(param);
    });

    $("#video-videoimage #video-image-container").on("videoimageuploaded", function(e, param){
        $("#video #adimg_url").val(param);
    });

    $(".visitor-video").click(e => {
        $("#video_type").val("visitor");
    });
    $(".member-video").click(e => {
        $("#video_type").val("member");
    });
});
</script>
@endpush
