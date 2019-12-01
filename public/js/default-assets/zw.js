(function ($) {
    'use strict';

    if($("#pageAttr").attr("attr") == "zw")
    {
        var sidebar;
        var playerComponent  = $("#videoPanel").my_video_player( [] );
        var articleCompoenent = $( "#article-view-panel" ).my_article_view( [] );

        playerComponent.setBaseUrl( $( "#asset-url" ).attr( "url" ) );
        articleCompoenent.setBaseUrl( $( "#asset-url" ).attr( "url" ) );

        var videorating = $( "#video-rating-ability-wrapper" ).my_rating( {
            onSelect : function( value ){
                
                if(playerComponent.getCurrentVideo() == null)
                {
                    videorating.setValue(0);
                    return;
                }

                $.post( "ratingvideo", {
                            "_token": $("#pageAttr").attr("csrf"),
                            videoid: playerComponent.getCurrentVideo().id,
                            rating: videorating.getValue()
                        })
                        .done( function( ) {
                            console.log( "ratingvideo", "successed." );
                            playerComponent.setPopular( videorating.getValue() );
                        } )
                        .fail( function() {
                            console.log( "ratingvideo", "failed." );
                        } );
            }
        } );

        var articlerating = $( "#article-rating-ability-wrapper" ).my_rating( {
            onSelect : function( value ){
                
                if(articleCompoenent.getCurrentArticle() == null)
                {
                    articlerating.setValue(0);
                    return;
                }

            }
        } );

        playerComponent.thisObj.on( "video-select", function( event, element ) {
            console.log( "video-select", element );

            videorating.setValue( element.popular );
        } );

        articleCompoenent.thisObj.on( "article-select", function( event, element ) {
            console.log( "article-select", element );

            articlerating.setValue( element.popular );
        } );

    }
})(jQuery);