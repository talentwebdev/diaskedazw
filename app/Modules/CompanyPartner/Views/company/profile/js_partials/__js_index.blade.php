@push("scripts")
<script>
    function dealWithProductService()
    {
        $("#product-service-container").html("");
        $("#product-service-container").load("{{ route('company.profile.productservice') }}",
            {
                _token: "{{ csrf_token() }}",
                count: 1,
                partner_id: {{ $partner->id }}
            }, function(response){
               // alert("ok");
            });
    }

    function dealWithArticle()
    {   
        $("#article-md").load("{{ route('company.profile.articlepartial') }}",
        {
            _token: "{{ csrf_token() }}",
            count: 6,
            partner_id: {{ $partner->id }}
        }, function(response){});
    }

    function dealWithGallery()
    {
        $("#image-md").load("{{ route('company.profile.imagepartial') }}",
        {
            _token: "{{ csrf_token() }}",
            count: 6,
            partner_id: {{ $partner->id }}
        },
        function(response){

        });
    }

    function dealWithVideo()
    {
        $("#video-md").load("{{ route('company.profile.videopartial') }}",
        {
            _token: "{{ csrf_token() }}",
            count: 6,
            partner_id: {{ $partner->id }}
        },
        function(resoponse){
           // alert(resoponse);
        });
    }
    
    function dealWithMenu()
    {
        //$(".active").removeClass("active");
        $("#home-menu").addClass("active");
    }

    dealWithProductService();
    dealWithArticle();
    dealWithGallery();
    dealWithVideo();
    dealWithMenu();
</script>
@endpush