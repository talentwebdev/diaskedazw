(function($){
    'use strict';

    // *********************************
    // :: 1.0 set top menu
    // *********************************
    $("#partners-top-menu").addClass('current-item');

    // **********************************
    // :: 2.0 add carousel
    // **********************************
    function addClickListener(el, partner){
        el.click(function(){

            var right = $(".partner-detail-row.right-pos"),
                left = $(".partner-detail-row.left-pos"),
                main = $(".partner-detail-row.main-pos");

            if(main.find(".partner-profile-btn").attr("partner_id") == partner.id)
                return;
            
            right.find('.partner-detail-image-container img').attr('src', asset_url + "/" + partner.partner.fullimg_url);
            var newStr  = partner.summary.substr(0, partner.summary.split(" ", 61).join(" ").length);
            right.find('.partner-detail-info-summary').text(newStr + (partner.summary.length > newStr.length ? "..." : ""));
            right.find(".partner-detail-info-name").text(partner.name + "(" + partner.partner.category_name+")");
            right.find(".partner-profile-btn").attr("partner_id", partner.id);
            right.find('.partner-detail-info-say').text(partner.partner.say);
            var video = document.getElementById("mainVideo");
            video.src = partner.partner.profilevideo_url;
            video.load();

            $("#partner-list .item.active").removeClass('active');
            el.addClass("active");            

            right.removeClass('right-pos').addClass('main-pos');
            left.removeClass('left-pos').addClass('right-pos');
            main.removeClass('main-pos').addClass('left-pos');

            if(jQuery(window).width() < 767)
            {
                var offsetTop = main.find('.partner-detail-image-container img').offset().top; 

                window.setTimeout(function(){
                    window.scrollTo(0, offsetTop);
                    
                }, 1000);
            }
            
        });
    }
    function addPartnerInfoElement(partners)
    {
        var start = parseInt(Math.random() * partners.length);
        for(var i = start ; i < start + partners.length ; i++)
        {
            var element = partners[i % partners.length];

            var html = "" + 
                    "<div class='item'>" +
                        "<div class='partner-clip-path'>" +
                            "<div class='img-container'>" +
                                "<img src='"+asset_url+"/"+element.img_url+"'>" + 
                                "<div class='img-overlay'></div>" +
                            "</div>" +
                            "<img class='img-border' src='" + asset_url+"/"+"img/core-img/ceo.png" + "' style='width:100%; position:absolute; left:0px; top:0px;'>" +
                            "<img class='img-border-hover' src='" + asset_url+"/"+"img/core-img/ceo_hover.png" + "' style='width:100%; position:absolute; left:0px; top:0px;'>" +
                        "</div>" +
                    "</div>";

            if(i == start){
                var main = $(".partner-detail-row.main-pos");
                main.find('.partner-detail-image-container img').attr('src', asset_url + "/" + element.partner.fullimg_url);
                var newStr  = element.summary.substr(0, element.summary.split(" ", 61).join(" ").length);
                main.find('.partner-detail-info-summary').text(newStr + (element.summary.length > newStr.length ? "..." : ""));
                main.find(".partner-detail-info-name").text(element.name + "(" + element.partner.category_name+")");
                main.find(".partner-profile-btn").attr("partner_id", element.id);
                main.find('.partner-detail-info-say').text(element.partner.say);
                var video = document.getElementById("mainVideo");
                video.src = element.partner.profilevideo_url;
                video.load();

                addClickListener($(html).addClass("active").appendTo('#partner-list'), element);
            }
            else
                addClickListener($(html).appendTo('#partner-list'), element);
        }     

        if($.fn.owlCarousel)
        {
            var owl = $('#partner-list');
            owl.owlCarousel({
                nav: true,
                navText:["<i class='fas fa-angle-left'></i>", "<i class='fas fa-angle-right'></i>"],
                margin: 30,
                loop: true,
                autoplay: true,
                responsiveClass:true,
                responsive: {
                    0: {
                        items: 1
                    },
                    500: {
                        items: 2
                    },
                    700: {
                        items: 3
                    },
                    900: {
                        items: 4
                    },
                    1100: {
                        items: 5
                    },
                    1300: {
                        items: 6
                    },
                    1500: {
                        items: 7
                    }
                }
            });
            
            owl.on('mouseleave',function(e){
                owl.trigger('play.owl.autoplay');
            });
            
            owl.on('mouseover',function(e){
                owl.trigger('stop.owl.autoplay');
            });
        }
        
    }
    $.get('partnerinfo', {type: 1})
        .done(function(data){
            console.log('partnerinfo successed', data);
            addPartnerInfoElement(data);

        })
        .fail(function(err){
            console.log('partnerinfo failed', err);
        });
    // **********************************
    // :: 3.0 add button click listener
    // **********************************
    $("body").click(function(e){
        var el = $(e.target);
        if($(e.target).hasClass('partner-profile-btn'))
        {
            $.get( 'setpartner', { partnerid: el.attr("partner_id") })
            .done( (data) => {
                console.log( 'set partner sucess', data );
                location.href = 'partnerprofile.home';
            })
            .fail( (err) => {
                console.log( 'set partner failed', err );
            });
            return; 
        }
    });
}(jQuery));