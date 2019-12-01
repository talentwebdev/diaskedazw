(function($){
    'use strict';

    $("body").click(function(e){

    });

    $('.article-show-section').on('showcontent', (e, param)=>{
        
        $("<div class='lds-roller' style='display:block;'><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>")
        .appendTo(".article-show-section");
        $.get('/getarticlecontent', param)
            .done((data)=>{
                console.log('getarticlecontent successed', data);
                $(".article-show-section").find('.lds-roller').remove();
                if(data == "error")
                {
                    $("#modalactivealert").modal();
                    return;
                }                

                $(".article-show-title").text(data.title);
                $(".article-show-content").html(data.content);

                //  1. set article id for each icon tag
                $(".article-show-like i").attr("article-id", data.id);
                //  2. set like count 
                $(".article-show-like .fa-star").parent().find(".count").text(data.star);
                $(".article-show-like .fa-sign-language").parent().find(".count").text(data.clap);
                $(".article-show-like .fa-heart").parent().find(".count").text(data.heart);
                //  3. set active for element
                if(data.is_star) $(".article-show-like .fa-star").addClass("active");
                else $(".article-show-like .fa-star").removeClass("active");
                if(data.is_clap) $(".article-show-like .fa-sign-language").addClass("active");
                else $(".article-show-like .fa-sign-language").removeClass("active");
                if(data.is_heart) $(".article-show-like .fa-heart").addClass("active");
                else $(".article-show-like .fa-heart").removeClass("active");
                // 4. display like button container
                $(".article-show-like").css("display", "block");

                /*
                $(".like-container  .fa-thumbs-up").attr("article-id", data.id);
                $(".like-container  .fa-thumbs-down").attr("article-id", data.id);
                $(".like-container").css("display", "block");                
                $(".like-container .thumbs-up").text(data.like);
                $(".like-container .thumbs-down").text(data.dislike);
                */

                if(data.status == 1)
                {
                    $(".like-container  .fa-thumbs-up").addClass("active");
                }
                else if(data.status == 0)
                {
                    $(".like-container  .fa-thumbs-down").addClass("active");
                }
            })
            .fail((err)=>{
                console.log('getarticlecontent failed', err);
            });
    });
}(jQuery));