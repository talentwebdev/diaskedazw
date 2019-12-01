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
    <textarea id="txtEditor"></textarea> 
    <div class='btn btn-primary' id='btn-save-article' style='float:right;'><i class="fas fa-upload"></i> ΕΠΙΛΟΓΗ</div>
</div>

@push("scripts")
    @include("company.dashboard.js_partials.__js_article_upload")
@endpush