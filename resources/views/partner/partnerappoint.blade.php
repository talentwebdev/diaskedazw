
@extends('partner.layouts.app')


@section('content')
<div class="row">
    <div class="card calendar-container">
      <div class="card-header"><i class="fas fa-calendar"></i> Appointment</div>
      <div class="card-body">
        <div id="calendar"></div>
      </div>
    </div>
</div>

@include('partner.chat.chat')
@endsection


@push('external-styles')

<!-- calendar -->
<link href="{{ asset('plugins/calendar/core/main.css') }}" rel='stylesheet' />
<link href="{{ asset('plugins/calendar/daygrid/main.css') }}" rel='stylesheet' />
<link href="{{ asset('plugins/calendar/timegrid/main.css') }}" rel='stylesheet' />
<link href="{{ asset('plugins/calendar/calendar/fullcalendar.bundle.css') }}" rel='stylesheet' />    
@endpush



@push('page-styles')
    
.calendar-container{
  width:90%;
  margin:auto;
  margin-top:40px;
}
.selected-event{
  background-color:rgb(185, 122, 87) !important;
}

.fc-content:before{
    display: block;
    content: " ";
    position: absolute;
    height: 10px;
    width: 10px;
    border-radius: 50%;
    top: 0.7rem;
    left: 0.75rem;
    background: #5867dd;
}
.fc-content{
    padding: 0.55rem 0.55rem 0.55rem 2rem;
    bacground-color:#fff ;
}
.fc-time-grid-event, .fc-day-grid-event{
    background: #fff;
    border: 1px solid #ebedf2;
    -webkit-box-shadow: 0px 1px 15px 1px rgba(69,65,78,0.08);
    box-shadow: 0px 1px 15px 1px rgba(69,65,78,0.08);
}

@endpush


@push('scripts')

<!-- calendar plugin -->
<script src="{{ asset('plugins/calendar/core/main.js') }}"></script>
<script src="{{  asset('plugins/calendar/interaction/main.js') }}"></script>
<script src="{{ asset('plugins/calendar/daygrid/main.js') }}"></script>
<script src="{{ asset('plugins/calendar/timegrid/main.js') }}"></script>
<script src="{{ asset('plugins/calendar/bootstrap/main.min.js') }}"></script>
<script src="{{ asset('js/partner-pages/appointment/index.js') }}"></script>
@endpush
