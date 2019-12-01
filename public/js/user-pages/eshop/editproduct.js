(function($){
    'use strict';

    var productColor = {};

    function dealWithProductCategory()
    {
        var addCategoryElement = function(category)
        {
            var html_ ='<li class="area" id="'+category.id+'"><a href="#">' + category.name + '</a></li>'
            $(html_).appendTo("#productcategory-dropdown")
                    .click(e => {
                        productData.category_id = category.id;
                    });
        }
    
        $.get("fetchproductcategory")
            .done((data) => {
                data.forEach(item => {
                    addCategoryElement(item);                        
                    if(item.id == productData.category_id)
                    {
                        $("#dd > span").text(item.name);
                    }
                }); 

                new DropDown($("#dd"));                   
            })
            .fail(err => {});
    }

    function dealWithProductImage()
    {
        $("#imgProduct").change(e => {

            $("#productImgUrl").val(productData.product_img);

            $("#productImgUploadForm").ajaxSubmit({
                success: function(data){
                    productData.product_img = data;

                    $("#productImgPreview").attr("src", asset_url + "/" + data);
                }
            });
        });
    }

    function dealWithColorImage()
    {
        $("#addColorBtn").click(e => {
            productColor.name = $("#productColorName").val();

            if(productColor.name == undefined || productColor.name.length == 0 || productColor.colorImg == undefined) return;

            productData.colors.push(productColor);

            var html = "" +
                        "<div class='row color-container'>" + 
                            "<div class='col-md-4'>" + 
                                "<input type='text'  class='form-control' value='"+productColor.name+"' readonly />" +
                            "</div>" + 
                            "<div class='col-md-4'>" + 
                                "<img src='"+ asset_url + "/" + productColor.colorImg + "' width='80' style='display:block; margin:auto;' />" + 
                            "</div>" +
                            "<div class='col-md-4'>" + 
                                "<button class='btn btn-danger removeColorBtn' image='"+productColor.colorImg+"'>Delete</button>" +
                            "</div>" +
                        "</div>";                
            $(html).appendTo(".color-list-container");

            productColor = new Object();

            $("#productColorName").val("");
            $("#productColorImgUploadForm").removeClass("selectedImage");
        });

        $("#imgColor").change(e => {
            $("#productColorImgUploadForm").ajaxSubmit({
                success: function(data){
                    productColor.colorImg = data;

                    $("#productColorImgUploadForm .imgPreview").attr("src", asset_url + "/" + data);
                    $("#productColorImgUploadForm").addClass("selectedImage");
                }
            });
        });

        $("body").click(e => {
            if($(e.target).hasClass("removeColorBtn")){
                var imgurl = $(e.target).attr("image");

                for(var i = 0 ; i < productData.colors.length ; i++)
                    if(productData.colors[i].colorImg == imgurl)
                    {
                        productData.colors.splice(i, 1);
                        break;
                    }
                $(e.target).parents(".color-container").remove();

                $.post("deleteimage", {_token: csrf_token, imgurl: imgurl})
                    .done(data => {})
                    .fail(err => {});
            }
        });
    }

    function dealWithOverview(){
        $("#imgOverview").change(e => {
            $("#productOverviewImgUploadForm").ajaxSubmit({
                success: function(data){

                    data.forEach(item => {
                        var html = "" +
                                "<div class='col-md-3 overview-container'>" + 
                                    "<img src='" + asset_url + "/" + item + "' width='100%' />" +
                                    '<i class="fas fa-times" class="close" image="'+item+'" data-dismiss="modal"></i>' +
                                "</div>";

                        $(html).appendTo(".overview-image-list");
                        productData.overview.push(item);
                    });
                }
            });
        });

        $("body").click(e => {
            if($(e.target).parents().hasClass("overview-container") && $(e.target).hasClass("fa-times"))
            {
                var imgurl = $(e.target).attr("image");

                for(var i = 0 ; i < productData.overview.length ; i++)
                    if(productData.overview[i] == imgurl)
                    {
                        productData.overview.splice(i, 1);
                        break;
                    }
                $(e.target).parents(".overview-container").remove();

                $.post("deleteimage", {_token: csrf_token, imgurl: $(e.target).attr("image")})
                    .done(data => {})
                    .fail(err => {});                
            }
        });
    }

    function dealWithSize()
    {
        $("#addSizeBtn").click(e => {
            var size = $("#productSize").val();

            if(size == undefined || size.length == 0) return;

            productData.size.push(size);

            var html = "" + 
                        "<div class='size-container'>" + 
                            "<div>" + size + "</div>" + 
                            '<i class="fas fa-times" class="close" size="'+size+'" data-dismiss="modal"></i>' +
                        "</div>";
            $(html).appendTo(".size-list-container");

            $("#productSize").val("");
        });

        $("body").click(e => {
            if($(e.target).hasClass("fa-times") && $(e.target).parents().hasClass("size-container"))
            {
                var size = $(e.target).attr("size");

                for(var i = 0 ; i < productData.size.length ; i++)
                    if(productData.size[i] == size)
                    {
                        productData.size.splice(i, 1);
                        break;
                    }
                $(e.target).parents(".size-container").remove();
            }
        });
    }

    function getProductData()
    {
        if($("#productTitle").val().length == 0) return false;
        productData.product_name = $("#productTitle").val();

        if($("#productPrice").val().length == 0) return false;
        productData.product_price = $("#productPrice").val();

        if($("#productDescription").val().length == 0) return false;
        productData.product_description = $("#productDescription").val();
    }

    $("#editProductBtn").click(e => {
        getProductData();

        productData.size = JSON.stringify(productData.size);
        productData.colors = JSON.stringify(productData.colors);
        productData.overview = JSON.stringify(productData.overview);
        productData._token = csrf_token;
        console.log(productData);
        $.post("editproduct", productData)
            .done(data => {
                alert("success");
                location.href = "userproducts";
                //console.log(data);
            })
            .fail(err => {});

        
    });

    function initProductData(){
        productData.colors = productData.colors.replace(/&quot;/g, '"');
        productData.size = productData.size.replace(/&quot;/g, '"');
        productData.overview = productData.overview.replace(/&quot;/g, '"');

        productData.colors = JSON.parse(productData.colors);
        productData.size = JSON.parse(productData.size);
        productData.overview = JSON.parse(productData.overview);

        productData.colors.forEach( color => {
            var html = "" +
                        "<div class='row color-container'>" + 
                            "<div class='col-md-4'>" + 
                                "<input type='text'  class='form-control' value='"+color.name+"' readonly />" +
                            "</div>" + 
                            "<div class='col-md-4'>" + 
                                "<img src='"+ asset_url + "/" + color.colorImg + "' width='80' style='display:block; margin:auto;' />" + 
                            "</div>" +
                            "<div class='col-md-4'>" + 
                                "<button class='btn btn-danger removeColorBtn' image='"+color.colorImg+"'>Delete</button>" +
                            "</div>" +
                        "</div>";                
            $(html).appendTo(".color-list-container");
        });

        productData.size.forEach(size => {
            var html = "" + 
                    "<div class='size-container'>" + 
                        "<div>" + size + "</div>" + 
                        '<i class="fas fa-times" class="close" size="'+size+'" data-dismiss="modal"></i>' +
                    "</div>";
            $(html).appendTo(".size-list-container");
        });

        productData.overview.forEach(overview => {
            var html = "" +
                    "<div class='col-md-3 overview-container'>" + 
                        "<img src='" + asset_url + "/" + overview + "' width='100%' />" +
                        '<i class="fas fa-times" class="close" image="'+overview+'" data-dismiss="modal"></i>' +
                    "</div>";

            $(html).appendTo(".overview-image-list");
        });

        $("#productImgPreview").attr("src", asset_url + "/" + productData.product_img);
    }

    initProductData();
    dealWithSize();
    dealWithProductCategory();
    dealWithProductImage();
    dealWithColorImage();
    dealWithOverview();    
}(jQuery));