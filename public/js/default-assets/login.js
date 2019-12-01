(function ($) {
    'use strict';
        
        
        // *********************************
        // :: 3.0 Other Sites Active Code
        // **
        if($.fn.owlCarousel)
        { 
            var siteSlider = $(".site-slides");
            siteSlider.owlCarousel({
                item: 5 ,
                margin: 30,
                autoplay: true,
                smartSpeed: 1000,
                dots: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    992: {
                        items: 3
                    },
                    1400: {
                        items: 5
                    }
                }
            });

           
        }

        // *********************************
        // :: 3.0 Advertise Site Active Code
        // **
        if($.fn.owlCarousel)
        {
            var advertiseSlider = $("#advertiseSite");
            advertiseSlider.carousel({
                interval: 2000
            });
        }

        // ***********************************
        // :: 4.0 Video Slides Active Code
        // ***********************************
        function AddAllVideoElement(videos)
        {
            var asset_url = $("#asset-url").attr("url");
            var slider = $("#videoSlider");
            for(var i = 0 ; i < videos.length ; i++)
            {
                var singleSlide = $("<div class='single-portfolio-slide'></div>");
                var img = $("<img src='"+ asset_url + "/" + videos[i].adimg_url +"' alt=''>");
                var overlay = $("<div class='overlay-effect'>");
                var title = $("<h4>" +  videos[i].title + "</h4>");

                overlay.append(title);
                singleSlide.append(img).append(overlay);
                singleSlide.appendTo(slider);
            }
        }
        if ($.fn.owlCarousel) {

            $.get("popularvideo")
                .done(function(data){
                    AddAllVideoElement(data);
                    var portfolioSlide = $('.portfolio-sildes');
                    portfolioSlide.owlCarousel({
                        items: 4,
                        margin: 50,
                        loop: true,
                        autoplay: true,
                        smartSpeed: 1500,
                        dots: true,
                        responsive: {
                            0: {
                                items: 1
                            },
                            576: {
                                items: 2
                            },
                            992: {
                                items: 3
                            },
                            1400: {
                                items: 4
                            }
                        }
                    });
                })
                .fail(function(){});
            
        }

        // *************************************
        // :: 5.0 Testimonial Slides Active Code
        // *************************************
        function AddAllPopularArticle(articles)
        {
            var asset_url = $("#asset-url").attr("url");
            var slider = $(".testimonial-slides");

            articles.forEach(function(article){
                var singleSlide_container = $("<div class='single-testimonial-slide d-flex align-items-center'></div>");
                var partnerimg = $("<div class='testimonial-thumbnail'><img src='"+asset_url + "/" + article.user.img_url+"' alt=''></div>");
                var content_container = $("<div class='testimonial-content'></div>");
                var content = $("<h4></h4>").text(article.content.substr(0, 200) + "...");        
                var ratings = $("<div class='ratings'></div>");
                var auth_info = $("<div class='author-info'></div>").append("<h5>"+article.user.name+"</h5>");
                var quote = $("<div class='quote-icon'><img src='"+asset_url+"/img/core-img/quote.png' alt=''></div>");

                for(var i = 0 ; i < Math.min(article.popular, 5) ; i++)
                {
                    $("<i></i>").addClass("icon_star").appendTo(ratings);
                }

                partnerimg.appendTo(singleSlide_container);
                content_container.append(content).append(ratings).append(auth_info).append(quote).appendTo(singleSlide_container);
                singleSlide_container.appendTo(slider);
            });
        }
        if ($.fn.owlCarousel) {

            $.get("populararticle")
                .done(function(data){
                    AddAllPopularArticle(data);
                    var testimonialSlide = $('.testimonial-slides');
                    testimonialSlide.owlCarousel({
                        items: 1,
                        margin: 0,
                        loop: true,
                        autoplay: true,
                        autoplayTimeout: 10000,
                        smartSpeed: 1500,
                        nav: true,
                        navText: ['<i class="arrow_carrot-left"></i>', '<i class="arrow_carrot-right"></i>']
                    });
                    
                })
                .fail(function(){});
            
        }


        // *********************************
        // :: 16.0 Add Services
        // *********************************
        function AddLatestArticles(articles)
        {
            var articles_container = $("#latestArticle");
            var asset_url = $("#asset-url").attr("url");

            articles.forEach(function(article){
                var singleContent = $("<div></div>").addClass("post-content");
                var title = $("<h3></h3>").addClass("post-tile").text(article.title);
                var content = $("<p></p>").text(article.content.substr(0, 100));
                var arrow_icon = $("<i></i>").addClass("arrow_carrot-2right");
                var readmore = $("<a></a>").addClass("read-more-btn").text("Read More").append(arrow_icon);

                singleContent.append(title).append(content).append(readmore);
                var column = $("<div></div>").addClass("col-12 col-lg-4");
                $("<div style='background-image: url("+asset_url + "/" + article.user.img_url+");'></div>").addClass("single-blog-post").addClass("bg-img").addClass("mg-80")
                        .append(singleContent)
                        .appendTo(column);
                column.appendTo(articles_container);


            });
        }
        $.get("latestarticle")
            .done(function(data){
                AddLatestArticles(data);
            })
            .fail(function(){});
})(jQuery);