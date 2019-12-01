<script>
(function($){

    var selected_image = null;;

    var initComponent = function(){
        selected_image = null;
        $("#mainimage").attr("src", "");
        $("#btn-image-delete").addClass("disabled");
    }

    var imageList = new ListComponent($("#imagelist"), {
        addItemElement: addImageElement,
        onClick: function(image, el){
            $( "#mainimage" ).attr( "src", asset_url + "/" + image.img_url);

            selected_image = image;
            $("#btn-image-delete").removeClass("disabled");
        }
    });

    function addImageElement(image)
    {
        var html = "" + 
            '<li image-id="'+image.id+'" class="list-group-item" style="display:flex; flex-direction: row;">' +
                '<div style="width:30%;" >' +
                    '<img src="' + asset_url + "/" + image.img_url + '" alt="" srcset="">' +
                '</div>' + 
                "<div style=' width: 70%; padding: 10px;' >" +
                    "" + image.title + "" +
                "</div>" +
            "</li>";

        return html;
    }

    $.get( '{{ route('fetchgallery') }}', {
                count: -1,
                partnerid: partner.id
            })
        .done( function(data){
                console.log('fetchgallery success', data);

                imageList.addItems(data);
            })
            .fail( function(err){
                console.log('fetchgallery fail', err);
            });
    
    $("#btn-image-delete").click(e => {
        if(selected_image == null)  return;

        $.post("{{ route('deletegallery') }}", {_token: csrf_token, imageid: selected_image.id})
            .done(data => {
                $(".list-group-item[image-id='"+selected_image.id+"']").remove();
                initComponent();

                alert("done");
            })
            .fail(err => {});
    });

    initComponent();
}(jQuery));
</script>