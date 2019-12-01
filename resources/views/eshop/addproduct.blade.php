@extends('layouts.app')

@section('content')
<!-- add product part -->
<div class="container" style='padding-top: 60px;'>
    <div class="card">
        <div class="card-header">Προϊόν</div>
        <div class="card-body">
            <div class="row">
            <div class="col-md-6">
                <label>Τίτλος:</label>
            </div>
            <div class="col-md-6">
                <input type="text" class="form-control" id="productTitle" />
            </div>
            <div class="col-md-6">
                <label>Τιμή:</label>
            </div>
            <div class="col-md-6">
                <input type="number" class="form-control" id="productPrice" />
            </div>
            <div class="col-md-6">
                <label>Κατηγορία:</label>
            </div>
            <div class="col-md-6">
                <div id="dd" class="wrapper-dropdown-3">
                <span>Επαρχία...</span>
                <ul class="dropdown" id='productcategory-dropdown'>						
                </ul>
                </div>
            </div>
            <div class="col-md-12">
                <form action="{{ route('uploadimage') }}" style='width:100%; margin-right: 15px;' method="POST" id="productImgUploadForm" enctype="multipart/form-data">
                @csrf
                <span class="btn btn-success fileinput-button" style='width: 100%;'>
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>Επιλογή φωτογραφίας προϊόντος...</span>
                    <!-- The file input field used as target for the file upload widget -->
                    <input type="file" name="image" id="imgProduct" class="custom-file-input form-control" />
                    <input type="text" name="type" value="product" style="display: none;" />
                </span>
                </form>
                <img src="" id="productImgPreview" style="display:block; margin: auto; max-width: 400px;" />
            </div>
            <div class="col-md-12">
                <label>colors: </label>
            </div>
            <div class="col-md-12">
                <div class="color-list-container">
                </div>
                <div class="row">
                <div class="col-md-4">
                    <input type="text" class="form-control" id="productColorName" />
                </div>
                <div class="col-md-4">
                    <form action="{{ route('uploadimage') }}" class="uploadimage" style='width:100%; margin-right: 15px;' method="POST" id="productColorImgUploadForm" enctype="multipart/form-data">
                    @csrf
                    <span class="btn btn-success fileinput-button" style='width: 100%;'>
                        <i class="glyphicon glyphicon-plus"></i>
                        <span>Επιλογή φωτογραφίας προϊόντος...</span>
                        <!-- The file input field used as target for the file upl oad widget -->
                        <input type="file" name="image" id="imgColor" class="custom-file-input form-control">
                        <input type="text" name="type" value="productcolor" style="display: none;" />
                    </span>
                    <img src="" class="imgPreview" width="80" />
                    </form>
                </div>
                <div class="col-md-4">
                    <button class="btn btn-primary form-control" id="addColorBtn">Add Color</button>
                </div>
                </div>
            </div>
            <div class="col-md-12">
                <label>size: </label>
            </div>
            <div class="col-md-12">
                <div class="row">
                <div class="col-md-6">
                    <input type="text" class="form-control" id="productSize" />
                </div>
                <div class="col-md-6">
                    <button class="btn btn-primary form-control" id="addSizeBtn">Add Size</button> 
                </div>
                <div class="col-md-12">
                    <div class="row size-list-container">
                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-12">
                <label>Overview</label>
            </div>
            <div class="col-md-12">
                <form action="{{ route('uploadMultipleImage') }}" style='width:100%; margin-right: 15px;' method="POST" id="productOverviewImgUploadForm" enctype="multipart/form-data">
                @csrf
                <span class="btn btn-success fileinput-button" style='width: 100%;'>
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>Επιλογή φωτογραφίας προϊόντος...</span>
                    <!-- The file input field used as target for the file upload widget -->
                    <input type="file" name="files[]" id="imgOverview" class="custom-file-input form-control" multiple>
                    <input type="text" name="type" value="overview" style="display: none;" />
                </span>
                </form>
            </div>
            <div class="col-md-12">
                <div class="row overview-image-list">
                </div>
            </div>
            <div class="col-md-6">
                <label>Περιγραφή:</label>
            </div>
            <div class="col-md-6">  
                <textarea id="productDescription" rows='5' class="form-control"></textarea>
            </div>
            <div class="col-md-12">
                <button class="btn btn-primary form-control" id="addProductBtn">Προσθήκη προϊόντος</button>
            </div>
            </div>
      </div>
    </div>
</div>
<!-- add product part end -->
@endsection

@push("scripts")
<script src="{{ asset('plugins/select-component/select-component.js') }}"></script>
<script src="{{ asset('js/jquery.form.min.js') }}"></script>
<script src="{{ asset('js/user-pages/eshop/addproduct.js') }}"></script>
@endpush
@push("styles")
<link rel='stylesheet' href="{{ asset('plugins/select-component/select-component.css') }}" />
<link rel="stylesheet" href="{{ asset('css/user-pages/eshop/style.css') }}" />
@endpush