
<div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>  
</div>

<div class='row' style='padding: 10x; margin-left: 0px; margin-right: 0px;'>
    <div style='padding: 10px;'>
        <label class="radio-btn-container visitor-image">Επισκέπτες
            <input type="radio"  checked name="image">
            <span class="checkmark"></span>
        </label>
    </div>
    <div style='padding: 10px;'>
        <label class="radio-btn-container member-image">Μέλη
            <input type="radio" name="image">
            <span class="checkmark"></span>
        </label>
    </div>
</div>

@include('components.videoimageupload.component_videoimageupload', ['index' => 'image'])

<form action="{{ route('admin.images.store') }}" method='post'>
    @csrf
    <input type="hidden" name="img_url" id="img_url" />
    <input type="hidden" name="type" id="image_type" value="visitor" />
    <div class='form-video'>    
        <!--Title Line Edit-->
        <div class="md-form">
            <i class="fas fa-envelope prefix"></i>
            <input type="text" name='title' id='title' class="form-control">
        </div>      
        <button class='btn btn-primary' style='float:right;' id='btn-save-video'><i class="fas fa-upload"></i> ΑΠΟΘΗΚΕΥΣΗ</button>   
    </div>
</form>

@push('scripts')
<script>
$("#image #video-image-container").on("videoimageuploaded", function(e, param){
    $("#img_url").val(param);
});

$(".visitor-image").click(e => {
    $("#image_type").val("visitor");
});
$(".member-image").click(e => {
    $("#image_type").val("member");
});
</script>
@endpush