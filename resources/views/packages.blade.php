@extends('layouts.app')

@section('content')
    
    <!-- ***** Breadcrumb Area Start ***** -->
    <div class="breadcrumb-area">
        <div class="container h-100">
            <div class="row h-100 align-items-end">
                <div class="col-12">
                    <div class="breadcumb--con">
                        <h2 class="title">Κάρτες</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Αρχική</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Πακέτα</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- Background Curve -->
        <div class="breadcrumb-bg-curve">
            <img src="{{ asset('img/core-img/curve-5.png') }}" alt="">
        </div>
    </div>
    <!-- ***** Breadcrumb Area End ***** -->

    
    <!-- ***** Packages Area Start ***** -->
    <section class="uza-services-area section-padding-80-0">
        <div class="container">
            <div class="row" id="service-container">

            </div>
        </div>
    </section>
    <!-- ***** Services Area End ***** -->

    <!-- Modal: modalAbandonedCart-->
    @include("other.buypackagedlg")
    <!-- Modal: modalAbandonedCart-->
@endsection

@push('styles')
<link rel='stylesheet' href="{{ asset('css/package-view/style.css') }}" >
@endpush

@push('scripts')
<!-- my own service container javasript -->
<script type="text/javascript" src="{{ asset('js/my-service-container/my-service-container.js') }}"></script>
<!-- braintreegateway dropin javascript -->
<script> var csrf_token = "{{ csrf_token() }}"; </script>
<script src="https://js.braintreegateway.com/web/dropin/1.8.1/js/dropin.min.js"></script>
<script> var token = "{{ Braintree_ClientToken::generate() }}"; </script>
<script type="text/javascript" src="{{ asset('js/default-assets/services.js') }}"></script>
@endpush