@push("scripts")
<script>
(function($){
    'use strict';

    function loadVideoData()
    {
        $("#video-container").load("{{ route('company.profile.videopartial') }}",
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
        $("#video-menu").addClass("active");
    }

    loadVideoData();
    dealWithMenu();
}(jQuery));
</script>
@endpush