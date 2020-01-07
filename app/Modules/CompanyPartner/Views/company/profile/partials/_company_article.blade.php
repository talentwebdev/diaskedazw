<div class="row">

    @foreach($articles as $article)
    <div class='col-md-3'>
        <div class='card article-panel'>
            <div class='card-img-top-container'>
                <img class='card-img-top' src='{{ asset($article->poster_img) }}' alt='Card image cap'>
            </div>
            <div class='card-body'>
                <div class='row partner-info'>
                    <img src='{{ asset($article->user->img_url) }}' class='card-partner-img'/>
                    <div class='col'>
                        <div class='card-partner-name'>{{ $article->user->name }}</div>
                    </div>
                </div>
                <h2 class='card-title'>{{ $article->title }}</h2>
                <p class='card-text'>{{ $article->summary }}</p>
                <div class='dropdown-divider'></div>
                <div style=''>
                    <div class='like-button-container' article-id='{{ $article->id }}' style='margin:auto;'>
                        <a style='padding: 5px;'><i article-id='{{ $article->id }}' class='article fas fa-star {{ $article->is_star ? "active" : "" }}'></i> <span class='count'>{{ $article->star }}<span></a>
                        <a style='padding: 5px;'><i article-id='{{ $article->id }}' class='article fas fa-sign-language  {{ $article->is_clap ? "active" : "" }}'></i> <span class='count'>{{ $article->clap }}<span></a>
                        <a style='padding: 5px;'><i article-id='{{ $article->id }}' class='article fas fa-heart {{ $article->is_heart ? "active" : "" }}'></i> <span class='count'>{{ $article->heart }}<span></a>
                    </div>
                </div>
                <div class='card-readmore' article-id='{{ $article->id }}' partner-id='{{ $article->user->id }}'>Περισσότερα</div>
            </div>
        </div>
    </div>
    @endforeach
</div>
<script>
(function($){
    function dealWithResponsive()
    {
        var responsivePage = function()
        {
            var width = $("#latest-articles").width()-32;

            if(width >= 233 * 4)
                $("#latest-articles").children().attr("class", "col-md-3");
            else if(width >= 233 * 3)
                $("#latest-articles").children().attr("class", "col-md-4");
            else if(width >= 233 * 2)
                $("#latest-articles").children().attr("class", "col-md-6");
            else if(width >= 233)
                $("#latest-articles").children().attr("class", "col-md-12");
        }
        $(window).resize(function(){
            responsivePage();
        });
        $(document).ready(e => {
            responsivePage();
        });
    }

    function dealWithClickEvent()
    {
        $('body').on('click', (e)=>{

            var type = "";
            var el = null;


            if($(e.target).hasClass('card-readmore'))
            {
                var articleid = $(e.target).attr('article-id');
                $('.article-show-section').trigger('showcontent', {articleid: articleid, partner_id: {{ $partner->id }}});
                @if(Auth::user() == null)
                {
                    $("#modalactivealert").modal();
                    //alert("please log in to see the content");
                    return;
                }
                @endif
                if($(".article-show-section").length == 0)
                {
                    location.href="{{ route('company.profile.article') }}";
                }
            }

            // click like button
            else if($(e.target).hasClass("article") && $(e.target).hasClass("fa-star"))
            {
                type = "star";
            }
            else if($(e.target).hasClass("article") && $(e.target).hasClass("fa-sign-language"))
            {
                type = "clap";
            }
            else if($(e.target).hasClass("article") && $(e.target).hasClass("fa-heart"))
            {
                type = "heart";
            }


            // clicked like button
            if(type.length != 0)
            {
                // send request to add like button with articleid, type.... set active to element button
                
                if(!$(e.target).hasClass("fa-company")){
                    var article_id = $(e.target).attr("article-id");
                    $.get("{{ route('likearticle') }}", {article_id: article_id, content_source: "company", liketype: type, partner_id: {{ $partner->id }}})
                        .then(function(data){
                            if(data == "failed")
                            {
                                //alert("you have to login first");
                                return;
                            }

                            // set active element and update count
                            if(type == "star")
                            {
                                $("i.fa-star[article-id='"+article_id+"']").parent().find(".count").text(data);
                                $("i.fa-star[article-id='"+article_id+"']").addClass("active");
                            }
                            else if(type == "clap")
                            {
                                $("i.fa-sign-language[article-id='"+article_id+"']").parent().find(".count").text(data);
                                $("i.fa-sign-language[article-id='"+article_id+"']").addClass("active");
                            }
                            else if(type == "heart")
                            {
                                $("i.fa-heart[article-id='"+article_id+"']").parent().find(".count").text(data);
                                $("i.fa-heart[article-id='"+article_id+"']").addClass("active");
                            }
                        })
                        .fail(function(err){});
                }

                
            }
        });        
    }
    dealWithClickEvent();
    dealWithResponsive();
}(jQuery));
</script>