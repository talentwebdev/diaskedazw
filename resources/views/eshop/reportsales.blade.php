@extends("layouts.app")

@section("content")
<div class="container">
    <div class="row" style="margin-top: 60px;">
        <div class="col-md-4">
            <label>StartTime:</label>
            <input type='text' class="form-control" id='startdatepicker' />
        </div>
        <div class="col-md-4">
            <label>EndTime:</label>
            <input type='text' class="form-control" id='enddatepicker' />
        </div>
        <div class="col-md-4">
            <button class="btn btn-primary form-control bottom-align" id="getReportBtn"> Get </button>
        </div>
    </div>

    <div class="row" style="padding-top: 20px;">
        <table id="transactionTable" class="display" style="width:100%">
            <thead>
                <tr>
                    <th>Buyer</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                    <th> Date </th>
                </tr>
            </thead>
        </table>
    </div>
</div>
@endsection

@push("scripts")
<script src="{{ asset('plugins/datepicker/js/jquery.datetimepicker.js') }}"></script>   
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
<script src="{{ asset('js/user-pages/eshop/reportsales.js') }}"></script>
@endpush

@push("styles")
<link type='text/css' href="{{ asset('plugins/datepicker/css/jquery.datetimepicker.min.css') }}" rel='stylesheet' />
<link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
<link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
<link type="text/css" rel="stylesheet" href="{{ asset('css/user-pages/eshop/style.css') }}" />
@endpush

