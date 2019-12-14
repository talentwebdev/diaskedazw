(function($){
    'use strict';

    // *********************************
    // :: 1.0 Other Sites Active Code
    // *********************************
    var companies = null, current_item = 0, count = 20, init = 0;
    var owl = $('#companies-container');

    if($.fn.owlCarousel)
    {         
        owl.owlCarousel({
            margin: 10,
            nav: true,
            navText:["<i class='fas fa-angle-left'></i>", "<i class='fas fa-angle-right'></i>"],
            margin: 30,
            loop: false,
            autoplay: true,
            autoplayTimeout: 2000,
            smartSpeed: 2500,
            responsiveClass:true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                900: {
                    items: 3
                },
                1500: {
                    items: 6
                }
            }
        });

        owl.on('changed.owl.carousel', function(event) {
            if(event.item.count > event.page.size && event.item.count == event.item.index + event.page.size)
                addCompanyElement();
        });
        
    }
    
    function addCompanyElement()
    {
        var index = 0;
        var html = "";
        
        while(index < count)
        {
            index++;
            var company = companies[(current_item + index) % companies.length];
            html += "<div class='item'>" + 
                        "<div style='padding:0px; position:relative;'>" + 
                            "<div class='amazingcarousel-flipout'>" + 
                                "<img src='"+asset_url+"/"+company.logo_url+"' style='height:208px;  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border: 6px solid #FFF;' >" +                         
                            "</div>" +
                            "<div class='amazingcarousel-flip'>" + 
                                "<div style='width:90%; margin:auto; word-wrap:break-word; padding: 10px; background-color:#AAA; border-radius:5px; text-align:center; margin-top:5px;'>" + company.name + "</div>" +
                                (company.discount_cnt != 0 ? (
                                '<div class="amazingcarousel-title" style="color:red;  text-align:center; position:relative; font-size:25px;">' + company.discount_cnt + '%</div>' + 
                                '<div class="amazingcarousel-description" style="text-align:center;">' + company.discount_info + '</div>') : "") +
                            "</div>" + 
                        "</div>" +
//                        "<div class='my-button' style='width:70%; height:30px; margin:auto; word-wrap:break-word; padding: 10px; background-color:#A18B3F; border-radius: 10px; text-align:center; margin-top: 30px;   vertical-align:super; '><a href='" + company.link_url+"'>Επίσκεψη</a></div>" + 
                        "<div class='my-button' company-id='"+company.id+"' style='width:70%; margin:auto; word-wrap:break-word; padding: 5px; background-color:#A18B3F; border-radius: 10px; text-align:center; margin-top: 30px; color: #FFF; font-weight: bold; vertical-align:super; '>Επίσκεψη</div>" + 
                    "</div>";
            
        }
        current_item = (current_item + count) % companies.length;
        owl.trigger('replace.owl.carousel', html)
                      .trigger('refresh.owl.carousel');
        /*
        companies.forEach(function(company){
            if(index >= 20) return;
            index++;
            var html = "" + 
                "<div class='item'>" + 
                    "<div style='padding:0px; position:relative;'>" + 
                        "<div class='amazingcarousel-flipout'>" + 
                            "<img src='"+asset_url+"/"+company.logo_url+"' style='height:208px;  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border: 6px solid #FFF;' >" +                         
                        "</div>" +
                        "<div class='amazingcarousel-flip'>" + 
                            "<div style='width:90%; margin:auto; word-wrap:break-word; padding: 10px; background-color:#AAA; border-radius:5px; text-align:center; margin-top:5px;'>" + company.name + "</div>" +
                            (company.discount_cnt != 0 ? (
                            '<div class="amazingcarousel-title" style="color:red;  text-align:center; position:relative; font-size:25px;">' + company.discount_cnt + '%</div>' + 
                            '<div class="amazingcarousel-description" style="text-align:center;">' + company.discount_info + '</div>') : "") +
                        "</div>" + 
                    "</div>" +
                    "<div style='width:90%; margin:auto; word-wrap:break-word; padding: 10px; background-color:#AAA; border-radius: 10px; text-align:center; margin-top: 30px;'>" + company.name + "</div>" + 
                "</div>";

            $(html).appendTo('#companies-container');
        });*/        
        
    }
    $.get('/fetchcompanies')
        .done((data)=>{
            console.log('fetchcompanies successed', data);
            companies = data;
            addCompanyElement();
        })
        .fail((err) => {
            console.log('fetchcompanies failed', err);
        });
}(jQuery));