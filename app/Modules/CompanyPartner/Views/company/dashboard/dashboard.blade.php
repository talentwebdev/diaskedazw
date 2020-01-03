
@extends('company.dashboard.layouts.app')


@section('content')
            
  <div class="row" syle='margin-top:120px; !important'>
    <!-- Account detail -->
    <div class="col-md-4 partner-dashboard-panel">
      <div class="card" style='height:400px;'>
        <div class="card-header"> <i class='fas fa-user'></i> Γενικές πληροφορίες Επιχείρησης</div>
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
            <a href="{{ route('company.profile.index') }}"><button class="btn" style="position:relative; background-color: DodgerBlue; font-size: 12px; padding: 10px 14px; cursor: pointer; float:left; left:5%;  width:98%; "><i class="fa fa-eye"></i> Προβολη Ιστοσελιδας</button></a>
            <a href="{{ route('company.dashboard.companyedit') }}"><button class="btn" style="position:relative; background-color: DodgerBlue; font-size: 12px; padding: 10px 14px; cursor: pointer; float:right; left:15%;  width:98%;  "><i class="fa fa-pencil"></i>Επεξεργασια Επιχειρησης</button></a>
          


            </div>
        </div>
      </div>
    </div>

    <!-- Statistic -->
    <div class="col-md-8 partner-dashboard-panel">
      <div class="card" style='height:400px;'>
        <div class="card-header"> <i class="fas fa-chart-line"></i> Στατιστικά </div>
        <div class="card-body">
          <div id="chartdiv"></div>
        </div>
      </div>
    </div>
  </div>
  
@endsection


@push('scripts')
<script src="{{ asset('plugins/amchart/core.js') }}"></script>
<script src="{{ asset('plugins/amchart/charts.js') }}"></script>
<script src="{{ asset('plugins/amchart/animated.js') }}"></script>
<script src="{{ asset('plugins/amchart/index.js') }}"></script>

<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
@endpush


@push('page-styles')

.btn:hover {
  background-color: green;}
  
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
