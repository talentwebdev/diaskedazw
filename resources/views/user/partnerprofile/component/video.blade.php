<div class='video-gallery-container'>
    <h4 class='video-gallery-title'> <i class='fas fa-video'></i> Videos </h4>
    <div class='row' id='video-gallery'>
        <!--
        <div class='col-md-4'>
            <div class='video-gallery-thumbnail'>
                <div class='video-poster-img-container'>
                    <a class='video-lightbox' href='#'>
                        <img src='{{ asset("images/videos/131556395787.jpg") }}' class='video-poster-img' >
                    </a>
                    <div class='video-poster-img-video'></div>
                </div>
                <div class='video-caption'>
                    <h3 class='video-caption-title'>Thumbnail label</h3>
                    <p class='video-caption-description'>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
            </div>
        </div>
        -->
    </div>
</div>


@push('scripts')
<script src='{{ asset("plugins/carouselengine/amazingcarousel.js") }}'></script>
<script src="{{ asset('js/user-pages/partnerprofile/videogallery.js') }}"></script>
@endpush
@push('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('plugins/carouselengine/initcarousel-1.css') }}">
@endpush