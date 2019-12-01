@push("scripts")
<script>
(function($){
    'use strict';

    function loadImageData()
    {
        $("#image-container").load("{{ route('company.profile.imagepartial') }}",
        {
            _token: "{{ csrf_token() }}",
            partner_id: {{ $partner->id }},
            count: -1
        },
        function(response){});
    }

    function dealWithMenu()
    {
        $(".active").removeClass("active");
        $("#article-menu").addClass("active");
    }

    loadImageData();
    dealWithMenu();
}(jQuery));
</script>
@endpush