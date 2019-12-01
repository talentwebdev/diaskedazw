
/**
    * this plugin is for video player
*/

        (function ( $ ) {
       
            /**
                * Construction
            */
            function ArticleView(obj, options)
            {
                this.thisObj = obj;
                this.articleListArray = new Array();
                this.baseurl = "";
                this.currentArticle = null;
                this.currentArticleNumber = null;

                this.clear();
                this.configRootElement();                
                this.addArticleList(options);
                this.addArticleViewElement();

                console.log( "articleview", this.thisObj.html() );
                this.thisObj.on( "article-select", function() {} );
            }

            // this is property for article array from database.
            var propertyStrings = {

                "articleid": "id",
                "partnerid": "partner_id", 
                "serviceid": "service_id",
                "title": "title",
                "content": "content",
                "popular": "popular",
                "user": "user",
                "name": "name"

            };

            var userPropertyStrings = {
                "id": "id",
                "imgurl": "img_url",
                "username": "name"
            };


            /**
             * config root element of this plugin.
             */
            ArticleView.prototype.configRootElement = function(  ){
                if( this.thisObj.children( ".article-list" ).length == 0)
                {
                    $("<div></div>").addClass("col-3 article-list").appendTo( this.thisObj );
                    $("<div></div>").addClass("list-group card article-list example-1 square scrollbar-dusty-grass square thin").attr("id", "list-tab").attr("role", "tablist").appendTo( this.thisObj.children( ".article-list" ).first() );
                }
            }

            /**
             * set base url
             */
            ArticleView.prototype.setBaseUrl = function( url ){
                this.baseurl = url;
            }

            /**
             * clear article list
             */
            ArticleView.prototype.clear = function () {
                this.thisObj.find( ".article-list" ).children().first().html( "" );
                this.thisObj.find( "#username" ).text( "" );
                this.thisObj.find( "#articletitle" ).text( "" );
                this.thisObj.find( "#articlecontent" ).text( "" );
                this.currentArticle = null;
                this.currentArticleNumber = null;
                this.articleListArray = new Array();
            }
            /**
            * element: one object for article list
            * add html element
            */
            ArticleView.prototype.addArticleListElement = function(element){

                console.log("Info addArticleListElement:", element);
                var thisObj = this.thisObj;
                var parent = this;
                var articleListArray = this.articleListArray;

                var article_list = thisObj.children(".article-list").length != 0 ? thisObj.children(".article-list").first() 
                                      : $("<div></div>").addClass("col-3 article-list");

                var article_list_child = article_list.children().length == 0 ? $("<div></div>").addClass("list-group card article-list example-1 square scrollbar-dusty-grass square thin").attr("id", "list-tab").attr("role", "tablist") : article_list.children("div").first();

                // config html and append to videolist
                var html = "<a id='"+articleListArray.length+"' class='list-group-item list-group-item-action my-list-item' data-toggle='list'>";
                html += "<div class='row'>";
                html += "<div class='col-4'>";
                // img add
                html += "<img class='rounded-circle' src='"+this.baseurl + "/" + element[propertyStrings["user"]][userPropertyStrings["imgurl"]]+"' height='70' />";
                html += "</div><div class='col-8'>";
                // title add
                html += "<div>"+element[propertyStrings["title"]]+"</div>";
                // user add
                html += "<div>"+element[propertyStrings["user"]][propertyStrings["name"]]+"</div>";
                // popular add
                html += "<div><i class='icon_star'></i><span class='article-popular'>"+element[propertyStrings["popular"]]+"</span></div>";
                html += "</div></div></a>";

                $(html).appendTo(article_list_child);
                if(article_list.children().length == 0)
                  article_list_child.appendTo(article_list);

                if(thisObj.children(".article-list").length == 0)
                  article_list.appendTo(thisObj);

                // add handler when user click the video-list
                $(article_list_child).children().last().click(function(){
                    var elementNum      = parseInt($(this).attr("id"));

                    parent.thisObj.find("#articletitle").text(parent.articleListArray[elementNum][propertyStrings["title"]]);
                    parent.thisObj.find("#articlecontent").text(parent.articleListArray[elementNum][propertyStrings["content"]]);
                    parent.thisObj.find("#username").text(parent.articleListArray[elementNum][propertyStrings["user"]][userPropertyStrings["username"]]);

                    parent.currentArticle = element;
                    parent.currentArticleNumber = elementNum;
                    parent.thisObj.trigger( "article-select", element );

                });

            }

            ArticleView.prototype.addArticleViewElement = function(){
                var thisObj = this.thisObj;
                if(thisObj.children(".article-view").length == 0)
                {
                    var html =  "<div class='col-9'>" + 
                                  "<div  id='nav-tabContent'>" + 
                                    "<div class='card text-white bg-primary my-article-container'>" + 
                                      "<div class='card-header' id='username'></div>" + 
                                        "<div class='card-body example-1 square scrollbar-dusty-grass square thin'>" + 
                                          "<h5 class='card-title' id='articletitle'></h5>" + 
                                          "<p class='card-text text-white' id='articlecontent'>" +
                                          "</p>" + 
                                        "</div>" + 
                                    "</div> " + 
                                  "</div>" + 
                                "</div>";

                    console.log("Info addArticleViewElement:", html);
                    $(html).appendTo(thisObj);
                }

            }

            /**
             * set popular for current selected article
             */
            ArticleView.prototype.setPopular = function( popular ) {
                if(this.currentArticleNumber == null)
                    return;

                this.articleListArray[this.currentArticleNumber].popular = popular;
                this.thisObj.find( "#" + this.currentArticleNumber ).find( ".article-popular").text( popular );
            }

            /**
             * get Current article
             */
            ArticleView.prototype.getCurrentArticle = function() {
                return this.currentArticle;
            }

            /**
            options: the parameter to check the validation
            Validate the parameter that has all properties.
            */
            var validateParams = function(options){

                console.log("Info validateParams:", options);

                var option = Array.isArray(options) ? options[0] : options;
                return option.hasOwnProperty(propertyStrings["articleid"]) &&
                        option.hasOwnProperty(propertyStrings["partnerid"]) &&
                        option.hasOwnProperty(propertyStrings["serviceid"]) &&
                        option.hasOwnProperty(propertyStrings["title"]) &&
                        option.hasOwnProperty(propertyStrings["content"]) &&
                        option.hasOwnProperty(propertyStrings["popular"]) &&
                        option.hasOwnProperty(propertyStrings["user"]);
            }


            /**
            * array: article list array to add to this element
            * add article data
            */
            ArticleView.prototype.addArticleList = function(array)
            {


                console.log("Info addArticleList:", this.articleListArray);

                if(!Array.isArray(array))
                {
                    this.addArticleListElement(array);
                    this.articleListArray.push(array);
                }
                else
                {
                    var parent = this;
                    array.forEach(function(element){
                        parent.addArticleListElement(element);
                        parent.articleListArray.push(element);
                    });
                }
            }


            $.fn.my_article_view = function( options ) {

                // validting options that has all properties.
                /*
                if(!validateParams(options))
                {
                  console.log("Init failed: Invalid parameters.");
                  return false;       // failed
                }
                */
                
                var articleview = new ArticleView($(this), options);
                return articleview;
            };           
      }( jQuery ));