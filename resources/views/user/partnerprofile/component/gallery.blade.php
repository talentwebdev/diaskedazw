<div class='tz-gallery'>
    <div class='row' id='latest-images'>
    </div>
</div>

@push('scripts')
<script>const gallery_cnt = parseInt("{{ $count }}");</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script src="{{ asset('js/user-pages/partnerprofile/gallery.js') }}"></script>
@endpush
@push('styles')
<link rel="stylesheet" href="{{ asset('plugins/image-gallery/gallery-grid.css') }}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
@endpush