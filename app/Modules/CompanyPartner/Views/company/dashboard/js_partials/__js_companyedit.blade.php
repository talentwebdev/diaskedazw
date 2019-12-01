<script>
(function($){
    'use strict';

    var dropZone = document.getElementById('drop-zone');
    var videofile;
    var videourl = "";
                
    function dealWithVideoUpload()
    {
        // video type

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
                    if(videourl == "error")
                    {
                        $("#modalactivealert").modal();
                        return;
                    }  
                    $("input[name='company_video'").val(videourl);                                     
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

    function dealWithMapbox()
    {
        var map = $("#map").my_own_mapbox(
            {
                token: "pk.eyJ1IjoiZGlhc2tlZGF6dyIsImEiOiJjazA1Z2t3eWczZmJrM251dDRwaWkxNGkyIn0.5WkL6xzwa8b65Z6FFmEpRQ",
                onComplete: function(){
                },
                starting_query: "{{ $company->address ?? "Cyprus" }}"
            }
        );
        
        $("#save-btn").click(e => {
            $("input[name='address']").val($(".mapboxgl-ctrl-geocoder > input").val());
        });
    }
    
    //dealWithMapbox();
    dealWithVideoUpload();
}(jQuery));
</script>