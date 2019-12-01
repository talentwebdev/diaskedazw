
/**
    * this plugin is for video player
*/

        (function ( $ ) {
       
            /**
                * Construction
            */
            function VideoPlayer(obj, options)
            {
                this.thisObj = obj;
                this.videolistArray = new Array();
                this.baseurl = "";
                this.currentVideo = null;
                this.currentVideoNumber = null;

                this.configRootElement();
                this.addVideoList(options);
                this.addVideoPlayerElement();                

                this.thisObj.on( "video-select", function() {} );
            }

            // this is property for video array from database.
            var propertyStrings = {

                "videoid": "id",
                "userid": "partner_id", 
                "serviceid": "service_id",
                "videourl": "video_url", 
                "title": "title",
                "imgurl": "adimg_url",
                "popular": "popular",
                "user": "user",
                "name": "name"

            };


            /**
             * set image base url
             */
            VideoPlayer.prototype.setBaseUrl = function( baseurl )
            {
                this.baseurl = baseurl;
            }

            VideoPlayer.prototype.configRootElement = function( )  {
                
                if( this.thisObj.children( ".video-list" ).length == 0)
                {
                    $("<div></div>").addClass("col-3 video-list").appendTo( this.thisObj );
                    $("<div></div>").addClass("list-group card article-list example-1 square scrollbar-dusty-grass thin").appendTo( this.thisObj.children( ".video-list" ).first() );
                }
            }
            /**
            * element: one object for video list
            * add html element
            */
            VideoPlayer.prototype.addVideoListElement = function(element){

                console.log("Info addVideoListElement:", element);
                var thisObj = this.thisObj;
                var parent = this;
                var videolistArray = this.videolistArray;

                var video_list = thisObj.children(".video-list").length != 0 ? thisObj.children(".video-list").first() 
                                      : $("<div></div>").addClass("col-3 video-list");

                var video_list_child = video_list.children().length == 0 ? $("<div></div>").addClass("list-group card article-list example-1 square scrollbar-dusty-grass thin").attr("id", "list-tab").attr("role", "tablist") : video_list.children("div").first();

                // config html and append to videolist
                var html = "<a id='"+videolistArray.length+"' class='list-group-item list-group-item-action my-list-item' data-toggle='list'>";
                html += "<div class='row'>";
                html += "<div class='col-4'>";
                // img add
                html += "<img class='vertical-center' src='"+this.baseurl + "/" + element[propertyStrings["imgurl"]]+"' height='70' />";
                html += "</div><div class='col-8'>";
                // title add
                html += "<div>"+element[propertyStrings["title"]]+"</div>";
                // user add
                html += "<div>"+element[propertyStrings["user"]][propertyStrings["name"]]+"</div>";
                // popular add
                html += "<div ><i class='icon_star'></i><span class='video-popular'>"+element[propertyStrings["popular"]]+"</span></div>";
                html += "</div></div></a>";

                $(html).appendTo(video_list_child);
                if(video_list.children().length == 0)
                  video_list_child.appendTo(video_list);

                if(thisObj.children(".video-list").length == 0)
                  video_list.appendTo(thisObj);

                // add handler when user click the video-list
                $(video_list_child).children().last().click(function(){
                    var elementNum      = parseInt($(this).attr("id"));

                    var video           = document.getElementById("modalshowvideo");
                    video.src           = parent.baseurl + "/" + parent.videolistArray[elementNum][propertyStrings["videourl"]];
                    video.poster        = parent.baseurl + "/" + parent.videolistArray[elementNum][propertyStrings["imgurl"]];

                    video.load();

                    parent.currentVideo = element;
                    parent.currentVideoNumber = elementNum;
                    parent.thisObj.trigger( "video-select", element );
                });

            }

            /**
             * set popular for current selected video
             */
            VideoPlayer.prototype.setPopular = function( popular ) {
                if(this.currentVideoNumber == null)
                    return;

                this.videolistArray[this.currentVideoNumber].popular = popular;
                this.thisObj.find( "#" + this.currentVideoNumber ).find( ".video-popular").text( popular );
            }


            /**
             * get Current Video
             */
            VideoPlayer.prototype.getCurrentVideo = function() {
                return this.currentVideo;
            }

            VideoPlayer.prototype.addVideoPlayerElement = function(){
                var thisObj = this.thisObj;
                if(thisObj.children(".video-player").length == 0)
                {
                    var html = "<div class='col-9 video-player'>" + 
                                  "<div id='nav-tabContent'>" + 
                                    "<div class='card'>" + 
                                      "<div class='card-body my-video-container'>" + 
                                        "<video id='modalshowvideo' loop='loop' height='100%' width='100%' id='mainVideo' controls>" + 
                                            "<source type='video/mp4'>" + 
                                        "</video>" + 
                                      "</div>" + 
                                    "</div>" + 
                                  "</div>" + 
                                "</div>";

                    console.log("Info addVideoPlayerElement:", html);
                    $(html).appendTo(thisObj);
                }

            }

            /**
             * Clear Video player element
             */
            VideoPlayer.prototype.clear = function()
            {
                this.thisObj.find( ".video-list" ).children().first().html( "" );

                var video           = document.getElementById("modalshowvideo");
                video.src           = "";
                video.poster        = "";

                video.load();
                
                this.videolistArray = new Array();
                this.currentVideo = null;
                this.currentVideoNumber = null;
            }

            /**
            options: the parameter to check the validation
            Validate the parameter that has all properties.
            */
            var validateParams = function(options){

                console.log("Info validateParams:", options);

                var option = Array.isArray(options) ? options[0] : options;
                return option.hasOwnProperty(propertyStrings["videoid"]) &&
                        option.hasOwnProperty(propertyStrings["userid"]) &&
                        option.hasOwnProperty(propertyStrings["serviceid"]) &&
                        option.hasOwnProperty(propertyStrings["videourl"]) &&
                        option.hasOwnProperty(propertyStrings["title"]) &&
                        option.hasOwnProperty(propertyStrings["imgurl"]) &&
                        option.hasOwnProperty(propertyStrings["popular"]) &&
                        option.hasOwnProperty(propertyStrings["user"]);
            }


            /**
            * array: video list array to add to this element
            * add video data
            */
            VideoPlayer.prototype.addVideoList = function(array)
            {


                console.log("Info addVideoList:", this.videolistArray);

                if(!Array.isArray(array))
                {
                    this.addVideoListElement(array);
                    this.videolistArray.push(array);
                }
                else
                {
                    var parent = this;
                    array.forEach(function(element){
                        parent.addVideoListElement(element);
                        parent.videolistArray.push(element);
                    });
                }
            }


            $.fn.my_video_player = function( options ) {

                // validting options that has all properties.
                /*
                if(!validateParams(options))
                {
                  console.log("Init failed: Invalid parameters.");
                  return false;       // failed
                }
                */
                
                var player = new VideoPlayer($(this), options);
                return player;
            };           
      }( jQuery ));