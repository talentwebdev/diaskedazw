(function($){
    'use strict';

    var dropZone = document.getElementById('drop-zone');
    var videofile;
    var type = 3;
    var videourl = "";
                
    function dealWithVideoUpload()
    {
        // video type

        $( "#js-upload-form" ).submit( function(e){

            var formData = new FormData(); // Currently empty
            formData.append('video', videofile[0]);
            formData.append('videourl', videourl);
            formData.append("_token", csrf_token);
            formData.append("type", type);

            console.log(formData.get('video'));
            $("#video-progress").css( "width", "0%" );
        //            $(this).ajaxSubmit({
            $.ajax({
                xhr: function() {
                    var xhrobj = $.ajaxSettings.xhr();
                    if (xhrobj.upload) {
                            xhrobj.upload.addEventListener('progress', function(event) {
                                var percent = 0;
                                var position = event.loaded || event.position;
                                var total = event.total;
                                if (event.lengthComputable) {
                                    percent = Math.ceil(position / total * 100);
                                }
                                console.log('progress', percent);
                                $("#video-progress").animate({
                                    width: '' + percent + '%'
                                }, {
                                    easing: "linear"
                                });
                            }, false);
                        }
                    return xhrobj;
                },
                url: "uploadvideo.file",
                method: 'post',
                data: formData,//{"_token": csrf_token, video: videofile, videourl: videourl},
                contentType: false,
                processData: false,
                dataType: 'json',
                cache: false,
                complete: function( data ){
                    videourl = data.responseText;
                    console.log( videourl );                  
                    if(videourl == "error")
                    {
                        $("#modalactivealert").modal();
                        return;
                    }                        
                    //$( "#preview-video-container" ).css( "display", "block" );

                    var video = document.getElementById('preview-video');
                    video.src = asset_url + "/" + videourl;
                    video.load();
                }
            });
            return false;
        });

        var startUpload = function(files) {       
            console.log( files );
            videofile = files;

            $("#js-upload-form").submit();
        }

        $( "#video" ).change( function(){
            var uploadFiles = document.getElementById('video').files;

            startUpload(uploadFiles)
        })

        if(dropZone != null)
        {
            dropZone.ondrop = function(e) {
                e.preventDefault();
                this.className = 'upload-drop-zone';

                startUpload(e.dataTransfer.files)
            }

            dropZone.ondragover = function() {
                this.className = 'upload-drop-zone drop';
                return false;
            }

            dropZone.ondragleave = function() {
                this.className = 'upload-drop-zone';
                return false;
            }
        }
        
    }
    
    function dealWithProducts()
    {
        var addProductElement = function(products){
            $("#product-list").children().remove();
            products.forEach(product => {
                var html = "" + 
                "<div class='col-md-3 product-container'>" + 
                    "<div class='product-image'>" + 
                        "<img src='" + asset_url + "/" + product.product_img + "' width='100%' />" + 
                    "</div>" +
                    "<div class='product-title'>" + 
                        product.product_name + " - " + "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='width:9px;'> " + 
                    "</div>" + 
                    "<div class='row'>" + 
                        "<div class='col-md-6'>  " + 
                            "<button class='btn btn-primary edit-product form-control' product-id='" + product.id + "'> Edit </button>" + 
                        "</div>" +
                        "<div class='col-md-6'>" +
                            "<button class='btn btn-danger delete-product form-control' product-id='" + product.id + "'> Delete </button>" + 
                        "</div>" + 
                    "</div>" +
                "</div>";

                $(html).appendTo("#product-list");
            });
        }

        $("#addProductBtn").click(e => {
            location.href = "addproduct";
        });
        
        $("body").click(e => {
            if($(e.target).hasClass('edit-product')){
                $("#productID").val($(e.target).attr("product-id"));
                $("#productEditPageForm").submit();
            }
            else if($(e.target).hasClass("delete-product"))
            {
                $.post("deleteproduct", {_token: csrf_token, product_id: $(e.target).attr("product-id")})
                    .done(data => {
                        if(data == "success")
                            $(e.target).parents(".product-container").remove();
                    })
                    .fail(err => {});
            }
        });

        $("#search").on('keydown', (e)=>{
            if(e.which == 13)
            {
                $.get("fetchuserproducts", {user_id: user.id, search: $("#search").val()})
                    .done(data => {
                        addProductElement(data.products);
                    })
                    .fail(err => {});
            }
        });

        $.get("fetchuserproducts", {user_id: user.id})
            .done(data => {
                addProductElement(data.products);
            })
            .fail(err => {});
    }

    
    dealWithVideoUpload();
    dealWithProducts();
}(jQuery));