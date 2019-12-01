(function($){
    'use strict';

    var products_array = {};
    
    function dealWithFavoriteProduct()
    {
        var fetchFavoriteProducts = function(){
            $.get("favoriteproducts")
                .done(data => {
                    addProductElement(data);
                })
                .fail(err => {});
        };

        var addProductElement = function(products){
            products.forEach(product => {
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
        };

        var redesignComponent = function(){
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
        }

        $(document).ready(function(){
            redesignComponent();
        });
        $(window).resize(function(){
            redesignComponent();
        });

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
        });

        fetchFavoriteProducts();
    }

    dealWithFavoriteProduct();
}(jQuery));