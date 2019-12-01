
<div class="row" style=' padding-top: 30px; margin-left:0px; margin-right:0px;'>
    <div style='width:90%; margin:auto; position:realtive;'>
        <div class='owl-carousel owl-theme' id='videos-container'>
        </div>
    </div>
</div>


@push('scripts')

<script src='{{ asset("plugins/carouselengine/amazingcarousel.js") }}'></script>
<script> const page = "{{ $page }}";  </script>
<script src='{{ asset("js/user-pages/login/video-carousel.js") }}'></script>   
<script src="{{ asset('js/user-pages/partnerprofile/videocarousel.js') }}"></script>
@endpush

@push('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('plugins/carouselengine/initcarousel-1.css') }}">
@endpush