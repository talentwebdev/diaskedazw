<div class='row' id='statistics' style="display: flex; justify-content: space-around">
    <div style="display: flex; align-items: center">
        <p>Total Visits: </p>
        <p id="num_visits"></p>
    </div>
    <div style="display: flex; align-items: center">
        <p>Total Earning: </p>
        <p id="num_totalearnings"></p>
    </div>

</div>

@push('scripts')
<script src="{{ asset('js/user-pages/partnerprofile/statistics.js') }}"></script>
@endpush