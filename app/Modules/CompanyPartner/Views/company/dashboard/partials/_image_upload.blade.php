
<form action="{{ route('uploadimage') }}" method='post' enctype='multipart/form-data' id='gallery-image-container'>
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
    <div class='btn btn-primary' id='btn-save-gallery' style='float:right;'><i class="fas fa-upload"></i> ΕΠΙΛΟΓΗ</div>  
</div>

@push("scripts")
    @include("company.dashboard.js_partials.__js_image_upload")
@endpush