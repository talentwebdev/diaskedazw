(function($){
    'ues strict';

    var productData = {colors: [], overviews : [], size: []};
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
                }); 

                new DropDown($("#dd"));                   
            })
            .fail(err => {});
    }

    function dealWithProductImage()
    {
        $("#imgProduct").change(e => {
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
                        "<div class='row'>" + 
                            "<div class='col-md-6'>" + 
                                "<input type='text'  class='form-control' value='"+productColor.name+"' readonly />" +
                            "</div>" + 
                            "<div class='col-md-6'>" + 
                                "<img src='"+ asset_url + "/" + productColor.colorImg + "' width='80' style='display:block; margin:auto;' />" + 
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
    }

    function dealWithOverview(){
        $("#imgOverview").change(e => {
            $("#productOverviewImgUploadForm").ajaxSubmit({
                success: function(data){

                    data.forEach(item => {
                        var html = "" +
                                    "<div class='col-md-3'>" + 
                                        "<img src='" + asset_url + "/" + item + "' width='100%' />" +
                                    "</div>";

                        $(html).appendTo(".overview-image-list");
                        productData.overviews.push(item);
                    });
                }
            });
        });
    }

    function dealWithSize()
    {
        $("#addSizeBtn").click(e => {
            var size = $("#productSize").val();

            if(size == undefined || size.length == 0) return;

            productData.size.push(size);

            var html = "" + 
                        "<div class='size-container'>" + size + "</div>";
            $(html).appendTo(".size-list-container");

            $("#productSize").val("");
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

    $("#addProductBtn").click(e => {
        getProductData();

        productData.size = JSON.stringify(productData.size);
        productData.colors = JSON.stringify(productData.colors);
        productData.overview = JSON.stringify(productData.overviews);
        productData._token = csrf_token;
        $.post("addproduct", productData)
            .done(data => {
                alert("success");
                location.href = "userproducts";
            })
            .fail(err => {});

        initProductData();
    });

    function initProductData(){
        productData = new Object;
        productData.colors = [];
        productData.size = [];
        productData.overviews = [];
    }

    dealWithSize();
    dealWithProductCategory();
    dealWithProductImage();
    dealWithColorImage();
    dealWithOverview();    
}(jQuery));