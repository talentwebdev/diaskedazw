@extends('company.dashboard.layouts.app')

@section('content')
<div class="container">

    <!-- Ads added already -->
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    Advertises
                </div>
                <div class="card-body" id="ads_id">
                    <div class="owl-carousel owl-theme" id="carousel_ads_id">
                        @foreach($companyads as $ads)
                        <div class="item container">
                            <div class="row">
                                <img src="{{ asset($ads->adsimage_url) }}" alt="" style="width: 100%;">
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <img src="{{ asset($ads->logoimage_url) }}" alt="" style="width: 100%;">
                                </div>
                                <div class="col-md-9">
                                    <h3 id="h3_headline_id">
                                        {{ $ads->headline }}
                                    </h3>
                                    <h5 id="h3_description_id">
                                        {{ $ads->description }}
                                    </h5>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Ads button -->
    <div class="row">
        <div class="col-md-12">
            <button class="btn btn-primary" id="btn_add_ads_id">
                <i class="fas fa-plus"></i> &nbsp; Add Ads
            </button>
        </div>
    </div>
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <!-- New Ads -->
    <div class="row" id="section_add_ads_id" style="display:none;">
        <div class="col-md-12">
            <div class="card" id="card_add_ads_id">
                <div class="card-header">
                    New Advertise
                </div>
                <div class="card-body">
                    <form action="{{ route('company.dashboard.companyads.addads') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <label for="link_url">Link Url</label>
                                <input type="text" class="form-control" name="link_url">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">                            
                                <img src="" alt="" id="" id="preview_adsimage_id">
                                <input type="file" name="adsimage" id="input_adsimage_id" accept="image/*" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <img src="" id="img_logo_id" alt="" />
                                <input type="file" name="logoimage" id="input_adsimage_id" accept="image/*" />
                            </div>
                            <div class="col-md-9">
                                <label>Head Line </label>
                                <input type="text" name="headline" id="input_headline_id" class="form-control" style='font-size: 32px;' />
                                <label for=""> Description </label>
                                <textarea name="description" id="input_description_id" class="form-control" style="font-size: 12px;" rows='3'></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <button type="submit" id="btn_submit_id" class="btn btn-primary" > Save </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
@endsection

@push("scripts")
<script>

function readURL(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $(input).prev('img').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$("#carousel_ads_id").ready(e => {
    var owl = $('#carousel_ads_id');
    owl.owlCarousel({
        margin: 30,
        loop: true,
        autoplay: true,
        autoplayTimeout: 5000,
        smartSpeed: 1000,
        responsiveClass:true,
        responsive: {
            0: {
                items: 1
            },
            500: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    });
});

$("#btn_add_ads_id").click(e => {
    $("#section_add_ads_id").fadeIn();
});

$("#input_adsimage_id").change(e => {
    readURL(document.getElementById("input_adsimage_id"));
});

$("#input_logoimage_id").change(e => {
    readURL(document.getElementById("input_logoimage_id"));
});
</script>
@endpush