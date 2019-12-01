@extends('layouts.app')

@push('scripts')
<script> 
        const partner = {
                        id: "{{ $partner->id }}",
                        img_url: "{{ $partner->img_url }}",
                        name: "{{ $partner->name }}",
                        email: "{{ $partner->email }}"
                    }   ;
</script>
<!-- my core javascript -->
<script src="{{ asset('js/default-assets/appointment.js') }}"></script>
@endpush

@section('content')


<!-- ***** Welcome Area Start ***** -->
<section class="welcome-area">
    <div class="welcome-slides owl-carousel">

        <!-- Single Welcome Slide -->
        <div class="single-welcome-slide" style='height:750px;'>
            <!-- Background Curve -->
            <div class="background-curve">
                <img src="{{ asset('img/core-img/curve-1.png') }}" style='height:100%;' alt="">
            </div>

            <!-- Welcome Content -->
            <div class="welcome-content h-100">
                <div class="h-100" style='width:80%; margin:auto;'>
                    <div class="row h-100 align-items-center" style='width:100%;'>
                        <!-- Welcome Text -->
                        <div class="col-8">
                            <video style="border-radius: 20px; box-shadow: 10px 20px 40px rgba(0, 0, 0, .5); height: 550px;" loop="loop" width="100%" id="mainVideo" controls>
                                
                            </video>
                        </div>
                        <!-- Welcome Thumbnail -->
                        <div class="col-4">
                            <div class="card" style='background-color: rgba(255, 255, 255, 0.1); height: 550px;'>
                                <center>
                                    <div class="card-header" style='margin-top: 10px; text-align: center; width: 90%; background-color: rgba(0, 162, 232, 0.5); border-radius: 5px;'> Annoucement </div>
                                    <div class="card-body">

                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>
<!-- ***** Welcome Area End ***** -->


<section>
    <div class="portfolio-bg-curve" style='position:absolute;'>
        <img src="{{ asset('img/core-img/curve-4.png') }}" alt="">
    </div>
    <div class="container">
    
        <div id='calendar'>
                
        </div>
    </div>
</section>

<a id="partnerprofile_link" href="{{ route('partnerprofile') }}" style="position: fixed; z-index: 2147483647;"><i class="fa fa-home" <="" i=""></i></a>
<div id="pageAttr" attr="appointment"></div>

<!-- jquery plugin -->

<!-- chat component. -->
@include('other.chat')
@endsection

@push('styles')
<!-- plugins -->
<!-- css -->
<link href='https://use.fontawesome.com/releases/v5.0.6/css/all.css' rel='stylesheet'>
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet' />
<link href='{{ asset("plugins/calendar/core/main.css") }}' rel='stylesheet' />
<link href='{{ asset("plugins/calendar/daygrid/main.css") }}' rel='stylesheet' />
<link href='{{ asset("plugins/calendar/timegrid/main.css") }}' rel='stylesheet' />
<link href='{{ asset("plugins/calendar/calendar/fullcalendar.bundle.css") }}' rel='stylesheet' />

<!-- javascript -->
<script src='{{ asset("plugins/calendar/core/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/interaction/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/daygrid/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/timegrid/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/bootstrap/main.min.js") }}'></script>

<!-- this file css -->
<link rel='stylesheet' href="{{ asset('css/pages/partnerprofile/style.css') }}" type='text/css' >
@endpush
