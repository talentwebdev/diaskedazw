(function($){
'use strict';

var selectedProduct = {};
$(".product-detail").on("productdetail", function(e, product){
    var product_images = [];

    selectedProduct = {};
    selectedProduct.product_id = product.id;

    $(".main-product-image > img").attr("src", product.product_img);
    product_images.push(product.product_img);

    $(".product-title").text(product.product_name);
    $(".product-price *").html("<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='display:inline-block; width:9px; height:auto;'> " + product.product_price);
    
    product.colors = JSON.parse(product.colors);
    $(".product-color-images").children().remove();
    product.colors.forEach(color => {
        var html = "" +     
                    "<div style='padding:3px;'>" + 
                        "<img name='"+color.name+"' class='sub-product-colorimage' src='" + asset_url + "/" + color.colorImg + "' />" + 
                    "</div>";
        $(html).appendTo(".product-color-images");

        product_images.push(color.colorImg);
    });

    product.size = JSON.parse(product.size);
    $(".product-size-container").children().remove();
    product.size.forEach(size => {
        var html = "" + 
                    "<div class='product-size'>" + size + "</div>";
        $(html).appendTo(".product-size-container");
    });

    $(".product-description").text(product.product_description);

    $(".sub-product-image-container").children().remove();
    product_images.forEach(image => {
        var html = "" +     
                    "<div style='padding:3px;'>" + 
                        "<img class='sub-product-image' src='" + asset_url + "/" + image + "' />" + 
                    "</div>";
        $(html).appendTo(".sub-product-image-container");
    });

    product.overview = JSON.parse(product.overview);
    product.overview.forEach(overview => {
        var html ="" + 
                    "<img src='" + asset_url + "/" + overview + "' width='100%' />";
        $(html).appendTo(".product-overviews");
    });
});

$("body").mousemove(e => {
    if($(e.target).hasClass("sub-product-image"))
    {
        $(".main-product-image > img").attr("src", $(e.target).attr("src"));
        $(".selected-image").removeClass("selected-image");
        $(e.target).addClass("selected-image");
    }
});
$("body").click( e=> {
    if($(e.target).hasClass("sub-product-colorimage"))
    {
        selectedProduct.color = $(e.target).attr("name");
        $(".main-product-image > img").attr("src", $(e.target).attr("src"));
        $(".selected-image").removeClass("selected-image");
        $(e.target).addClass("selected-image");
        $(".selected").removeClass("selected");
        $(e.target).addClass("selected");
    }
    if($(e.target).hasClass("product-size"))
    {
        selectedProduct.size = $(e.target).text();
        $(".selected-size").removeClass("selected-size");
        $(e.target).addClass("selected-size");
    }
});

$("#backBtn").click(e => {
    $(".product-detail").fadeOut(function(){
        $(".product-container").fadeIn();
    });
});

$("#buyBtn").click(e => {
    /*
    if(selectedProduct.color == undefined || selectedProduct.size == undefined)
        return;
        */

    $("#modalactivealert").modal();

    if($("#modalactivealert").length == 0)
    {
        selectedProduct._token = csrf_token;
        $.post("buyproduct", selectedProduct)
            .done(data => {
                alert("success");
                $("#backBtn").click();
            })
            .fail(err => {});
    }
    
});

$('.tile')
// tile mouse actions
.on('mouseover', function(){
    $(this).children('.photo').css({'transform': 'scale('+ $(this).attr('data-scale') +')'});
})
.on('mouseout', function(){
    $(this).children('.photo').css({'transform': 'scale(1)'});
})
.on('mousemove', function(e){
    $(this).children('.photo').css({'transform-origin': ((e.pageX - $(this).offset().left) / $(this).width()) * 100 + '% ' + ((e.pageY - $(this).offset().top) / $(this).height()) * 100 +'%'});
})
}(jQuery));