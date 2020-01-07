<div class='tz-gallery'>
    <div class='row' id='latest-images'>
    @foreach($images as $image)
        <div class="col-sm-6 col-md-4 image-gallery-item">
            <a class="lightbox" gallery-id="{{ $image->id }}" href="{{ asset($image->img_url) }}">
                <img style="height:200px;" gallery-id="{{ $image->id }}" src="{{ asset($image->img_url) }}" alt="Sky">
            </a>
            <h4 style='text-align:center; margin-top: -10px; word-wrap:break-word;'>{{ $image->title }}</h4>
            <div style=''>
                <div class='like-button-container' gallery-id='{{ $image->id }}' style='text-align:center;margin:auto;'>
                    <a style='padding: 5px;'><i gallery-id='{{ $image->id }}' class='gallery fas fa-star {{ $image->is_star ? "active" : "" }}'></i> <span class='count'>{{ $image->star }}<span></a>
                    <a style='padding: 5px;'><i gallery-id='{{ $image->id }}' class='gallery fas fa-sign-language {{ $image->is_clap ? "active" : "" }}'></i> <span class='count'>{{ $image->clap }}<span></a>
                    <a style='padding: 5px;'><i gallery-id='{{ $image->id }}' class='gallery fas fa-heart {{ $image->is_heart ? "active" : "" }}'></i> <span class='count'>{{ $image->heart }}<span></a>
                </div>
            </div>
        </div>
    @endforeach
    </div>    
</div>
<script>
(function($){
    'use strict'; 

    function dealWithGallery()
    {
        $(document).ready(e => {
            console.log("baguetteBox", baguetteBox);
            baguetteBox.run('.tz-gallery');
        });
    }

    function dealWithClickEvent()
    {
        $("body").click(function(e){
            // : 1. Get Type
            var type = "";

            if($(e.target).hasClass("gallery") && $(e.target).hasClass("fa-star"))
            {
                type = "star";
            }
            else if($(e.target).hasClass("gallery") && $(e.target).hasClass("fa-sign-language"))
            {
                type = "clap";
            }
            else if($(e.target).hasClass("gallery") && $(e.target).hasClass("fa-heart"))
            {
                type = "heart";
            }
            // : 2. Send request

            if(type.length != 0)
            {
                var gallery_id = $(e.target).attr("gallery-id");

                $.get("{{ route('likegallery') }}", {gallery_id: gallery_id, content_source: "company", liketype: type, partner_id: {{ $partner->id }}})
                    .then(function(data){
                        if(data == "failed") return;

                        // : 3. set active and update counts
                        if(type == "star")
                        {
                            $("i.fa-star[gallery-id='"+gallery_id+"']").parent().find(".count").text(data);
                            $("i.fa-star[gallery-id='"+gallery_id+"']").addClass("active");
                        }
                        else if(type == "clap")
                        {
                            $("i.fa-sign-language[gallery-id='"+gallery_id+"']").parent().find(".count").text(data);
                            $("i.fa-sign-language[gallery-id='"+gallery_id+"']").addClass("active");
                        }
                        else if(type == "heart")
                        {
                            $("i.fa-heart[gallery-id='"+gallery_id+"']").parent().find(".count").text(data);
                            $("i.fa-heart[gallery-id='"+gallery_id+"']").addClass("active");
                        }
                    })
                    .fail(function(err){});
            }
            
        });
    }

    dealWithGallery();
    dealWithClickEvent();
}(jQuery));
</script>