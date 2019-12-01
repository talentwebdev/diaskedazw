( function( $ ){
    'use strict';

    if( $( "#pageAttr" ).attr( "attr" ) == 'about' )
    {
        /**
         * get partner from database
         */
        ( function( $ ) {
            
            var addPartners = function ( partners )
            {
                var asset_url = $("#asset-url").attr("url");
                var slider = $(".testimonial-slides");

                slider.html( "" );

                partners.forEach( function( partner ){
                    var singleSlide_container = $("<div class='single-testimonial-slide d-flex align-items-center'></div>");
                    var partnerimg = $("<div class='testimonial-thumbnail'><img src='"+asset_url + "/" + partner.img_url+"' alt=''></div>");
                    var content_container = $("<div class='testimonial-content'></div>");
                    var content = $("<h4></h4>").text(partner.summary == null ? "" : partner.summary.substr(0, 200) + "...");        
                    var ratings = $("<div class='ratings'></div>");
                    var auth_info = $("<div class='author-info'></div>").append("<h5>"+partner.name+"</h5>");
                    var quote = $("<div class='quote-icon'><img src='"+asset_url+"/img/core-img/quote.png' alt=''></div>");

                    for(var i = 0 ; i < Math.min(partner.popular, 5) ; i++)
                    {
                        $("<i></i>").addClass("icon_star").appendTo(ratings);
                    }

                    partnerimg.appendTo(singleSlide_container);
                    content_container.append(content).append(ratings).append(auth_info).append(quote).appendTo(singleSlide_container);
                    singleSlide_container.appendTo(slider);
                });
            }

            $.post( "getpartnerusers",
                    {
                        "_token": $("#pageAttr").attr("csrf")
                    } )
                    .done( function( partners ) {
                        console.log( "getPartnerUser Succeed", partners );
                        
                        addPartners( partners );

                        var testimonialSlide = $('.testimonial-slides');
                        testimonialSlide.owlCarousel({
                            items: 1,
                            margin: 0,
                            loop: false,
                            autoplay: true,
                            autoplayTimeout: 10000,
                            smartSpeed: 1500,
                            nav: true,
                            navText: ['<i class="arrow_carrot-left"></i>', '<i class="arrow_carrot-right"></i>']
                        });
                    } )
                    .fail( function( err ) {
                        console.log( "getPartnerUsers failed", err );
                    } );
        } (jQuery) );
    }
} (jQuery));