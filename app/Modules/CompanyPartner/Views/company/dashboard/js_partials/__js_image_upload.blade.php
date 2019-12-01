<script>
(function($){
    var imgurl = null;
    var galleryid = null;
    var gallerytype = 0;

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

            $.post( '{{ route('addgallery') }}', {
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

                    location.href = "{{ route('company.dashboard.upload') }}";
                })
                .fail( function(err){
                    console.log( 'addarticle failed', err);
                });
        });
    });

    $( "#gallery-image-container" ).imagePreview();

}(jQuery));
</script>