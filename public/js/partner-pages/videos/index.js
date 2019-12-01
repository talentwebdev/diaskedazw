(function($){

    /**
     * fetch all videos from database
     */

    var selected_video = null;
    
    var initComponent = function(){
        $("#btn-video-delete").addClass("disabled");
        selected_video = null;

        var videoEl = document.getElementById( 'mainVideo' );
        videoEl.src = "";
        videoEl.load();
    }
    

    var videoList = new ListComponent($("#videolist"), {
        addItemElement: addVideoElement,
        onClick: function( video, el )
        {
            var videoEl = document.getElementById( 'mainVideo' );
            videoEl.poster = asset_url + "/" + video.adimg_url;
            videoEl.src = asset_url + "/" + video.video_url;
            videoEl.load();

            selected_video = video;
            $("#btn-video-delete").removeClass("disabled");
        }
    });

    function addVideoElement( video )
    {
        var html = "" + 
            '<li video-id="'+video.id+'" class="list-group-item" style="display:flex; flex-direction: row;">' +
                '<div style="width:30%;" >' +
                    '<img src="' + asset_url + "/" + video.adimg_url + '" alt="" srcset="">' +
                '</div>' + 
                "<div style=' width: 70%; padding: 10px;' >" +
                    "" + video.title + "" +
                "</div>" +
            "</li>";
        return html;
    }
    $.get( "getvideos", {
            count: -1,
            partnerid: partner.id  
        })
        .done( function(data){
            console.log( "getvideos success", data );

            videoList.addItems(data);
        })
        .fail( function(err){
            console.log( "get videos failed", err );
        });
    
    $("#btn-video-delete").click(e => {
        if(selected_video == null) return;

        $.post("deletevideo", {_token: csrf_token, videoid: selected_video.id})
            .done(data => {

                $(".list-group-item[video-id='"+selected_video.id+"']").remove();
                initComponent();                

                alert("done");
            })
            .fail(err => {});
    });

    initComponent();
}(jQuery));



