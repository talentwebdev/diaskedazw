@extends("layouts.app")

@section("content")
<div class="container" style="padding-top: 60px;">
    @include('user.shopprofile.components.productpanel', ["isFavorite" => true])
    @include('user.shopprofile.components.productdetail')
</div>
@endsection

@push("scripts")
@endpush

@push("styles")
<style>
.vidplayer-container{
    margin-top: 50px !important;
    
}
.card{
    border: 1px solid rgba(0, 0, 0, 0.16);
}
.card-body{
    overflow-y: auto;
    overflow-x: hidden;
    height: 100%;
}
.card-body::-webkit-scrollbar {
    width: 6px;
}
.card-body::-webkit-scrollbar-button {
    width: 6px;
    display: block;
    height: 100%;
}
.card-body::-webkit-scrollbar-thumb {
    width: 6px;
    border-radius: 4px !important;
    background-color: #d9d6d6;
    cursor: pointer;
}
</style>
<link rel='stylesheet' href="{{ asset('css/user-pages/product/style.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/web/assets/mobirise-icons/mobirise-icons.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/gallery/style.css') }}">

<link rel='stylesheet' href="{{ asset('css/user-pages/shopprofile/style.css') }}" type='text/css'>
<link rel='stylesheet' href="{{ asset('plugins/select-component/select-component.css') }}">
@endpush