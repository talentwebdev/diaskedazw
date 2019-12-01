<script>

var imgurl = '';
 
$( "#{{ $index }} #video-image-container" ).imagePreview();

// video image upload
$( "#{{ $index }} #video-image-container" ).find( ".image-preview-clear" ).click( function(){
    $( "#{{ $index }} #video-image-container" ).find("#progressDivId").css("display", "none");
    var percentValue = '0%';

    $( "#{{ $index }} #video-image-container" ).find('#progressBar').width(percentValue);
});

$( document ).ready( function(){
    $('#{{ $index }}  #video-image-container').submit(function (e) {	
        //e.preventDefault();
        
        $(this).ajaxSubmit({
            data: {imgurl: imgurl, type: "video"},
            beforeSubmit: function () {
                $( "#{{ $index }} #video-image-container" ).find("#progressDivId").css("display", "block");
                var percentValue = '0%';

                $( "#{{ $index }} #video-image-container" ).find('#progressBar').width(percentValue);
            },
            uploadProgress: function (event, position, total, percentComplete) {
                console.log(percentComplete);
                var percentValue = percentComplete + '%';
                
                $( "#{{ $index }} #video-image-container" ).find("#progressBar").animate({
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
                $("#{{ $index }} #video-image-container").trigger("videoimageuploaded", imgurl);
            }
        });
        
        return false;
    });
});



$( "#{{ $index }} #video-image-container input:file" ).change( function(){
    $( "#{{ $index }} #video-image-container" ).submit();
});
</script>