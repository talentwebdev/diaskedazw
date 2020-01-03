(function($){
    'use strict';

    // *********************************
    // :: 1.0 set top menu
    // *********************************
    $("#about-top-menu").addClass('current-item');

    // **********************************
    // :: 2.0 add carousel
    // **********************************
    function addClickListener(el, partner){
        el.click(function(){
            console.log('you clicked partner', partner);
            location.href = 'packages';
            /*
            var right = $(".partner-detail-row.right-pos"),
                left = $(".partner-detail-row.left-pos"),
                main = $(".partner-detail-row.main-pos");
            
            //right.find('.partner-detail-image-container img').attr('src', asset_url + "/" + partner.partner.fullimg_url);
            right.find('.partner-detail-info-summary').text(partner.description);
            right.find(".partner-detail-info-name").text(partner.name);
            //right.find('.partner-detail-info-say').text(partner.partner.say);

            $("#partner-list .item.active").removeClass('active');
            el.addClass("active");            

            right.removeClass('right-pos').addClass('main-pos');
            left.removeClass('left-pos').addClass('right-pos');
            main.removeClass('main-pos').addClass('left-pos');
            */
        });
    }

    function formatNumber(num) {
        return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
    }
    function addPartnerInfoElement(partners)
    {
        for(var i = 0 ; i < partners.length ; i++)
        {
            var element = partners[i];

            /*
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
            */
           var html = "" + 
                        "<div class='item' style='border-radius:50%; text-align:center;'>" +
                            "<img src='" + asset_url + "/" + element.img_url+"' style='border-radius:50%; width: 80%; margin:auto; '>" +
                            "<div style='position:relative; width: 100%; text-align: center; color:#FFF;'>" + element.name + "</div>" +
                            "<span class='package-info' style='display:block;'>" +
                                "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='width:9px; display: inline;'>" + 
                                "<span style='font-weight:bold; color: #FFF; font-size:13px;'>"+formatNumber(element.points)+" | </span>" + 
                                "<span style='font-weight:bold; color:#F00; font-size:13px;' >" + (element.cost == 0 ? "free" : "€" + formatNumber(element.cost)) + "</span>" +                                    
                            "</span>" +
                        "</div>";

            if(i == 0){
                var main = $(".partner-detail-row.main-pos");
                //main.find('.partner-detail-image-container img').attr('src', asset_url + "/" + element.partner.fullimg_url);
                //main.find('.partner-detail-info-summary').text(element.description);
                //main.find(".partner-detail-info-name").text(element.name);
                //main.find('.partner-detail-info-say').text(element.partner.say);
            }
            
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
                autoplayTimeout: 2000,
                smartSpeed: 1000,
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
    $.get('fetchPackages')
        .done(function(data){
            console.log('fetchpackages successed', data);
            addPartnerInfoElement(data);

        })
        .fail(function(err){
            console.log('fetchpackages failed', err);
        });
   
}(jQuery));