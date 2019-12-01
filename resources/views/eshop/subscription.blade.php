@extends('layouts.app')

@section("content")
<div class="container" style="padding-top: 80px;">
    <div class="description" style="text-align:center;">
        <h2> Subscription </h2>
        <p> sdkfsldfjsldf jsldkf jsldfkj sldfk jsdlkf jsdlf kjsdlfk sdjl f <p>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <div class="card price-panel" >
                <div class="card-header"> Day </div>
                <div class="card-body">
                    <div class="price">
                        <h4><img class="ellin-image" src="{{ asset('img/diask-img/ellinsds.png') }}" /> 100 </h4>
                    </div>
                    @if( Auth::user() != null && Auth::user()->expiredSubscribe() || Auth::user()->subscription()->get()->first()->type != 1)
                    <div class="description">
                        <p> 1 Day Subscription </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-primary form-control" id="daySubBtn"> Get Started </button>
                    </div>
                    @else
                    <div class="description">
                        <p> {{ Auth::user()->getRestDayForSubscribe() }} </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-success form-control" style='background-color:#1F9F44;'> Subscribed </button>
                    </div>
                    @endif
                    
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card price-panel">
                <div class="card-header"> Month </div>
                <div class="card-body">
                    <div class="price">
                        <h4><img class="ellin-image" src="{{ asset('img/diask-img/ellinsds.png') }}" /> 1000 </h4>
                    </div>
                    @if( Auth::user() != null && Auth::user()->expiredSubscribe() || Auth::user()->subscription()->get()->first()->type != 2)
                    <div class="description">
                        <p> 1 Month Subscription </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-primary form-control" id="monthSubBtn"> Get Started </button>
                    </div>
                    @else
                    <div clas="description">
                        <p> {{ Auth::user()->getRestDayForSubscribe() }} </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-success form-control" style='background-color:#1F9F44;'> Subscribed </button>
                    </div>
                    @endif
                    
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card price-panel">
                <div class="card-header"> Year </div>
                <div class="card-body">
                    <div class="price">
                        <h4><img  class="ellin-image" src="{{ asset('img/diask-img/ellinsds.png') }}" /> 10000 </h4>
                    </div>
                    @if( Auth::user() != null && Auth::user()->expiredSubscribe() || Auth::user()->subscription()->get()->first()->type != 3)
                    <div class="description">
                        <p> 1 Year Subscription </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-primary form-control" id="yearSubBtn"> Get Started </button>
                    </div>
                    @else
                    <div class="description">
                        <p> {{ Auth::user()->getRestDayForSubscribe() }} </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-success form-control"  style='background-color:#1F9F44;'> Get Started </button>
                    </div>
                    @endif
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push("styles")
<link rel="stylesheet" href="{{ asset('css/user-pages/eshop/style.css') }}" />
@endpush
@push("scripts")
<script src="{{ asset('js/user-pages/eshop/subscription.js') }}"></script>
@endpush
