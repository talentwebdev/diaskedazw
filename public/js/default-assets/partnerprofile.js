
(function ($) {
    'use strict';

        var videoSetting = { currentShow: 0, videos : new Array() };
        var articleSetting = { currentShow: 0, articles: new Array() };
        var gallerySettings = { currentShow: 0, images: new Array() };
        var asset_url = $("#asset-url").attr("url");

        var addArticleElement = function( article ) {

            var html =  "<div class='col-12 col-lg-4 animated fadeInDown'>" +
                            "<div class='card'>" +
                                "<img class='card-img-top' src='' alt='Card image cap'>" +
                                "<div class='card-body'>" +
                                    "<span class='card-date' style='font-weight:700; color:#777;'></span>" +
                                    "<h2 style='color:rgb(0, 162, 232);' class='card-title'></h2>" +
                                    "<p class='card-text'></p>" +
                                    "<div class='dropdown-divider'></div>" +
                                    "<a class='readmore-btn btn btn-primary'>Read</a>" +
                                "</div>" +
                            "</div>" +
                        "</div>";
/*
            var html =  "<div class='col-12 col-lg-4 animated fadeInDown'>" +
                            "<div class='single-blog-post bg-img mb-80' id='articlecontainer'>" +
                                "<div class='post-content'>" +
                                    "<span class='post-date' id='date'> <span id='day'></span> </span>" +
                                    "<a class='post-title'></a>" +
                                    "<p id='content'></p>" +
                                    "<a class='read-more-btn'>Read More <i class='arrow_carrot-2right'></i></a>" +
                                "</div>" +
                            "</div>" +
                        "</div>";
*/
            var articleHtml = $("<div></div>").html( article.content );
            var el = $( html );
            var date = new Date( article.created_at );
            var months = [ "January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
            el.find( ".card-date" ).html( months[date.getMonth()-1] + " " + date.getDay() + ", " + date.getFullYear() );
            el.find( ".card-title" ).text( article.title );
            el.find( ".card-text" ).text( articleHtml.text().substr( 0, 80 ) + "..." );
            el.find( ".card-img-top" ).attr( 'src', asset_url + "/" + article.poster_img );

            el.appendTo( "#articleList" );

            el.find( '.readmore-btn' ).on( 'click', function(e) {

                $( "#showarticlemodal" ).find( "#articleContent" ).html( article.content );
                $( "#showarticlemodal" ).find( "#articletitle" ).text( article.title );

                $( '#showarticlemodal' ).modal('show');
            });

        }
        var showRowArticle = function( ) {
            var i;

            for( i = articleSetting.currentShow ; i < Math.min(articleSetting.currentShow + 3, articleSetting.articles.length) ; i++ )
            {
                addArticleElement( articleSetting.articles[i] );
            }

            articleSetting.currentShow = i;
            if( articleSetting.currentShow < articleSetting.articles.length )
                $( "#article_loadmore" ).removeClass( "disabled" );
            else
                $( "#article_loadmore" ).addClass( "disabled" );
        }


        var addArticles = function( articles ) {
            articleSetting.articles = articles;

            showRowArticle();
        }

        var addVideoElement = function( video ){
            var html =  "<div class='video-list col-4 mb-30 single-portfolio-slide animated fadeInDown '>" +
                            "<img src='' style='width:100%; height: 200px;' alt='' id='adimg'>" +
                            "<div class='overlay-effect'>" +
                                "<h4 id='title'></h4>" +
                                "<p id='description'></p>" +
                            "</div>" +
                        "</div>";

            var el = $( html );
            el.find( "#adimg" ).attr( "src", asset_url + "/" + video.adimg_url );
            el.find( "#title" ).text( video.title );
            el.find( "#description" ).text( video.description );

            el.on( "click", function(e) {

                var videoEl = document.getElementById( "modalshowvideo" );
                videoEl.src = asset_url + "/" + video.video_url;
                videoEl.load();

                console.log( "showvideomodal", videoEl.src );
                $( '#showvideomodal' ).modal('show');
                $( "#videotitle" ).text( video.title );

            } );

            el.appendTo ( "#videoList" );

            console.log( "addVideoElement", el );
        }

        var showRowVideo = function() {
            var i;
            for( i = videoSetting.currentShow ; i < Math.min(videoSetting.currentShow + 3, videoSetting.videos.length) ; i++)
            {
                addVideoElement( videoSetting.videos[i] );
            }

            videoSetting.currentShow = i;
            if( videoSetting.currentShow < videoSetting.videos.length )
            {
                $( "#video_loadmore" ).removeClass( "disabled" );
            }
            else{
                $( "#video_loadmore" ).addClass( "disabled" );
            }
        }


        var addVideos = function( videos ) {
            videoSetting.videos = videos;

            showRowVideo();
        }

        $.get( "getvideos", { partnerid: partner.id } )
            .then( function( data ) {
                console.log( "getvideos succeed", data );

                addVideos( data );
            } )
            .fail( function( err ) {
                console.log( "getvideos failed", err );
            } );

        $.get( "getarticles", { partnerid: partner.id } )
            .then( function( data ) {
                console.log( "getarticles succeed", data );

                addArticles( data );
            })
            .fail( function( err ) {
                console.log( "getarticles failed", err );

            });


        // *********************************
        // :: 1.0 Add listener to the element.
        // *********************************
        $('#showvideomodal').on('hidden.bs.modal', function (e) {
            // do something...
            var video = document.getElementById("modalshowvideo");
            video.currentTime = 0;
            video.pause();
        });

        $( "#video_loadmore" ).on( 'click', function( e ) {
            showRowVideo();
        });

        $( "#article_loadmore" ).on( 'click', function(e) {
            showRowArticle();
        });


        // *********************************
        // :: 2.0 Welcome Slides Active Code
        // *********************************

        if ($.fn.owlCarousel) {
            var welcomeSlider = $('.welcome-slides');
            welcomeSlider.owlCarousel({
                items: 1
            });
        }

        // *********************************
        // :: 3.0 fetch image gallery
        // *********************************

        var addGalleryElement = function( image, idx ){
            var html_img =  "<div class='mbr-gallery-item mbr-gallery-item--p0 animated fadeInDown'>" + 
                                "<div href='#lb-gallery1-o1' data-slide-to='"+idx+"' data-toggle='modal'>" +
                                    "<img src='"+asset_url + "/" + image.img_url+"' alt='' title=''>" +
                                    "<span class='icon-focus'></span>" + 
                                    "<span class='mbr-gallery-title mbr-fonts-style display-7'>"+image.title+"</span>" +
                                "</div>" + 
                            "</div>";
            var html_li =   "<li class='active' data-target='#lb-gallery1-o1' data-slide-to='"+idx+"' aria-current='location'></li>";
            var html_item = idx != 0 ? "<div class='carousel-item'>" : "<div class='carousel-item active'>";
                            html_item +=
                                "<img src='"+asset_url + "/" + image.img_url+"' alt='' title=''>" +
                            "</div>";
            console.log( html_item );
            
            $( html_img ).appendTo( "#image-list" );
            $( html_li ).appendTo( '#carousel-indicator' );
            $( html_item ).appendTo( '#carousel-items' );
        }
        var showRowImages = function() {
            var i;
            for( i = gallerySettings.currentShow ; i < Math.min(gallerySettings.currentShow + 4, gallerySettings.images.length) ; i++ )
            {
                addGalleryElement( gallerySettings.images[i], i );
            }

            gallerySettings.currentShow = i;
            if( gallerySettings.currentShow < gallerySettings.images.length )
            {
                $( "#gallery_loadmore" ).removeClass( "disabled" );
            }
            else{
                $( "#gallery_loadmore" ).addClass( "disabled" );
            }
        }
        var addGallery = function( images )
        {
            gallerySettings.images = images;
            showRowImages();
        }

        
        $( "#gallery_loadmore" ).on( 'click', function(e){
            showRowImages();            
        });

        $.get( "fetchgallery", { partnerid: 10 } )
            .then( function( data ) {
                console.log( "fetchgallery succeed", data );

                addGallery( data );
            })
            .fail( function( err ) {
                console.log( "fetchgallery failed", err );

        });

        // *********************************
        // :: 4.0 add Chat component
        // *********************************

        Echo.join( 'chat.' + partner.id )
                    .here((users) => {
                        console.log("Join Channel() success", users);
                    });
        
}( jQuery ));
