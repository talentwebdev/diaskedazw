(function($){
    'use strict';

    // ************************************************
    // 1. add Event listener
    // ************************************************
    var products_array = {};
    function fetchProducts(param){
        $(".product-container").children().remove();
        $("<div class='lds-roller' style='display:block;'><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>")
            .appendTo(".product-container");
            
        param.user_id = partner.id;
        $.get('fetchuserproducts', param)
            .done(function(data){
                $(".product-container .lds-roller").remove();
                if(data.products != null && data.products != undefined)
                    addProductElement(data.products);
                if(data.promotes != null && data.promotes != undefined)
                    addPromoteElement(data.promotes);
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
    function addPromoteElement(promotes)
    {
        promotes.forEach(promote => {
            var html_ = "" + 
            //"<div class='col-md-4'>"+
                "<div class='item'>" +
                    "<div class='row'>" + 
                        "<div class='col-md-4' style='position:relative;'>" +
                            "<div style='position:relative; top:50%; transform: translateY(-50%);'>" +
                                "<img class='product-content' product-id='"+promote.id+"' user-id='"+promote.user_id+"' src='" + asset_url + "/" + promote.product_img + "' style='width:100%;'>" +
                            "</div>" +
                        "</div>" +
                        "<div class='col-md-8' style='text-align:center;'>" +
                            "<div style='color:#FFF; font-weight:bold; font-size:16px;'>&nbsp;" + 
                                "<i product-id='" + promote.id + "' class='fas fa-star " + (promote.isLike ? "active" : "") + "'></i> &nbsp;" +
                                "<span class='count'>" + promote.likeCnt + "</span> &nbsp;" + 
                                "<span style='color:#F6FAFF;'>" + promote.product_name + " - &nbsp;</span>" +  
                                "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='display:inline-block; width:9px; height:auto;'> " + 
                                "<span style='color:#22B670;'>" + promote.product_price + "</span>" + 
                            " </div>" +
                            "<div>" + 
                                "<span style='color:#FFF;'>" + promote.product_description.substr(0, 100) + "</span>" + 
                            "</div>" + 
                            "<div>" + 
                                "<button class='btn btn-primary product-content' style='border-color:#DB831F; background-color:#DB831F !important;float:right; padding: 2px; padding-left: 10px; padding-right:10px; font-size:12px;' product-id='"+promote.id+"' user-id='"+promote.user_id+"'> Επιλογή </button>" + 
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
                            "<img class='product-content' product-id='"+product.id+"' user-id='"+product.user_id+"' src='"+asset_url+"/"+product.product_img+"' style='box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border: 6px solid #FFF;' >" +                         
                        "</div>" + 
                    "</div>" +
                    "<div style='color:#FFF; font-weight:bold; font-size:16px;'>" + 
                        "<span style='color:#41272D;'>" + product.product_name + "</span><br />" +  
                        "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='display:inline-block; height:auto; width:9px;'> " + 
                        "<span style='color:#22B670;'>" + product.product_price + "</span>" + 
                    " </div>" +
                    "<div>" +
                        "<i product-id='" + product.id + "' class='fas fa-star " + (product.isLike ? "active" : "") + "'></i> &nbsp;" +
                        "<span class='count'>" + product.likeCnt + "</span>" +
                    "</div>" +
                    "<div>" + 
                        "<button class='btn btn-primary product-content' style='border-color:#DB831F; background-color:#DB831F !important;float:right; padding: 2px; padding-left: 10px; padding-right:10px; font-size:12px;' product-id='"+product.id+"' user-id='"+product.user_id+"'> Επιλογή </button>" + 
                    "</div>" +
                "</div>";
                
            $(html).appendTo(".product-container");

            products_array[product.id] = product;

            
        });
        redesignComponent();
    }
    
    fetchProducts({search:"", category: "-1"});

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
            $(".product-container").fadeOut(function(){
                $(".product-detail").fadeIn();
            });
            

            var product_id = $(e.target).attr("product-id");
            var product = products_array[product_id];
            console.log("productdetail", product);
            $(".product-detail").trigger("productdetail", product);
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