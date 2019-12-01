@extends('company.dashboard.layouts.app')

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
                    @if( Auth::user() != null && Auth::user()->expiredCompanySubscription() || Auth::user()->companysubscription->type != "day")
                    <div class="description">
                        <p> 1 Day Subscription </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-primary form-control" id="daySubBtn"> Get Started </button>
                    </div>
                    @else
                    <div class="description">
                        <p> {{ Auth::user()->getRestDayForCompanySubscribe() }} </p>
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
                    @if( Auth::user() != null && Auth::user()->expiredCompanySubscription() || Auth::user()->companysubscription->type != "month")
                    <div class="description">
                        <p> 1 Month Subscription </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-primary form-control" id="monthSubBtn"> Get Started </button>
                    </div>
                    @else
                    <div clas="description">
                        <p> {{ Auth::user()->getRestDayForCompanySubscribe() }} </p>
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
                    @if( Auth::user() != null && Auth::user()->expiredCompanySubscription() || Auth::user()->companysubscription->type != "year")
                    <div class="description">
                        <p> 1 Year Subscription </p>
                    </div>
                    <div class="subscribe">
                        <button class="btn btn-primary form-control" id="yearSubBtn"> Get Started </button>
                    </div>
                    @else
                    <div class="description">
                        <p> {{ Auth::user()->getRestDayForCompanySubscribe() }} </p>
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
@endpush
@push("scripts")
<script>

(function($){
    'use strict';

    function dealWithSubscription()
    {
        var subscribe = function(type){
            $.post("{{ route('company.subscription.store') }}", {_token: csrf_token, type: type})
                .done(data => {
                    if(data.success == false)
                    {
                        alert("you don't have enough poionts");
                        return;
                    }
                    alert("success");
                    location.href = "subscription";
                })
                .fail(err => {});
        }

        $("#daySubBtn").click(e => {
            subscribe("day");
        });

        $("#monthSubBtn").click(e => {
            subscribe("month");
        });

        $("#yearSubBtn").click(e => {
            subscribe("year");
        });
    }

    dealWithSubscription();
}(jQuery));
</script>
@endpush
