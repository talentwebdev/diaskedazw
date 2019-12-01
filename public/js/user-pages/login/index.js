(function ($) {
    'use strict';
        
        
        // *********************************
        // :: 1.0 set top menu
        // **
        $("#home-top-menu").addClass('current-item');

        
        // ***********************************
        // :: 4.0 Video Slides Active Code
        // ***********************************
        /*
        function AddAllVideoElement(videos)
        {
            for(var i = 0 ; i < videos.length ; i++)
            {
                if(videos[i].video == null) continue;
                var titleHtml = "<a class='video-title' video-id='"+videos[i].video.id+"' partner-id='"+videos[i].id+"'>" + videos[i].video.title+"</a>";
                var html = "" + 
                    '<li class="amazingcarousel-item">' + 
                        '<div class="amazingcarousel-item-container">' +
                            '<div class="amazingcarousel-image">' + 
                                '<a href="'+asset_url+"/"+videos[i].video.video_url+'" title="'+titleHtml+'"  class="html5lightbox" data-group="amazingcarousel-1">' +
                                    '<img src="'+asset_url+"/"+videos[i].video.adimg_url+'" width="320" height="180" alt="big_buck_bunny (2)" />'+
                                '</a>'+
                            '</div>' +
                            '<div class="amazingcarousel-title">'+titleHtml+'</div>' +
                            '<div class="amazingcarousel-description"></div>' +
                        '</div>' +
                    '</li>';

                $( html ).appendTo('.amazingcarousel-list');
            }
        }
        if ($.fn.owlCarousel) {

            $.get("latestvideo")
                .done(function(data){
                    AddAllVideoElement(data);
                    $( '#amazingcarousel-1').ready(()=>{
                        addVideoCarousel();
                    });
                    
                })
                .fail(function(){});
            
        }
*/
        // *************************************
        // :: 5.0 Testimonial Slides Active Code
        // *************************************
        function AddArticleElement(articles)
        {
            var latestArticle = articles[0];

            articles.forEach((article)=>{

                var months = [ "January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
                var date = new Date( article.created_at );
                
                if(date > new Date(latestArticle.created_at))
                    latestArticle = article;

                var html = "" + 
                    "<div class='single-portfolio-slide'>" +
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
                                "<p class='card-text'>"+article.summary+"</p>" +
                                "<div class='dropdown-divider'></div>" +
                                "<div style=''>" + 
                                    "<div class='like-button-container' article-id='"+article.id+"' style='margin:auto;'>" +                                        
                                        "<a style='padding: 5px;'><i partner-id='"+article.user.id+"' article-id='"+article.id+"' class='article fas fa-star " + (article.is_star ? "active" : "" ) + "'></i> <span class='count'>" + article.star + "<span></a>" +
                                        "<a style='padding: 5px;'><i partner-id='"+article.user.id+"' article-id='"+article.id+"' class='article fas fa-sign-language " + (article.is_clap ? "active" : "" ) +  "'></i> <span class='count'>" + article.clap + "<span></a>" + 
                                        "<a style='padding: 5px;'><i partner-id='"+article.user.id+"' article-id='"+article.id+"' class='article fas fa-heart " + (article.is_heart ? "active" : "" ) + "'></i> <span class='count'>" + article.heart + "<span></a>" +
                                    "</div>" +
                                "</div>" +
                                "<div class='card-readmore' article-id='"+article.id+"' partner-id='"+article.user.id+"'>Read more</div>" +
                            "</div>" +
                        "</div>" + 
                    "</div>";

                $( html ).appendTo( '.article-slides' );                
            });

            $('#latest-article-text').html(latestArticle.content);

            var testimonialSlide = $('.article-slides');
            testimonialSlide.owlCarousel({
                items: 4,
                margin: 25,
                autoplay: true,
                autoplayTimeout: 3000,
                smartSpeed: 1500,
                responsive: {
                    0: {
                        items: 1
                    },
                    768: {
                        items: 2
                    },
                    1400: {
                        items: 4
                    }
                }
            });
        }
        if ($.fn.owlCarousel) {           
            $.get("latestarticle")
                .done(function(data){
                    AddArticleElement(data);                    
                })
                .fail(function(){});
            
        }

        /**
         * partnner list carousel
         */
        function addTeamCarousel()
        {
            var items = $(".team-carousel").children('li');
            var index = parseInt(items.length / 2);
            if(items.length > 2)
            {
                $(items[index-1]).removeClass('back-pos').addClass('left-pos');
                $(items[index]).removeClass('back-pos').addClass('main-pos');
                $(items[index+1]).removeClass('back-pos').addClass('right-pos');
                $('.team-container').team_carousel();
            }
        }
        function AddPartnerElement(partners)
        {   
            partners.forEach(element => {
                /*
                var html = "" + 
                    '<div class="slider-single">' +
                        '<img class="slider-single-image" src="' + asset_url + "/" + element.img_url + '" alt="1" />' +
                        '<h1 class="slider-single-title">' + element.name + '</h1></br>' +
                        "<h4 class='slider-single-description'>" + element.summary.substr(0, 200) + "..." + "</h4> </br>" +
                    "</div>";

                $(html).appendTo(".partners-section .slider-content");
                */
                var partner_categoryname = element.partner?element.partner.category_name: '';
                
                var html = "" + 
                    "<li class='items back-pos'>" + 
                        "<img src='" + asset_url + "/" + element.img_url + "'>" + 
                        "<div class='team-member-desc'>" + 
                            "<h3>" + element.name + "</h3>" +
                            "<hr>" + 
                            "<h4>" + partner_categoryname + "</h4>" +
                            "<hr>" +
                            "<button partner-id='"+element.id+"' class='buy-btn btn btn-primary team-carousel-btn'>Επιλογη</button>" +
                        "</div>" +
                    "</li>";

                $(html).appendTo('.team-carousel');
            });
            console.log(window.loaded);
            if(window.loaded == true)
            {
                setTimeout(addTeamCarousel, 1000);
            }
            jQuery(window).load(()=>{
                setTimeout(addTeamCarousel, 1000);
            });
        }
        if($.fn.smoothcarousel)
        {
            $.get('partnerinfo', {type: 1})
                .done((data)=>{
                    console.log("partnerinfo success", data);
                    AddPartnerElement(data);
                    //$(".slider-container").smoothcarousel();
                })
                .fail((err)=>{
                    console.log("partnerinfo failed", err);
                });
        }
        /**
         * circle mall container
         */
        /*
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
        var circle_mall_section_height;
        $("#service-area").css( 'height', main_size + "px" );
        $(".circle-mall-section").css('height', (main_size + 200) / 2 + 'px');
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
                                                $.get( 'setpartner', {  partnerid: item.partner })
                                                    .done( (data) => {
                                                        console.log( 'set partner sucess', data );
                                                        location.href = 'partnerprofile.home';
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
        $( "#showAllSwitch" ).change( function( e ) {
            if($(this).hasClass('on'))
                $(this).removeClass('on');
            else
                $(this).addClass('on');

            if($(this).hasClass('on'))
            {
                var height = parseInt($( ".circle-mall-section" ).css('height')) * 2;
                $( ".circle-mall-section" ).animate( {"height": height + "px"}, 500 );
            }
            else
            {
                var height = parseInt($( ".circle-mall-section" ).css('height')) / 2;
                $( ".circle-mall-section" ).animate( {"height": height + "px"}, 500 );
            }
        });

        */

       function formatNumber(num) {
            return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
        }
        /**
         * package carousel
         */
        function addPackages(packages) {

            
            packages.forEach(element => {
                var html =  "<div class='hideRight' style='text-align:center;'>" + 

                                "<a href='packages'><img src='" + asset_url + "/" + element.img_url  + "'></a>" + 
                                "<div style='position:relative;'><a href='packages'>"+element.name+"</a></div>" +
                                "<span class='package-info'>" +
                                    "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='width:9px;'> " + 
                                    "<span style='font-weight:bold; font-size:13px;'>"+formatNumber(element.points)+" | </span>" + 
                                    "<span style='font-weight:bold; color:#F00; font-size:13px;' >" + (element.cost == 0 ? "free" : "€" + formatNumber(element.cost)) + "</span>" +                                    
                                "</span>" +
                                "<div class='package-info' style='font-weight: bold; font-size:13px; text-align:center; width: 100%;'>" + element.shares + "</div>" +

                            "</div>";
                
                var el = $( html );
                //el.find( "a" ).first().text( element.name );
                
                el.appendTo( $("#carousel" ) );
            });
            

            var items = $( "#carousel" ).children( 'div' );
            if( items.length > 3)
            {
                var middle = parseInt(items.length / 2);
                $( items[middle-2] ).attr('class', 'prevLeftSecond');
                $( items[middle-1] ).attr('class', 'prev');
                $( items[middle] ).attr( "class", 'selected' );
                $( items[middle + 1] ).attr( "class", 'next' );
                $( items[middle + 2] ).attr( "class", 'nextRightSecond' );
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


        /**
         * get gallery from database
         */
        function AddImageElement(partners)
        {
            if(partners.promote == true)
            {
                partners.data.forEach(function(image){
    
                    var html = "" + 
                        "<div class='single-portfolio-slide'>" +    
                            "<img src='"+asset_url+"/"+image.img_url+"' style='width:100%; height: 200px;' >" +
                        "</div>";
                    $(html).appendTo('.gallery-slides');
                });
            }
            else
            {
                partners.forEach(function(partner){
                    if(partner.image == null)
                        return;
    
                    var html = "" + 
                        "<div class='single-portfolio-slide'>" +    
                            "<img src='"+asset_url+"/"+partner.image.img_url+"' style='width:100%; height: 200px;' >" +
                        "</div>";
                    $(html).appendTo('.gallery-slides');
                });
            }

            var gallerySlides = $('.gallery-slides');
            gallerySlides.owlCarousel({
                items: 4,
                margin: 25,
                autoplay: true,
                autoplayTimeout: 3000,  
                smartSpeed: 1500,
                responsive: {
                    0: {
                        items: 1
                    },
                    700: {
                        items: 2
                    },
                    1400: {
                        items: 4
                    }
                }
            });
        }
        $.get('latestimages')
            .done(function(data){
                console.log('latestimages success', data);
                AddImageElement(data);
            })
            .fail(function(err){
                console.log('latestimages failed', err);
            });

        /**
         * search article
         */
        $(".search-form").submit((e)=>{
            e.preventDefault();
            $(".lds-roller").css('display', 'block');
            $.get('searcharticle', {"searchindex":$("#search").val()})
                .done((data)=>{
                    console.log('sesarcharticle success', data);
                    $(".article-slides").remove();
                    $("<div></div>").addClass('article-slides owl-carousel').appendTo(".article-slides-container").ready(()=>{
                        AddArticleElement(data);
                        $(".lds-roller").css('display', 'none');
                    });
                    
                })
                .fail((err)=>{
                    console.log('searcharticle failed', err);
                });
        });

        

    /***
     * send email
     */
    $("#sendemail-btn").click(function(){
        $.post("sendemail", {
                _token: csrf_token,
                name: $("#email-name").val(),
                surname: $("#email-surname").val(),
                email: $("#email-email").val(),
                reference: $("#email-reference").val()
            })
            .done(function(data){
                console.log('sendmail successed', data);
            })
            .fail(function(err){
                console.log('sendmail failed', err);
            });
    });

    /***
     * fetch announce ment
     */
    function formatDate(date) {
        var monthNames = [
          "January", "February", "March",
          "April", "May", "June", "July",
          "August", "September", "October",
          "November", "December"
        ];
      
        var day = date.getDate();
        var monthIndex = date.getMonth() + 1;
        var year = date.getFullYear();
      
        return year + '-' + monthIndex + '-' + day + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
      }

    $.get("getpublicannounce")
        .then(items => {
            items.forEach(item => {
                var html = "" + 
                            "<li class='list-group-item'>" + 
                                "<div class='announce-title' partner-id='"+item.user.id+"'>" + item.title + "(" + item.user.name + ")" + " </div>" + 
                                "<div class='announce-content' style='color:#cccccc;'>" + item.content + "</div>" + 
                                "<div class='announce-date'>" + formatDate(new Date(item.date)) + "</div>"+
                            "</li>";

                $(html).appendTo("#announce-list");
            });
        })
        .fail(err => {});

    /*************************************
     * Add click listener
     * **********************************/
    $('body').on('click', (e)=>{
        if($(e.target).hasClass('announce-title'))
        {
            var partnerid = $(e.target).attr('partner-id');
             $.get( 'setpartner', { partnerid: partnerid })
                .done( (data) => {
                    console.log( 'set partner sucess', data );
                    location.href = 'partnerprofile.home';
                })
                .fail( (err) => {
                    console.log( 'set partner failed', err );
                });
        }        
    });

    /**
         * click event
         */
        $('body').on('click', (e)=>{
            var el = $(e.target);
            // click video?
            if(el.hasClass('video-title'))
            {
                $.get( 'setpartner', { partnerid: el.attr("partner-id"), videoid: el.attr("video-id") })
                    .done( (data) => {
                        console.log( 'set partner sucess', data );
                        location.href = 'partnerprofile.home';
                    })
                    .fail( (err) => {
                        console.log( 'set partner failed', err );
                    });
                return;
            }

            if( el.hasClass('card-readmore') || el.hasClass('team-carousel-btn'))
            {
                $.get( 'setpartner', {partnerid: el.attr("partner-id"), articleid: el.attr("article-id")})
                    .done( (data) => {
                        console.log( 'set partner sucess', data );
                        location.href = 'partnerprofile.home';
                    })
                    .fail( (err) => {
                        console.log( 'set partner failed', err );
                    });
                return;
            }


            // click like button 
            var type = "";
            if($(e.target).hasClass("article") && $(e.target).hasClass("fa-star"))
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
                var partner_id = $(e.target).attr("partner-id");
                $.get("likearticle", {article_id: article_id, liketype: type, partner_id: partner_id})
                    .then(function(data){
                        
                        if(data == "failed")
                        {
                            //alert("you have to login first");
                            $("#modalactivealert").modal();
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
})(jQuery);