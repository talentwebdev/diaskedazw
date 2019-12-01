<script>
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

            $.post( '{{ route('addarticle') }}', {
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
                    location.href = "{{ route('company.dashboard.upload') }}";
                })
                .fail( function(err){
                    console.log( 'addarticle failed', err);
                });
        });
    });
}(jQuery));

</script>