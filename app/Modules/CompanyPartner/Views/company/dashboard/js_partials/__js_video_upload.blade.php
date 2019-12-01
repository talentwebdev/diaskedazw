<script>
(function($){
    var videourl = null;
    var imgurl = null;
    var videoid = null;
    var videotype = 0;

    // drag and drop upload component. video upload
    + function($) {
        'use strict';
        
        // UPLOAD CLASS DEFINITION
        // ======================
    
        var dropZone = document.getElementById('drop-zone');
        var videofile;
        
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
                url: "{{ route('uploadvideo.file') }}",
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
        $.post( "{{ route('addvideo') }}", {
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

                    location.href = "{{ route('company.dashboard.upload') }}";
                })
                .fail( function(err){
                    console.log( 'addvideo failed', err );
                });
    } );
}(jQuery));
</script>