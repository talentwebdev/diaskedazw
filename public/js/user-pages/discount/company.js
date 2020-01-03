(function($){
    'use strict';

    // ************************************************
    // 1. add Event listener
    // ************************************************
    function fetchCompanies(param){
        $(".company-container").children().remove();
        $("<div class='lds-roller' style='display:block;'><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>")
            .appendTo(".company-container");
        $.get('fetchcompanies', param)
            .done(function(data){
                console.log('fetchcompanies successed', data);

                addCompanyElement(data);
            })
            .fail(function(err){
                console.log('fetchcompanies failed', err);
            });
    }

    function fetchPromoteCompanies()
    {
        $.get('fetchpromotecompanies')
            .done(data => {
                console.log("fetchpromotecompanies", data);
                addPromoteCompanyElement(data);
            })
            .fail(err => {});   
    }

    $(".company-container").on('getdata', (e, param) => {
        fetchCompanies(param);
    });
    $(".company-container").on('search', (e, param)=>{
        fetchCompanies(param);
    });
    // ************************************************
    // 3. fetch compnay data from database.
    // ************************************************
    function addCompanyElement(companies)
    {
        var flag = 0;
        if($(".promote-packages-container").children().length == 0) flag = 1;

        $(".company-container").children().remove();
        companies.forEach((company)=>{
            /*
            var html = "" + 
                "<div class='col-md-3 company-item'>" +
                    "<img src='" + asset_url + "/" + company.logo_url + "' >" + 
                    "<button><a href='" + company.link_url+"'>" + company.name + "</a></button>" +
                "</div>";
                */
            var html = "" + 
                "<div class='col-md-3 company-item item'>" +
                    "<div style='padding:0px; position:relative;'>" + 
                        "<div class='amazingcarousel-flipout'>" + 
                            "<img src='"+asset_url+"/"+company.logo_url+"' style='box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border: 6px solid #FFF;' >" +                         
                        "</div>" +
                        "<div class='amazingcarousel-flip'>" + 
                            "<div style='width:90%; margin:auto; word-wrap:break-word; padding: 10px; background-color:#AAA; border-radius:5px; text-align:center; margin-top:5px;'>" + company.name + "</div>" +
                            '<div class="amazingcarousel-title" style="color:red;  text-align:center; position:relative; font-size:25px;">' + (company.discount_cnt != 0 ? (company.discount_cnt + "%") : "") + "</div>" + 
                            '<div class="amazingcarousel-description" style="text-align:center; color:#222222; height: 7vh; overflow: auto;">' + company.discount_info + '</div>' +
                        "</div>" + 
                    "</div>" +
                    "<div class='my-button' company-id='"+company.id+"' style='width:75%; margin:auto; word-wrap:break-word; padding: 5px; background-color:#2196F3; color: #FFF; font-weight: bold; border-radius: 10px; text-align:center; margin-top: 30px; '>Ενδιαφέρομαι</div>" + 
                "</div>";
                
            $(html).appendTo(".company-container");
        });
        redesignComponent();
    }

    function addPromoteCompanyElement(companies)
    {
        companies.forEach((company)=>{
            
            var html_ = "" + 
                //"<div class='col-md-4'>"+
                    "<div class='item'>" +
                        "<div class='row'>" + 
                            "<div class='col-md-4' style='position:relative;'>" +
                                "<div style='position:relative; top:50%; transform: translateY(-50%);'>" +
                                    "<img src='" + asset_url + "/" + company.logo_url + "' style='width:100%; border-radius: 5px;'>" +
                                "</div>" +
                            "</div>" +
                            "<div class='col-md-8' style='text-align:center;'>" +
                                "<h5 style='color:#FFF; font-weight:bold; font-size:16px;'><i class='fas fa-star' style='color:#FF0;'></i> Προβολή VIP :</h5>" +
                                "<p style='word-wrap:break-word; text-align:center; color:#aaa; line-height:2em; height:4em; overflow:hidden;text-overflow: ellipsis; display: -webkit-box;-webkit-line-clamp: 4; -webkit-box-orient: vertical;'>" + company.description + "</p><h3 style='color:#FFF; font-size:10px;'>" + company.name + "" +
                                "<div class='my-button' company-id='"+company.id+"'  style='width:50%; margin:auto; word-wrap:break-word; padding: 5px; background-color:#E3CF8A;  border-radius: 10px; text-align:center; margin-top: 30px; color:black;'> Επίσκεψη</div>" + 
                            "</div>" +
                        "</div>" +
                    "</div>";
                //"</div>";

            $(html_).appendTo('.promote-packages-container');
        });

        if($.fn.owlCarousel)
        { 
            var owl = $('.promote-packages-container');
            owl.owlCarousel({
                margin: 10,
                loop: true,
                autoplay: true,
                autoplayTimeout: 5000,
                smartSpeed: 1000,
                responsiveClass:true,
                responsive: {
                    0: {
                        items: 1
                    },
                    500: {
                        items: 2
                    },
                    1000: {
                        items: 3
                    }
                }
            });
            $(".promote-packages-container .owl-item.active").removeClass("no-border")
                                                            .last().addClass("no-border");  
                                                            
            owl.on('changed.owl.carousel', function(event){

                $(".promote-packages-container .owl-item").removeClass("no-border");                    
                var items = $(".promote-packages-container .owl-item");
                var count = items.length;
                $(items[(event.item.index + event.page.size - 1) % count]).addClass('no-border');
                console.log("changed owl carousel");                    
            });
            
            owl.on('mouseleave',function(e){
                owl.trigger('play.owl.autoplay');
            });
            
            owl.on('mouseover',function(e){
                owl.trigger('stop.owl.autoplay');
            });
        }
        redesignComponent();
    }
    
    fetchCompanies({search:""});
    fetchPromoteCompanies();

    // ******************************
    // 2.0 responsive 
    // ******************************
    function redesignComponent()
    {
        var width = jQuery(window).width();

        // company section
        if(width > 1000 && width <= 1500)
        {
            $(".row.company-container").children().attr("class", "col-md-4 company-item item");
        }
        else if(width >= 768 && width <= 1000)
        {
            $(".row.company-container").children().attr("class", "col-md-6 company-item item");
        }

        // side bar section
        if(width < 950)
        {
            $("div.side-company-container > div.sidebar-container").css('display', 'none');
            $("div.side-company-container > div.company-panel-container")
                                                                    .removeClass('col-md-9')
                                                                    .addClass('col-md-12');
        }
        else if(width >= 950)
        {
            $("div.side-company-container > div.sidebar-container").css('display', 'block');
            $("div.side-company-container > div.company-panel-container")
                                                                    .removeClass('col-md-12')
                                                                    .addClass('col-md-9');
        }

        // become a partner
    }
    $(document).ready(function(){
        redesignComponent();
    });
    $(window).resize(function(){
        redesignComponent();
    });

    $('.dropdown-toggle').dropdown();
}(jQuery));