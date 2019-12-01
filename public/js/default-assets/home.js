

(function ($) {
    'use strict';

        var asset_url = $("#asset-url").attr("url");

        // *********************************
        // :: 3.0 Welcome Slides Active Code
        // *********************************

        if ($.fn.owlCarousel) {
            var welcomeSlider = $('.welcome-slides');
            welcomeSlider.owlCarousel({
                items: 1
            });
        }

        // *********************************
        // :: 3.0 Other Sites Active Code
        // **
        if($.fn.owlCarousel)
        {
            var siteSlider = $(".site-slides");
            siteSlider.owlCarousel({
                item: 6 ,
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
                        items: 6
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
            var slider = $("#videoSlider");
            for(var i = 0 ; i < videos.length ; i++)
            {
                var videotitle = videos[i].title;
                var singleSlide = $("<div class='single-portfolio-slide'></div>");
                var img = $("<a><img src='"+ asset_url + "/" + videos[i].adimg_url +"' alt='video' /></a>");
                var overlay = $("<div class='overlay-effect' video-title='"+videotitle+"'video-url = '"+asset_url + "/" + videos[i].video_url+"'data-toggle='modal' data-target='#showvideomodal'></div>");
                var title = $("<h4>" +  videotitle + "</h4>");

                overlay.click(function(){
                    var video = document.getElementById("modalshowvideo");
                    video.src = $(this).attr("video-url");
                    video.load();
                    $("#videotitle").text($(this).attr("video-title"));
                });
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

            articles.forEach(function(article){
                var singleContent = $("<div></div>").addClass("post-content");
                var title = $("<h3></h3>").addClass("post-tile").text(article.title);
                var content = $("<p></p>").text(article.content.substr(0, 100)).attr("total", article.content);
                var arrow_icon = $("<i></i>").addClass("arrow_carrot-2right");
                var readmore = $("<a data-toggle='modal' data-target='#showarticlemodal'></a>").addClass("read-more-btn").text("Read More").append(arrow_icon);

                readmore.click(function(e){
                    $("#articleContent").text($(this).parent().children("p:first").attr("total"));
                    $("#articletitle").text($(this).parent().children("h3:first").text());
                });

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

        // *********************************
        // :: 17.0 Add Service Component
        // *********************************
        var main_services = [
            {
                name: "Event",
                img_url: asset_url + "/" + "img/services/event.png",
                sub_component: [],
                adv_img: asset_url + "/" + "img/services/service_ad/event.jpg"
            },

            {
                name: "Seminars",
                img_url: asset_url + "/" + "img/services/seminar.png",
                sub_component: [
                    { name: "Life Coaching", img_url: asset_url + "/" + "img/services/seminar.png", partner: 10 },
                    { name: "Internet Marketing", img_url: asset_url + "/" + "img/services/seminar.png", partner: 10 },
                    { name: "MLM", img_url: asset_url + "/" + "img/services/seminar.png", partner: 10 },
                    { name: "Business", img_url: asset_url + "/" + "img/services/seminar.png", partner: 10 },
                    { name: "Greek", img_url: asset_url + "/" + "img/services/seminar.png", partner: 10 }
                ],
                adv_img: asset_url + "/" + "img/services/service_ad/seminar.jpg"
            },

            {
                name: "GYM",
                img_url: asset_url + "/" + "img/services/mind.png",
                sub_component: [
                    { name: "Health App", img_url: asset_url + "/" + "img/services/seminar.png", partner: 10 },
                    { name: "Gyms", img_url: asset_url + "/" + "img/services/seminar.png", partner: 10 },
                    { name: "Trainers", img_url: asset_url + "/" + "img/services/seminar.png", partner: 10 }
                ],
                adv_img: asset_url + "/" + "img/services/service_ad/gym.jpg"
            },

            {
                name: "Discounts",
                img_url: asset_url + "/" + "img/services/discount.png",
                sub_component: [],
                adv_img: asset_url + "/" + "img/services/service_ad/discount.png"
            },

            {
                name: "Education",
                img_url: asset_url + "/" + "img/services/education.png",
                sub_component: [],
                adv_img: asset_url + "/" + "img/services/service_ad/education.jpg"
            },

            {
                name: "Medical",
                img_url: asset_url + "/" + "img/services/medical.png",
                sub_component: [],
                adv_img: asset_url + "/" + "img/services/service_ad/medical.jpg"
            },

            {
                name: "Insurance",
                img_url: asset_url + "/" + "img/services/insurance.png",
                sub_component: [],
                adv_img: asset_url + "/" + "img/services/service_ad/insurance.jpg"
            },

            {
                name: "Cars",
                img_url: asset_url + "/" + "img/services/car.png",
                sub_component: [],
                adv_img: asset_url + "/" + "img/services/service_ad/car.jpg"
            },

            {
                name: "Games",
                img_url: asset_url + "/" + "img/services/game.png",
                sub_component: [
                    { name: "Kids", img_url: asset_url + "/" + "img/services/game.png", partner: 10 },
                    { name: "Casino", img_url: asset_url + "/" + "img/services/game.png", partner: 10 },
                    { name: "Football", img_url: asset_url + "/" + "img/services/game.png", partner: 10 }
                ],
                adv_img: asset_url + "/" + "img/services/service_ad/game.png"
            },

            {
                name: "E-shop",
                img_url: asset_url + "/" + "img/services/shop.png" ,
                sub_component: [],
                adv_img: asset_url + "/" + "img/services/service_ad/eshop.png"
            },

            {
                name: "Future",
                img_url: asset_url + "/" + "img/services/future.png" ,
                sub_component: [],
                adv_img: asset_url + "/" + "img/services/service_ad/future.jpg"
            },

            {
                name: "Services",
                img_url: asset_url + "/" + "img/services/service.png" ,
                sub_component: [
                    { name: "Nutritionist", img_url: asset_url + "/" + "img/services/service.png", partner: 10 },
                    { name: "Herbs", img_url: asset_url + "/" + "img/services/service.png", partner: 10 },
                    { name: "Psychology", img_url: asset_url + "/" + "img/services/service.png", partner: 10 },
                    { name: "Astrology", img_url: asset_url + "/" + "img/services/service.png", partner: 10 },
                    { name: "Legal", img_url: asset_url + "/" + "img/services/service.png", partner: 10 }
                ],
                adv_img: asset_url + "/" + "img/services/service_ad/service.jpg"
            }

        ];

        var main_size = 800;
        var sub_size = 500;
        $("#service-area").css( 'height', main_size + "px" );
        var component = $( "#circle-component" ).circle_component( {
                            items: main_services,
                            size: main_size,
                            onClickItem: function( item ){
                                console.log( "onclickitem", item );

                                component.setCurrentItem( item );

                                console.log( "sub category", main_services[item].sub_component.length );
                                if( main_services[item].sub_component.length > 0)
                                {
                                    $( "#sub-component" )
                                        .css( 'margin-top', (main_size - sub_size) / 2 - main_size+ "px" )
                                        .css( 'display', 'block' )
                                        .addClass( 'scaleup' );

                                    var sub_component = $( "#sub-component" ).circle_component( {
                                        items: main_services[item].sub_component,
                                        size: sub_size,
                                        onClickItem: (i, item) =>
                                        {
                                            if( item.hasOwnProperty('partner') )
                                            {
                                                $.post( 'setpartner', { _token: csrf_token, partnerid: item.partner })
                                                    .done( (data) => {
                                                        console.log( 'set partner sucess', data );
                                                        location.href = 'partnerprofile';
                                                    })
                                                    .fail( (err) => {
                                                        console.log( 'set partner failed', err );
                                                    });
                                            }
                                        }
                                    });

                                    $( "#sub-component" ).one('webkitAnimationEnd oanimationend msAnimationEnd animationend',
                                        function(e) {

                                        // code to execute after animation ends

                                        $(this).removeClass('scaleup');
                                    });

                                }
                                else
                                {
                                    $( "#sub-component" )
                                            .css( "display", "none" )
                                            .removeClass( 'scaleup' );

                                }

                                $( '#adv-service' )
                                                .css( 'display', 'block' )
                                                .addClass( 'scaleup' );
                                $( "#adv-service img" ).attr( "src", main_services[item].adv_img );

                                $( "#adv-service" ).one('webkitAnimationEnd oanimationend msAnimationEnd animationend',
                                    function(e) {

                                    // code to execute after animation ends

                                    $(this).removeClass('scaleup');
                                });
                            }
                        });

        // *********************************
        // :: 18.0 Add Service Component
        // *********************************
        $( "#showAllSwitch" ).change( function( e ) {
            if($(this).hasClass('on'))
                $(this).removeClass('on');
            else
                $(this).addClass('on');

            if($(this).hasClass('on'))
                $( "#announce-panel" ).animate( {"margin-top": "0px"}, 1000 );
            else
                $( "#announce-panel" ).animate( {"margin-top": "-600px"}, 1000 );
        });

        // *********************************
        // :: 19.0 Add Package Carousel Component
        // *********************************
        function addPackages(packages) {

            
            packages.forEach(element => {
                var html =  "<div class='hideRight' style='text-align:center;'>" + 
                                "<img src='" + asset_url + "/" + element.img_url  + "'>" + 
                                "<p></p>" +
                            "</div>";
                
                var el = $( html );
                el.find( "p" ).first().text( element.name );
                
                el.appendTo( $("#carousel" ) );
            });
            

            var items = $( "#carousel" ).children( 'div' );
            if( items.length > 3)
            {
                $( items[0] ).attr( "class", 'selected' );
                $( items[1] ).attr( "class", 'next' );
                $( items[2] ).attr( "class", 'nextRightSecond' );
            }
        }
        $.ajax({
            type: "get",
            url: "fetchPackages",
            success: function (response) {
                console.log('fetchPackages Success', response);

                addPackages( response );
            }
        });
})(jQuery);
