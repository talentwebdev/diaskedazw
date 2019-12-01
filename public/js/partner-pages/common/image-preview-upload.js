(function($){

    $.fn.imagePreview = function( options ) {
        var el = $(this);
        $(document).on('click', '#close-preview', function(){ 
            el.find('.image-preview').popover('hide');
            // Hover befor close the preview
            el.find('.image-preview').hover(
                          function () {
                            el.find('.image-preview').popover('show');
                          }, 
                          function () {
                            el.find('.image-preview').popover('hide');
                          }
                      );    
        });
        
        var closebtn = $('<button/>', {
            type:"button",
            text: 'x',
            id: 'close-preview',
            style: 'font-size: initial;',
        });
        closebtn.attr("class","close pull-right");
        // Set the popover default content
        el.find('.image-preview').popover({
            trigger:'manual',
            html:true,
            title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
            content: "There's no image",
            placement:'bottom'
        });

        // Clear event
        el.find('.image-preview-clear').click(function(){
            el.find('.image-preview').attr("data-content","").popover('hide');
            el.find('.image-preview-filename').val("");
            el.find('.image-preview-clear').hide();
            el.find('.image-preview-input input:file').val("");
            el.find(".image-preview-input-title").text("Browse"); 
        }); 
        
        // Create the preview image
        el.find(".image-preview-input input:file").change(function (){     
            var img = $('<img/>', {
                id: 'dynamic',
                width:250,
                height:200
            });      
            var file = this.files[0];
            var reader = new FileReader();
            // Set preview image into the popover data-content
            reader.onload = function (e) {
                el.find(".image-preview-input-title").text("Change");
                el.find(".image-preview-clear").show();
                el.find(".image-preview-filename").val(file.name);            
                img.attr('src', e.target.result);
                el.find(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
            }        
            reader.readAsDataURL(file);
        });  
    }
}(jQuery))