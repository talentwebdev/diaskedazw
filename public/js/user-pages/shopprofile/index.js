(function($){
    'use strict';


    function addPromoteProductsElement(products){
        products.forEach(product => {
            var html = "" + 
                    "<li class='list-group-item' style='display:flex; flex-direction: row;'>" +
                        "<div style='width: 30%; padding: 10px;'><img src='" + asset_url + "/" + product.product_img + "'  width='100%' /></div>" +
                        "<div style='padding: 10px;'>" +
                            "<div class='announce-title'>" + 
                                "<span style='color:#41272D;'>" + product.product_name + " - </span>" +  
                                "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='width:9px; height: auto;'> " + 
                                "<span style='color:#22B670;'>" + product.product_price + "</span>" + 
                            "</div>" + 
                            "<div>" + 
                                "<i product-id='" + product.id + "' class='fas fa-star " + (product.isLike ? "active" : "") + "'></i>&nbsp;" +
                                "<span class='count'>" + product.likeCnt + "</span>" +
                            "</div>" +
                            "<div>" + 
                                "<span style='color:#02030A;'>" + (product.product_description.length < 60 ? product.product_description : (product.product_description.substr(0, 60) + "...")) + "</span>" + 
                            "</div>" + 
                            "<div>" + 
                                "<button class='btn btn-primary product-content' style='border-color:#DB831F; background-color:#DB831F !important; float:right; padding: 2px; padding-left: 10px; padding-right:10px; font-size:12px;' product-id='"+product.id+"' user-id='"+product.user_id+"'> Επιλογή </button>" + 
                            "</div>" +
                        "</div>" + 
                    "</li>";
            $(html).appendTo("#announce-list");
        });
    }

    $.get("fetchuserpromoteproducts", {user_id: partner.id})
        .done(data => {
            addPromoteProductsElement(data);
        })
        .fail(err => {});

    $("#product-top-menu").addClass("current-item");
}(jQuery));