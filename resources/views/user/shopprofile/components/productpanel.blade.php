<div class='row product-container' id='companies-container'>
    
</div>
@push('scripts')
@if($isFavorite == false)
<script src="{{ asset('js/user-pages/shopprofile/product.js') }}"></script>
@else
<script src="{{ asset('js/user-pages/shopprofile/product_favorite.js') }}"></script>
@endif
@endpush
@push('styles')
<link type='text/css' href='{{ asset("css/loading/style.css") }}' rel='stylesheet'>
@endpush