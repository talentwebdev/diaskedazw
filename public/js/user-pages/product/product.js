(function($){
    'use strict';

    // ************************************************
    // 1. add Event listener
    // ************************************************
    function fetchProducts(param){
        $(".product-container").children().remove();
        $("<div class='lds-roller' style='display:block;'><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>")
            .appendTo(".product-container");
        $.get('fetchproducts', param)
            .done(function(data){
                $(".product-container .lds-roller").remove();
                if(data.products != null && data.products != undefined)
                    addProductElement(data.products);
                if(data.promotes != null && data.promotes != undefined)
                {
                    addPromoteElement(data.promotes);
                    addRandomProductElement(data.products);
                }
            })
            .fail(function(err){
            });
    }
    $(".product-container").on('getdata', (e, param) => {
        fetchProducts(param);
    });
    $(".product-container").on('search', (e, param)=>{
        fetchProducts(param);
    });
    // ************************************************
    // 3. fetch compnay data from database.
    // ************************************************

    function addRandomProductElement(products)
    {
        for(var i = 0 ; i < Math.min(products.length, 10) ; i++)
        {
            var product = products[parseInt(Math.random() * products.length)];
            var html = "" + 
                    "<li class='list-group-item' style='display:flex; flex-direction: row;'>" +
                        "<div style='width: 40%; padding: 10px;'><img src='" + asset_url + "/" + product.product_img + "'  width='100%' /></div>" +
                        "<div style='padding: 10px;'>" +
                            "<div class='announce-title'>" + 
                                "<span style='color:#41272D;'>" + product.product_name + " - </span>" +  
                                "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='width:9px; height:auto;'> " + 
                                "<span style='color:#22B670;'>" + product.product_price + "</span>" + 
                            "</div>" + 
                            "<div>" + 
                                "<span style='color:#EE204A;'>" + product.user.name + "&nbsp; - &nbsp;</span>" + 
                                "<i product-id='" + product.id + "' class='fas fa-star " + (product.isLike ? "active" : "") + "'></i>&nbsp;" +
                                "<span class='count'>" + product.likeCnt + "</span>" +
                            "</div>" +
                            "<div>" + 
                                "<span style='color:#02030A;'>" + (product.product_description.length < 60 ? product.product_description : (product.product_description.substr(0, 60) + "...")) + "</span>" + 
                            "</div>" + 
                            "<div>" + 
                                "<button class='btn btn-primary product-content' style='border-color:#DB831F; background-color:#DB831F !important; float:right; padding: 2px; padding-left: 10px; padding-right:10px; font-size:12px;' user-id='"+product.user_id+"'> Visit </button>" + 
                            "</div>" +
                        "</div>" + 
                    "</li>";
            $(html).appendTo("#announce-list");
        }
    }

    function addPromoteElement(promotes)
    {
        promotes.forEach(promote => {
            var html_ = "" + 
            //"<div class='col-md-4'>"+
                "<div class='item'>" +
                    "<div class='row'>" + 
                        "<div class='col-md-4' style='position:relative;'>" +
                            "<div style='position:relative; top:50%; transform: translateY(-50%);'>" +
                                "<img class='product-content' user-id='"+promote.user_id+"' src='" + asset_url + "/" + promote.product_img + "' style='width:100%;'>" +
                            "</div>" +
                        "</div>" +
                        "<div class='col-md-8' style='text-align:center;'>" +
                            "<div style='color:#FFF; font-weight:bold; font-size:16px;'> &nbsp;" +
                                "<i product-id='" + promote.id + "' class='fas fa-star " + (promote.isLike ? "active" : "") + "'></i> &nbsp;" +
                                "<span class='count'>" + promote.likeCnt + "</span> &nbsp;" + 
                                "<span style='color:#F6FAFF;'>" + promote.product_name + " - &nbsp;</span>" +  
                                "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='display:inline-block; width:9px; height:auto;'> " + 
                                "<span style='color:#22B670;'>" + promote.product_price + "</span>" + 
                            " </div>" +
                            "<div>" + 
                                "<span style='color:#EE204A;'>" + promote.user.name + "</span>" + 
                            "</div>" +
                            "<div>" + 
                                "<span style='color:#FFF;'>" + promote.product_description.substr(0, 100) + "</span>" + 
                            "</div>" + 
                            "<div>" + 
                                "<button class='btn btn-primary product-content' style='border-color:#DB831F; background-color:#DB831F !important; float:right; padding: 2px; padding-left: 10px; padding-right:10px; font-size:12px;' user-id='"+promote.user_id+"'> Visit </button>" + 
                            "</div>" +
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
        }

        redesignComponent();
    }

    function addProductElement(products)
    {
        $(".product-container").children().remove();
        products.forEach((product)=>{
            /*
            var html = "" + 
                "<div class='col-md-3 product-item'>" +
                    "<img src='" + asset_url + "/" + product.logo_url + "' >" + 
                    "<button><a href='" + product.link_url+"'>" + product.name + "</a></button>" +
                "</div>";
                */
            var html = "" + 
                "<div class='col-md-3 product-item item' style='text-align:center;'>" +
                    "<div style='padding:0px; position:relative;'>" + 
                        "<div >" + 
                            "<img class='product-content' user-id='"+product.user_id+"' src='"+asset_url+"/"+product.product_img+"' style='box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border: 6px solid #FFF;' >" +                         
                        "</div>" + 
                    "</div>" +
                    "<div style='color:#FFF; font-weight:bold; font-size:16px;'>" + 
                        "<span style='color:#41272D;'>" + product.product_name + " </span><br />" +  
                        "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='display:inline-block; height:auto; width:9px;'> " + 
                        "<span style='color:#22B670;'>" + product.product_price + "</span>" + 
                    " </div>" +
                    "<div>" + 
                        "<span style='color:#EE204A;'>" + product.user.name + "&nbsp; - &nbsp;</span>" +                         
                        "<i product-id='" + product.id + "' class='fas fa-star " + (product.isLike ? "active" : "") + "'></i> &nbsp;" +
                        "<span class='count'>" + product.likeCnt + "</span>" +
                    "</div>" +
                    "<div>" + 
                        "<button class='btn btn-primary product-content' style='border-color:#DB831F; background-color:#DB831F !important; float:right; padding: 2px; padding-left: 10px; padding-right:10px; font-size:12px;' user-id='"+product.user_id+"'> Visit </button>" + 
                    "</div>" +
                "</div>";
                
            $(html).appendTo(".product-container");

            
        });
        redesignComponent();
    }
        
    var user_id = $("#user_id").val();
    fetchProducts({search:"", category: "-1", user_id:user_id });

    // ******************************
    // 2.0 responsive 
    // ******************************
    function redesignComponent()
    {
        var width = jQuery(window).width();

        // product section
        if(width > 1000 && width <= 1500)
        {
            $(".row.product-container").children().attr("class", "col-md-4 product-item item");
        }
        else if(width >= 768 && width <= 1000)
        {
            $(".row.product-container").children().attr("class", "col-md-6 product-item item");
        }

        // side bar section
        if(width < 950)
        {
            $("div.side-product-container > div.sidebar-container").css('display', 'none');
            $("div.side-product-container > div.product-panel-container")
                                                                    .removeClass('col-md-9')
                                                                    .addClass('col-md-12');
        }
        else if(width >= 950)
        {
            $("div.side-product-container > div.sidebar-container").css('display', 'block');
            $("div.side-product-container > div.product-panel-container")
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

    $("body").click(e => {
        if($(e.target).hasClass("product-content"))
        {
            var user_id = $(e.target).attr("user-id");

            $.post("productprofile", {_token: csrf_token, user_id: user_id})
                .done(data => {
                    location.href = "shopprofile";
                })
                .fail(err => {});
        }
        else if($(e.target).hasClass("fa-star"))
        {
            $.post("likeproduct", {_token: csrf_token, product_id: $(e.target).attr("product-id")})
                .done(data => {
                    if(data == "failed") return;

                    $("i.fa-star[product-id='"+$(e.target).attr("product-id")+"']").parent().find(".count").text(data);
                    $("i.fa-star[product-id='"+$(e.target).attr("product-id")+"']").addClass("active");
                })
                .fail(err => {});
        }
    });
}(jQuery));