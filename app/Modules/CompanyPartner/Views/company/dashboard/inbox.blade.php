
@extends('company.dashboard.layouts.app')


@section('content')
<div class="row live-container">
    <div class="card" style="width: 80%; margin: auto;">
        <div class="card-header">
            <h5> Μυνήματα </h5>
        </div>
        <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th> Όνομα </th>
                        <th> Hλεκτρονική Διεύθυνση </th>
                        <th> Μύνημα </th>
                    </tr>
                </thead>
                <tbody>
                @foreach($inboxs as $index => $inbox)
                    <tr>
                        <td> {{ $index + 1 }} </td>
                        <td> {{ $inbox->name }} </td>
                        <td> {{ $inbox->email }} </td>
                        <td> {{ $inbox->message }} </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            
        </div>
    </div>
</div>

@endsection


@push('external-styles')

<link rel='stylesheet' href="{{ asset('plugins/editor/editor.css') }}">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href='{{ asset("css/common/listcommon.css") }}' rel='stylesheet' />
@endpush


@push('page-styles')
    

.video-section{
  height:auto !important;
}

.live-container video{
  width: 100%;
  height: 600px;
}

.articlelist-container{
  height:700px;
}

.list-group-container
{
  height:80%;
  overflow-y: auto;
}
.list-group-container::-webkit-scrollbar {
    width: 6px;
}
.list-group-container::-webkit-scrollbar-button {
    width: 6px;
    display: block;
    height: 100%;
}
.list-group-container::-webkit-scrollbar-thumb {
    width: 6px;
    border-radius: 4px !important;
    background-color: #d9d6d6;
    cursor: pointer;
}

.list-group-item{
  height: auto !important;
}
.list-group-item *{
  cursor: pointer;
}

.live-container{
  margin-top:30px;
}


.btn.dropdown-toggle:after{
  text-align: center;
  display: inline;
  border: 0;
  font-family: "FontAwesome";
  text-decoration: inherit;
  text-rendering: optimizeLegibility;
  text-transform: none;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
  content: "\f107";
  font-size: 0.8rem;
  line-height: 0;
  vertical-align: middle;
  position: relative;
  margin-left: 0.255rem/*rtl:ignore*/;
  margin-right: 0.255rem/*rtl:ignore*/;
}

.Editor-editor{
  height:400px;
}

.selected{
  color:#FFF !important;
  background-color:rgb(0, 162, 232);
}
body{
  overflow-x: hidden;
}
@endpush


@push('scripts')

<!-- editor js -->
<script src="{{ asset('plugins/editor/editor.js') }}"></script>
<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
@include("company.dashboard.js_partials.__js_article")
<script>
</script>
<script>
    $(document).ready(function() {
        $("#txtEditor").Editor();
    });
</script>



@endpush