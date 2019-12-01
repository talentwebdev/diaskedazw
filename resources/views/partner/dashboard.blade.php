
@extends('partner.layouts.app')


@section('content')
            
  <div class="row" syle='margin-top:120px; !important'>
    <!-- Account detail -->
    <div class="col-md-4 partner-dashboard-panel">
      <div class="card" style='height:400px;'>
        <div class="card-header"> <i class='fas fa-user'></i> Account detail </div>
        <div class="card-body">
          <div class="row">
            <div class="col-4">
                <img src="{{ asset(Auth::user()->img_url) }}" alt="" class="img-rounded img-responsive" />
            </div>
            <div class="col-8">
                <h4>
                    {{ Auth::user()->first_name }} &nbsp; {{ Auth::user()->last_name }}</h4>
                <small><cite style='color:#aaa;' title="San Francisco, USA">{{ Auth::user()->address }}, {{ Auth::user()->country }} <i class="fas fa-map-marker-alt">
                </i></cite></small>
                <p>
                    <i class="fas fa-envelope"></i> <span>{{ Auth::user()->email }}</span>
                    <br />
                    <i class="fas fa-coins"></i> <span>{{ Auth::user()->points }}</span>
                    <br />
                  </p>
            </div>
            </div>
        </div>
      </div>
    </div>

    <!-- Statistic -->
    <div class="col-md-8 partner-dashboard-panel">
      <div class="card" style='height:400px;'>
        <div class="card-header"> <i class="fas fa-chart-line"></i> Statistics </div>
          
        <div class="card-body">
        <div class='row' id='statistics' style="display: flex; justify-content: space-around">
            <div style="display: flex; align-items: center">
              <p>Total Visits:&nbsp;</p>
              <p id="num_visits"></p>
            </div>
            <div style="display: flex; align-items: center">
              <p>Total Earning:&nbsp;</p>
              <p id="num_totalearnings"></p>
            </div>
          </div>
          <div id="chartdiv"></div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="row" style='margin-top:40px;'>
    <!-- video/imgae/articles -->
    <div class="col-md-5 partner-dashboard-panel">
      <div class="card" style='height:500px;'>
        <div class="card-header"><i class="fas fa-calendar"></i> Report </div>
        <div class="card-body">
          <div id='report-body' style='overflow-y: auto;'>
            <ul id='reportlist'>
              
            </ul>
          </div> 
        </div>
      </div>   
    </div>
    <!--
    <div class="col-md-5 partner-dashboard-panel">
      <div class="card" style='height: 500px;'>
        <ul class="nav nav-tabs md-tabs" id="myTabMD" role="tablist" style='height:10%;'>
          <li class="nav-item">
            <a class="nav-link active" id="home-tab-md" data-toggle="tab" href="#home-md" role="tab" aria-controls="home-md"
              aria-selected="true"><i class='fas fa-video'></i> Video</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="profile-tab-md" data-toggle="tab" href="#profile-md" role="tab" aria-controls="profile-md"
              aria-selected="false"><i class="fas fa-newspaper"></i> Articles</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="contact-tab-md" data-toggle="tab" href="#contact-md" role="tab" aria-controls="contact-md"
              aria-selected="false"><i class="fas fa-images"></i> Images</a>
          </li>
        </ul>
        <div class="tab-content card " id="myTabContentMD" style='height:90%;'>
          <div class="tab-pane fade show active my-custom-scrollbar my-custom-scrollbar-primary " id="home-md" role="tabpanel" aria-labelledby="home-tab-md">
            <ul class="list-group" id='videolist'>
              
            </ul>
          </div>
          <div class="tab-pane fade my-custom-scrollbar1" id="profile-md" role="tabpanel" aria-labelledby="profile-tab-md">
            <ul class='list-group' id='articlelist'>
              
            </ul>
          </div>
          <div class="tab-pane fade my-custom-scrollbar2" id="contact-md" role="tabpanel" aria-labelledby="contact-tab-md">
            <ul class='list-group' id='imagelist'>
            </ul>
          </div>
        </div>
      </div>
    </div>
    -->
    <!-- appointment -->
    <div class="col-md-7 partner-dashboard-panel">
      <div class="card" style='height:500px;'>
        <div class="card-header"><i class="fas fa-calendar"></i> Appointment </div>
        <div class="card-body">
          <div id='appointment-body' style=''>
            <ul id='timelinelist'>
              
            </ul>
          </div> 
        </div>
      </div>   
    </div>
  </div>

  @include('partner.chat.chat')
  @include('partner.component.modifyeventdlg')
@endsection


@push('scripts')
<script src="{{ asset('plugins/amchart/core.js') }}"></script>
<script src="{{ asset('plugins/amchart/charts.js') }}"></script>
<script src="{{ asset('plugins/amchart/animated.js') }}"></script>
<script src="{{ asset('plugins/amchart/index.js') }}"></script>
<script>    
/*
    new PerfectScrollbar('.my-custom-scrollbar');
    new PerfectScrollbar('.my-custom-scrollbar1');
    new PerfectScrollbar('.my-custom-scrollbar2');*/
    new PerfectScrollbar('#appointment-body');
</script>

<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
<script src="{{ asset('js/partner-pages/dashboard/index.js') }}"></script>
@endpush


@push('page-styles')
.btn-file {
    position: relative;
    overflow: hidden;
}
.btn-file input[type=file] {
    position: absolute;
    top: 0;
    right: 0;
    min-width: 100%;
    min-height: 100%;
    font-size: 100px;
    text-align: right;
    filter: alpha(opacity=0);
    opacity: 0;
    outline: none;
    background: white;
    cursor: inherit;
    display: block;
}

.tab-content{
  overflow-y: auto;
}

.tab-pane{
  width:100% !important;
  padding: 30px;
}

.tab-pane .list-group{
  margin:10px;
}
.tab-pane .list-group-item{
  border-left: 0px solid;
  border-right: 0px solid;
  border-top: 0px solid;
  margin-top:1px;
  border-bottom:1px solid #eee !important;
}

.list-group-item{
  height:90px;
}

.list-group-item img{
  vertical-align: middle;
  height:60px;
  width:80px;
}

.list-group-item .row{
  padding-left: 10px;
  
}

#chartdiv{
  height:98%;
}

#img-upload{
    width: 100%;
}

.nav-link.active{
  background-color:#34bfa3 !important;
  color:#fff !important;
}

#appointment-body{
  padding:20px;
  height:420px;
  position:relative;  
  width:100%;
}

#report-body{
  padding: 20px;
  height: 420px;
  position: relative;
  width: 100%;
}


ul.timeline {
    list-style-type: none;
    position: relative;
}
ul.timeline:before {
    content: ' ';
    background: #d4d9df;
    display: inline-block;
    position: absolute;
    left: 29px;
    width: 2px;
    height: 100%;
    z-index: 400;
}
ul.timeline > li {
    margin: 50px 0;
    padding-left: 50px;
}
ul.timeline > li:before {
    content: ' ';
    background: white;
    display: inline-block;
    position: absolute;
    border-radius: 50%;
    border: 3px solid #22c0e8;
    left: 20px;
    width: 20px;
    height: 20px;
    z-index: 400;
}

.my-custom-scrollbar {
  position: relative;
  width: 800px;
  height: 400px;
  overflow: auto;
}

#timelinelist > div{
  border-bottom: 1px solid #AAA;
}
@endpush
