@push("scripts")
<script>
(function($){

    function loadArticleData()
    {
        $("#article-container").load("{{ route('company.profile.articlepartial') }}",{
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

    loadArticleData();
    dealWithMenu();
}(jQuery));
</script>
@endpush