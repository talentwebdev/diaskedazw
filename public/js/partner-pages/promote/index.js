(function($){

    var videourl = video_url.length > 0 ? video_url : null;
    var imgurl = null;
    var videoid = null;


    // drag and drop upload component. video upload
    + function($) {
        'use strict';
      
        // UPLOAD CLASS DEFINITION
        // ======================
    
        var dropZone = document.getElementById('drop-zone');
        var videofile;
        var type = 0;
    
        // video type
        $(".promote-visitor").click(function(){
            type = 0;
        });
        $(".promote-member").click(e => {
            type = 1;
        });
        $(".profile").click(function(){
            type = 2;
        });
        
    
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

    $("#btn-save-announce").click(function(){
        $.post("addannounce", {_token: csrf_token, title: $("#announce-title").val(), content: $("#announce-content").val()})
            .done(function(data){
                console.log("partner.addannounce successed", data);
                $("#announce-title").val("");
                $("#announce-content").val("");
            })
            .fail(function(err){
                console.log("partner.addannounce failed", err);
            });
    });
}(jQuery));