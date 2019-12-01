(function($){
    /**
     * 1. Video Uploade Panel
     */
    (function($){
        var videourl = null;
        var imgurl = null;
        var videoid = null;
        var videotype = 1;
    
        // drag and drop upload component. video upload
        + function($) {
            'use strict';
          
            // UPLOAD CLASS DEFINITION
            // ======================
        
            var dropZone = document.getElementById('drop-zone');
            var videofile;
            

            $("body").click(e => {
                if($(e.target).parents().hasClass("promote-video"))
                {
                    videotype = 1;
                }
                else if($(e.target).parents().hasClass("content-video"))
                {
                    videotype = 0;
                }
            });
        
            $( "#js-upload-form" ).submit( function(e){
    
                var formData = new FormData(); // Currently empty
                formData.append('video', videofile[0]);
                formData.append('videourl', videourl);
                formData.append("_token", csrf_token);
    
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
                        $( "#preview-video-container" ).css( "display", "block" );
    
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
        
        }(jQuery);
    
        
        $( "#video-image-container" ).imagePreview();

        // video image upload
        $( "#video-image-container" ).find( ".image-preview-clear" ).click( function(){
            $( "#video-image-container" ).find("#progressDivId").css("display", "none");
            var percentValue = '0%';
        
            $( "#video-image-container" ).find('#progressBar').width(percentValue);
        });
        
        $( document ).ready( function(){
            $('#video-image-container').submit(function (e) {	
                //e.preventDefault();
                
                $(this).ajaxSubmit({
                    data: {imgurl: imgurl, type: "video"},
                    beforeSubmit: function () {
                        $( "#video-image-container" ).find("#progressDivId").css("display", "block");
                        var percentValue = '0%';
        
                        $( "#video-image-container" ).find('#progressBar').width(percentValue);
                    },
                    uploadProgress: function (event, position, total, percentComplete) {
                        console.log(percentComplete);
                        var percentValue = percentComplete + '%';
                        
                        $( "#video-image-container" ).find("#progressBar").animate({
                            width: '' + percentValue + ''
                        }, {
                            easing: "linear"
                        });
                        
                    },
                    error: function (response, status, e) {
                        alert('Oops something went.');
                    },
                    
                    success: function( data ){
                        imgurl = data;
                        console.log( data );
                    }
                });
                
                return false;
            });
        });
        
        
    
        $( "#video-image-container input:file" ).change( function(){
            $( "#video-image-container" ).submit();
        });
    
        $( "#btn-save-video" ).click( function() {
            if( videourl == null || imgurl == null )
            {
                alert( "select image or video. ");
                return;
            }
            $.post( "addvideo", {
                        _token: csrf_token,
                        videourl: videourl,
                        imgurl: imgurl,
                        promote: videotype,
                        title: $( "#video-title" ).val(),
                        description: $( "#video-description" ).val(),
                        videoid: videoid
                    })
                    .done( function(data){
                        console.log( 'addvideo success', data );
                        videoid = data;
    
                        location.href = "partner.upload";
                    })
                    .fail( function(err){
                        console.log( 'addvideo failed', err );
                    });
        } );
    }(jQuery));

    
    (function($){
    /**
     * 2. Article Upload Panel.
     */
    
        var imgurl = null;
        var articleid = null;

        $( "#article-image-container" ).imagePreview();

        $( document ).ready( function(){
            $('#article-image-container').submit(function (e) {	
                //e.preventDefault();
                
                $(this).ajaxSubmit({
                    data: {imgurl: imgurl, type:"article"},
                    beforeSubmit: function () {
                        $('#article-image-container').find("#progressDivId").css("display", "block");
                        var percentValue = '0%';
        
                        $( "#article-image-container" ).find('#progressBar').width(percentValue);
                    },
                    uploadProgress: function (event, position, total, percentComplete) {
                        console.log(percentComplete);
                        var percentValue = percentComplete + '%';
                        
                        $( "#article-image-container" ).find("#progressBar").animate({
                            width: '' + percentValue + ''
                        }, {
                            easing: "linear"
                        });
                        
                    },
                    error: function (response, status, e) {
                        alert('Oops something went.');
                    },
                    
                    success: function( data ){
                        imgurl = data;
                        console.log( data );
                    }
                });
                
                return false;
            });

            $( "#article-image-container input:file" ).change( function(e){
                $( "#article-image-container" ).submit();
            });

            $( "#btn-save-article" ).click( function(){
                if(imgurl == null)
                {
                    alert( "please select image" );
                    return;
                }
                if($( "#article-title" ).val() == "")
                {
                    return;
                }

                $.post( 'addarticle', {
                        _token: csrf_token,
                        articleid: articleid,
                        imgurl: imgurl,
                        title: $( "#article-title" ).val(),
                        content: $( ".Editor-editor").html(),
                        summary: $(".Editor-editor").text().substr(0, 80)

                    })
                    .done( function(data){
                        console.log( "addarticle success", data );
                        articleid = data;
                        location.href = "partner.upload";
                    })
                    .fail( function(err){
                        console.log( 'addarticle failed', err);
                    });
            });
        });
    }(jQuery));
    

    /**
     * 3. Image Upload Panel
     */
    (function($){
        var imgurl = null;
        var galleryid = null;
        var gallerytype = 1;

        $("body").click(e => {
            if($(e.target).parents().hasClass("promote-gallery"))
            {
                gallerytype = 1;   
            }
            else if($(e.target).parents().hasClass("content-gallery"))
            {
                gallerytype = 0;
            }
        });

        $( document ).ready( function(){
            $('#gallery-image-container').submit(function (e) {	
                //e.preventDefault();
                
                $(this).ajaxSubmit({
                    data: {imgurl: imgurl, type:"gallery"},
                    beforeSubmit: function () {
                        $('#gallery-image-container').find("#progressDivId").css("display", "block");
                        var percentValue = '0%';
        
                        $( "#gallery-image-container" ).find('#progressBar').width(percentValue);
                    },
                    uploadProgress: function (event, position, total, percentComplete) {
                        console.log(percentComplete);
                        var percentValue = percentComplete + '%';
                        
                        $( "#gallery-image-container" ).find("#progressBar").animate({
                            width: '' + percentValue + ''
                        }, {
                            easing: "linear"
                        });
                        
                    },
                    error: function (response, status, e) {
                        alert('Oops something went.');
                    },
                    
                    success: function( data ){
                        imgurl = data;
                        console.log( data );
                    }
                });
                
                return false;
            });

            $( "#gallery-image-container input:file" ).change( function(e){
                $( "#gallery-image-container" ).submit();
            });

            $( "#btn-save-gallery" ).click( function(){
                if(imgurl == null)
                {
                    alert( "please select image" );
                    return;
                }
                if($( "#image-title" ).val() == "")
                {
                    return;
                }

                $.post( 'addgallery', {
                        _token: csrf_token,
                        imgurl: imgurl,
                        title: $( "#image-title" ).val(),
                        description: $( "#image-description").val(),
                        galleryid: galleryid,
                        promote: gallerytype
                    })
                    .done( function(data){
                        console.log( "addarticle success", data );
                        galleryid = data;

                        location.href = "partner.upload";
                    })
                    .fail( function(err){
                        console.log( 'addarticle failed', err);
                    });
            });
        });

        $( "#gallery-image-container" ).imagePreview();

    }(jQuery));
    
}(jQuery));