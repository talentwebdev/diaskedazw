(function($){
    'use-strict';

    // ***************************
    // 1. add click listener
    // ***************************
    $('.article-show-section').on('showcontent', ()=>{});
    $('body').on('click', (e)=>{

        var type = "";
        var el = null;


        if($(e.target).hasClass('card-readmore'))
        {
            var articleid = $(e.target).attr('article-id');
            $('.article-show-section').trigger('showcontent', {articleid: articleid, partner_id: partner.id});
            if(authorised == 0)
            {
                $("#modalactivealert").modal();
                //alert("please log in to see the content");
                return;
            }
            else if($(".article-show-section").length == 0)
            {
                location.href="partnerprofile.article";
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
            var article_id = $(e.target).attr("article-id");
            $.get("likearticle", {article_id: article_id, liketype: type, partner_id: partner.id})
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
    });
    // ***************************
    // 2. fetch artices from database
    // ***************************
    var addArticleElement = function( article ) {

        var months = [ "January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        var date = new Date( article.created_at );         

        var html = "" + 
                "<div class='col-md-3'>" +
                    "<div class='card article-panel'>" +
                        "<div class='card-img-top-container'>" + 
                            "<img class='card-img-top' src='" + asset_url + "/" + article.poster_img + "' alt='Card image cap'>" + 
                        "</div>" +
                        "<div class='card-body'>" + 
                            "<div class='row partner-info'>" + 
                                "<img src='" + asset_url + "/" + article.user.img_url+"' class='card-partner-img'/>" +
                                "<div class='col'>" +
                                    "<div class='card-partner-name'>" + article.user.name + "</div>" +
                                    "<div class='card-date'>" + months[date.getMonth()-1] + " " + date.getDay() + ", " + date.getFullYear() + "</div>" +
                                "</div>" + 
                            "</div>" +
                            "<h2 class='card-title'>" + article.title + "</h2>" +
                            "<p class='card-text'>"+article.summary+"..."+"</p>" +
                            "<div class='dropdown-divider'></div>" +
                            "<div style=''>" + 
                                "<div class='like-button-container' article-id='"+article.id+"' style='margin:auto;'>" +                                        
                                    "<a style='padding: 5px;'><i article-id='"+article.id+"' class='article fas fa-star " + (article.is_star ? "active" : "" ) + "'></i> <span class='count'>" + article.star + "<span></a>" +
                                    "<a style='padding: 5px;'><i article-id='"+article.id+"' class='article fas fa-sign-language " + (article.is_clap ? "active" : "" ) +  "'></i> <span class='count'>" + article.clap + "<span></a>" + 
                                    "<a style='padding: 5px;'><i article-id='"+article.id+"' class='article fas fa-heart " + (article.is_heart ? "active" : "" ) + "'></i> <span class='count'>" + article.heart + "<span></a>" +
                                "</div>" +
                            "</div>" + 
                            "<div class='card-readmore' article-id='"+article.id+"' partner-id='"+article.user.id+"'>Περισσότερα</div>" +
                        "</div>" +
                    "</div>" + 
                "</div>";

        $( html ).appendTo( '#latest-articles' );    
    }

    var addArticles = function( articles ) {
        $('#latest-articles').children().remove();
        articles.forEach(function(article){
            addArticleElement(article);
        });
        responsivePage();
    }
    
    $("<div class='lds-roller' style='display:block;'><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>")
            .appendTo("#latest-articles");
    $.get( "getarticles", { count: article_cnt, partnerid: partner.id } )
        .then( function( data ) {
            console.log( "getarticles succeed", data );
            $("#latest-articles").find('.lds-roller').remove();
            addArticles( data );

            $(".card-readmore[article-id='"+content_id+"']").click();
            content_id = "";
        })
        .fail( function( err ) {
            console.log( "getarticles failed", err );

        });
    // **********************************************
    // 3. add search event 
    // **********************************************
    $('.search-form').on('searchresult', function(e, articles){
        addArticles(articles.data);
    });

    // ******************************************
    // 4. responsive design
    // ******************************************
    $(window).resize(function(){
        responsivePage();
    });
    function responsivePage()
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
}(jQuery));