<script>
(function($){
    'use strict';

    function dealWithCompanyLogo()
    {
        $("#companyLogoFile").change(e => {
            var files = document.getElementById("companyLogoFile").files;
            if(FileReader && files && files.length)
            {
                var fr = new FileReader();
                fr.onload = function () {
                    document.getElementById("logoPreview").src = fr.result;
                }
                fr.readAsDataURL(files[0]);
            }
        });
    }
    
    function dealWithAreaAndCategory()
    {
        var addAreaElement = function(areas)
        {
            
            // $('#areaList').children().remove();
            // areas.forEach((area)=>{
                
            //     var html_ ='<li class="area" id="'+area.id+'"><a href="#">' + area.name + '</a></li>'
            //     $(html_).appendTo("#areaList")
            //             .click(function(){
            //                 $("input[name='company_area']").val(area.id);
            //             });;
            // });
            // new DropDown( $('#areaDropdown') );

            areas.forEach((area)=>{                
                var html_ ='<option value=' + area.id + '>' + area.name + '</option>'
                $("#company_area").append(html_);
            });          
        };

        var addCategoryElement = function(categories)
        {
            // categories.forEach((category)=>{
            //     var html_ ='<li class="category" id="'+category.id+'"><a href="#">' + category.name + '</a></li>'
            //     $(html_).appendTo("#categoryList")
            //             .click(function(){
            //                    $("input[name='company_category'").val(category.id);
            //                 });
            // });
            // new DropDown( $('#categoryDropdown') );

            categories.forEach((category)=>{                
                var html_ ='<option value=' + category.id + '>' + category.name + '</option>'
                $("#company_category").append(html_);
            });

        };

        $.get("{{ route('fetchareacategory') }}")
            .done(data => {
                addAreaElement(data.area);
                addCategoryElement(data.category);
            })
            .fail(err => {});
    }

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
            starting_query: "{{ old('address') ?? "Cyprus" }}"
        }
        );
        
        $("#save-btn").click(e => {
            $("input[name='address']").val($(".mapboxgl-ctrl-geocoder > input").val());
        });
    }


    dealWithAreaAndCategory();
    dealWithCompanyLogo();
    dealWithVideoUpload();
    //dealWithMapbox();
}(jQuery));
</script>