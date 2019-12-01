
<div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>  
</div>

@if($video != null)
<div>
    <video id="preview-video" loop="loop" width="100%" height='100%' poster="{{ asset('img/bg-img/22.jpg') }}" controls>
        <source src="{{ asset($video->video_url) }}" type="video/mp4">
    </video>
</div>
@endif

@include('components.videoupload.component_videoupload', ['index' => 'topvideo', 'isVideoPreview' => false])

<form action='{{ route('admin.video.promote.store') }}' method="post" id="upload-video-form">
    @csrf
    <input type="hidden" id="video_url" name="video_url" />
    <input type="hidden" id="adimg_url" name="adimg_url" value="" />
    <input type="hidden" id="title" name="title" value="" />
    <input type="hidden" id="description" name="description" value="" />
</form>

@push("scripts")
<script>
$("document").ready(e => {
    $("#topvideo #js-upload-form").on("videouploaded", function(e, param){
        $("#video_url").val(param);
        $("#upload-video-form").submit();
    });
});
</script>
@endpush
