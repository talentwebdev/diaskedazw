@extends("layouts.app")

@section("content")
<div class="container" style='padding-top: 60px;'>
    <div class="card">
        <div class="card-header">Product</div>
        <div class="card-body">
            <div class="row">
            <div class="col-md-6">
                <label>Title:</label>
            </div>
            <div class="col-md-6">
                <input type="text" value="{{ $product->product_name }}" class="form-control" id="productTitle" />
            </div>
            <div class="col-md-6">
                <label>Price:</label>
            </div>
            <div class="col-md-6">
                <input type="number" value="{{ $product->product_price }}" class="form-control" id="productPrice" />
            </div>
            <div class="col-md-6">
                <label>Category:</label>
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
                    <span>Select Product Image...</span>
                    <!-- The file input field used as target for the file upload widget -->
                    <input type="file" name="image" id="imgProduct" class="custom-file-input form-control" />
                    <input type="text" name="type" value="product" style="display: none;" />
                    <input type="text" name="imgurl" id="productImgUrl" style="display:none;" />
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
                        <span>Select Product Image...</span>
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
                    <span>Select Product Image...</span>
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
                <label>Description:</label>
            </div>
            <div class="col-md-6">  
                <textarea id="productDescription" value="{{ $product->product_description }}" rows='5' class="form-control">{{ $product->product_description }}</textarea>
            </div>
            <div class="col-md-12">
                <button class="btn btn-primary form-control" id="editProductBtn">Edit Product</button>
            </div>
            </div>
      </div>
    </div>
</div>
@endsection

@push("scripts")
<script>
    const productData = {
        "id": "{{ $product->id }}",
        "user_id": "{{ $product->user_id }}",
        "product_name": "{{ $product->product_name }}",
        "product_img": "{{ $product->product_img }}",
        "product_price": "{{ $product->product_price }}",
        "product_description": "{{ $product->product_description }}",
        "category_id": "{{ $product->category_id }}",
        "colors": "{{ $product->colors }}",
        "size": "{{ $product->size }}",
        "overview": "{{ $product->overview }}"
    };
</script>
<script src="{{ asset('plugins/select-component/select-component.js') }}"></script>
<script src="{{ asset('js/jquery.form.min.js') }}"></script>
<script src="{{ asset('js/user-pages/eshop/editproduct.js') }}"></script>
@endpush

@push("styles")
<link rel='stylesheet' href="{{ asset('plugins/select-component/select-component.css') }}" />
<link rel="stylesheet" href="{{ asset('css/user-pages/eshop/style.css') }}" />
@endpush