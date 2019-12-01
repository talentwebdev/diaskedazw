<script>
// drag and drop upload component. video upload
(function($) {
    'use strict';
    
    // UPLOAD CLASS DEFINITION
    // ======================

    var dropZone = $("#{{ $index }} #drop-zone");
    var videofile;
    var videourl = null;
    
    $( "#{{ $index }} #js-upload-form" ).submit( function(e){

        var formData = new FormData(); // Currently empty
        formData.append('video', videofile[0]);
        formData.append('videourl', videourl);
        formData.append("_token", "{{ csrf_token() }}");

        console.log(formData.get('video'));
        $("#{{ $index }} #video-progress").css( "width", "0%" );
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
                            $("#{{ $index }} #video-progress").animate({
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
                $("#{{ $index }} #js-upload-form").trigger('videouploaded', videourl);

                @if($isVideoPreview == true)
                @endif
            }
        });
        return false;
    });
    
    var startUpload = function(files) {       
        console.log( files );
        
    }

    $( "#{{ $index }} #video" ).change( function(e){
        var uploadFiles = e.target.files;

        videofile = uploadFiles;
        $("#{{ $index }} #js-upload-form").submit();
    })


    dropZone.on('drop', function(e) {
        e.preventDefault();
        $(this).attr("class", "upload-drop-zone");

        videofile = e.originalEvent.dataTransfer.files;
        $("#{{ $index }} #js-upload-form").submit();
    });

    dropZone.on('dragover', function() {
        $(this).attr("class", "upload-drop-zone drop");
        return false;
    });

    dropZone.on('dragleave', function() {
        $(this).attr("class", "upload-drop-zone");
        return false;
    });

}(jQuery));
</script>