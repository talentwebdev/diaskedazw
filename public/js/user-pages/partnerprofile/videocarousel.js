(function($){
    'use strict';

    // ***********************************
    // :: 1.0 Video Slides Active Code
    // ***********************************
    var promotevideos = null, currentVideoIndex = 0;
    
    function AddAllVideoElement(videos)
    {
        for(var i = 0 ; i < videos.length ; i++)
        {
            ///var titleHtml = videos[i].title;
            //var titleHtml = "<a class='video-title' video-id='"+videos[i].id+"' partner-id='"+videos[i].partner_id+"'>" + videos[i].title+"</a>";
            var titleHtml;

            if(!videos[i].promote)
                titleHtml = '<div style="width: 100%;"><a>' + videos[i].title + '</a>' + 
                                '<div class="title-like" video-id="'+videos[i].id+'">' +
                                    '<a style="padding: 5px;"><i partner-id="'+videos[i].partner_id+'" video-id="'+videos[i].id+'" class="fas fa-star video ' + (videos[i].is_star ? "active" : "" ) + '"></i> <span class="count">' + videos[i].star + '<span></a>' +
                                    '<a style="padding: 5px;"><i partner-id="'+videos[i].partner_id+'" video-id="'+videos[i].id+'" class="fas fa-sign-language video ' + (videos[i].is_clap ? "active" : "" ) + '"></i> <span class="count">' + videos[i].clap + '<span></a>' + 
                                    '<a style="padding: 5px;"><i partner-id="'+videos[i].partner_id+'" video-id="'+videos[i].id+'" class="fas fa-heart video ' + (videos[i].is_heart ? "active" : "" ) + '"></i> <span class="count">' + videos[i].heart + "<span></a>" +
                                '</div>' +
                            '</div>';
            else
                titleHtml = '<div style="width: 100%;"><a>' + videos[i].title + '</a>' + 
                    
                '</div>';
            /*
            var html = "" + 
                '<li class="amazingcarousel-item">' + 
                    '<div class="amazingcarousel-item-container">' +
                        '<div class="amazingcarousel-image">' + 
                            '<a href="'+asset_url+"/"+videos[i].video_url+'" title="'+titleHtml+'"  class="html5lightbox" data-group="amazingcarousel-1">' +
                                '<img src="'+asset_url+"/"+videos[i].adimg_url+'" width="320" height="180" alt="big_buck_bunny (2)" />'+
                            '</a>'+
                        '</div>' +
                        '<div class="amazingcarousel-title">'+titleHtml+'</div>' +
                        '<div class="amazingcarousel-description"></div>' +
                    '</div>' +
                '</li>';
                */
            var html = "" + 
                    "<div class='video-gallery-thumbnail item' style='margin-bottom:0px;'>" +
                        "<div class='video-poster-img-container'>" +
                            "<a class='html5lightbox' href='" + asset_url + '/' + videos[i].video_url+ "' title='"+titleHtml+"' data-group='videogallery-1'>" +
                                "<img src='"+asset_url + "/" + videos[i].adimg_url + "' class='video-poster-img' style='height:209px;' >" +
                            "</a>" +
                            "<div class='video-poster-img-video'></div>" +
                        "</div>" +
                        "<div class='video-caption'>" +
                            "<h3 class='video-caption-title'>" + titleHtml + "</h3>" +
                        "</div>" +
                    "</div>";

            $(html).appendTo("#videos-container");
            //$( html ).appendTo('.amazingcarousel-list');
        }
        addListener();
    }

    function changePromoteVideo()
    {
        var video = document.getElementById('mainVideo');
        video.src = asset_url + "/" + promotevideos[parseInt(Math.random() * promotevideos.length)].video_url;
        currentVideoIndex++;
    }
    function AddAllVideoElement_(videos)
    {
        promotevideos = new Array();
            

        for(var i = 0 ; i < videos.length ; i++)
        {            
            var titleHtml; 
            var html;
            var video_url;
            var adimg_url;
            if(!authorised)
            {
                //titleHtml = videos[i].title;
                titleHtml = "" + 
                            '<div style="width: 100%;"><a>' + videos[i].title + '</a>' + 
                                
                            '</div>';
                html = "" + 
                        '<div style="width: 100%;"><a>' + videos[i].title + '</a>' + 
                            
                        '</div>';
                video_url = videos[i].video_url;
                adimg_url = videos[i].adimg_url;
            }
            else
            {
                if(videos[i].video == null) continue;

                promotevideos.push(videos[i].video);
                //titleHtml = "<a class='video-title' video-id='"+videos[i].video.id+"' partner-id='"+videos[i].id+"'>" + videos[i].video.title+"</a>";
                titleHtml = "" +
                            '<div style="width: 100%;">' + '<a class="video-title" video-id="'+videos[i].video.id+'" partner-id="'+videos[i].id+'">' + videos[i].video.title+'</a>' + 
                                '<div class="title-like" video-id="'+videos[i].id+'">' +
                                    '<a style="padding: 5px;"><i partner-id="'+videos[i].id+'" video-id="'+videos[i].video.id+'" class="fas fa-star video ' + (videos[i].video.is_star ? "active" : "" ) + '"></i> <span class="count">' + videos[i].video.star + '<span></a>' +
                                    '<a style="padding: 5px;"><i partner-id="'+videos[i].id+'" video-id="'+videos[i].video.id+'" class="fas fa-sign-language video ' + (videos[i].video.is_clap ? "active" : "" ) + '"></i> <span class="count">' + videos[i].video.clap + '<span></a>' + 
                                    '<a style="padding: 5px;"><i partner-id="'+videos[i].id+'" video-id="'+videos[i].video.id+'" class="fas fa-heart video ' + (videos[i].video.is_heart ? "active" : "" ) + '"></i> <span class="count">' + videos[i].video.heart + "<span></a>" +
                                '</div>' +
                            '</div>';
                html = "" +
                        '<div style="width: 100%;">' + '<a class="video-title" video-id="'+videos[i].video.id+'" partner-id="'+videos[i].id+'">' + videos[i].video.title+'</a>' + 
                            '<span class="title-like" video-id="'+videos[i].id+'" style="float:right;">' +
                                '<a style="padding: 5px;"><i partner-id="'+videos[i].id+'" video-id="'+videos[i].video.id+'" class="fas fa-star video ' + (videos[i].video.is_star ? "active" : "" ) + '"></i> <span class="count">' + videos[i].video.star + '<span></a>' +
                                '<a style="padding: 5px;"><i partner-id="'+videos[i].id+'" video-id="'+videos[i].video.id+'" class="fas fa-sign-language video ' + (videos[i].video.is_clap ? "active" : "" ) + '"></i> <span class="count">' + videos[i].video.clap + '<span></a>' + 
                                '<a style="padding: 5px;"><i partner-id="'+videos[i].id+'" video-id="'+videos[i].video.id+'" class="fas fa-heart video ' + (videos[i].video.is_heart ? "active" : "" ) + '"></i> <span class="count">' + videos[i].video.heart + "<span></a>" +
                            '</span>' +
                        '</div>';
                video_url = videos[i].video.video_url;
                adimg_url = videos[i].video.adimg_url;
            }

            var html = "" + 
                    "<div class='video-gallery-thumbnail item' style='margin-bottom:0px;'>" +
                        "<div class='video-poster-img-container'>" +
                            "<a class='html5lightbox' href='" + asset_url + "/" + video_url+ "' title='"+html+"' data-group='videogallery-1'>" +
                                "<img src='"+asset_url + "/" + adimg_url + "' class='video-poster-img' style='height:209px;' >" +
                            "</a>" +
                            "<div class='video-poster-img-video'></div>" +
                        "</div>" +
                        "<div class='video-caption'>" +
                            "<h3 class='video-caption-title' style='color:#FFF;'>" + titleHtml + "</h3>" +
                        "</div>" +
                    "</div>";

            $(html).appendTo("#videos-container");
            //$( html ).appendTo('.amazingcarousel-list');
        }
        addListener();

        if(authorised)
        {
            if(promotevideos.length > 0)
                changePromoteVideo();

            $("#mainVideo").on('ended', function(e){
                changePromoteVideo();
            });
        }   
    }
    function addListener()
    {
        if($.fn.owlCarousel)
        { 
            var owl = $('#videos-container');
            owl.owlCarousel({
                margin: 10,
                nav: true,
                navText:["<i class='fas fa-angle-left'></i>", "<i class='fas fa-angle-right'></i>"],
                margin: 30,
                loop: false,
                autoplay: false,
                autoplayTimeout: 2000,
                smartSpeed: 1000,
                responsiveClass:true,
                responsive: {
                    0: {
                        items: 1
                    },
                    500: {
                        items: 2
                    },
                    1000: {
                        items: 4
                    }
                }
            })
        }
        var jsFolder = asset_url + "/plugins/carouselengine/";
        jQuery(".html5lightbox").html5lightbox({
            skinsfoldername:"",
            jsfolder:jsFolder,
            barheight:64,
            showtitle:true,
            showdescription:false,
            shownavigation:false,
            thumbwidth:80,
            thumbheight:60,
            thumbtopmargin:12,
            thumbbottommargin:8,
            titlebottomcss:'{color:#333; font-size:14px; font-family:Armata,sans-serif,Arial; overflow:hidden; text-align:left;}',
            descriptionbottomcss:'{color:#333; font-size:12px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left; margin:4px 0px 0px; padding: 0px;}'
        });
        $('body').on('click', (e)=>{
            if($(e.target).hasClass('video-poster-img-video'))
                $(e.target).parent().find('.html5lightbox').first().click();
        });
        $(".html5lightbox").on('click', (e)=>{console.log(e);});
    }
    if(page == "partnerprofile")
        $.get("getvideos", {count: 8, partnerid: partner.id})
            .done(function(data){
                console.log('getvideos successed', data);
                AddAllVideoElement(data);
                
            })
            .fail(function(err){
                console.log('getvideos failed', err);
            });
    else
        $.get("latestvideo")
            .done(function(data){
                console.log('latest video successed', data);
                AddAllVideoElement_(data);
                
            })
            .fail(function(){});

    /**
     * add like button click listener
     */
    $("body").click(function(e){

        var type = "";
        var el = null;

        // check if click the like button
        if($(e.target).hasClass("video") && $(e.target).hasClass("fa-star"))
        {
            type = "star";
        }
        else if($(e.target).hasClass("video") && $(e.target).hasClass("fa-sign-language"))
        {
            type = "clap";
        }
        else if($(e.target).hasClass("video") && $(e.target).hasClass("fa-heart"))
        {
            type = "heart";
        }

        //send request to add like with videoid, type ... and set active class to element clicked
        if(type.length != 0)
        {
            

            el = $(e.target);

            // send request
            var partner_id = $(e.target).attr("partner-id");
            $.get("likevideo", {video_id: $(e.target).attr("video-id"), liketype: type, partner_id:partner_id})
                .then(function(data){
                    if(data == "failed"){
                        $("#modalactivealert").modal();
                        return;
                    }

                    if(type == "star")
                    {
                        $("i.fa-star[video-id='"+$(e.target).attr("video-id")+"']").parent().find(".count").text(data);
                        $("i.fa-star[video-id='"+$(e.target).attr("video-id")+"']").addClass("active");
                    }
                    else if(type == "clap")
                    {
                        $("i.fa-sign-language[video-id='"+$(e.target).attr("video-id")+"']").parent().find(".count").text(data);
                        $("i.fa-sign-language[video-id='"+$(e.target).attr("video-id")+"']").addClass("active");
                    }
                    else if(type == "heart")
                    {
                        $("i.fa-heart[video-id='"+$(e.target).attr("video-id")+"']").parent().find(".count").text(data);
                        $("i.fa-heart[video-id='"+$(e.target).attr("video-id")+"']").addClass("active");
                    }

                    var titleHTML = $(".like-button-container[video-id='" + $(e.target).attr("video-id") + "']").html();
                    var html = $(".html5lightbox[video-id='"+$(e.target).attr("video-id") + "']").attr("title");
                    html = $(html).find("a").remove();
                    html = $(html).find("span").html(titleHTML);
                    $(".html5lightbox[video-id='"+$(e.target).attr("video-id") + "']").attr("title", $(html).html());

                })
                .fail(function(err){});
        }

    });
}(jQuery));