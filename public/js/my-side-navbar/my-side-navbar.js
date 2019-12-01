
/**
    * this plugin is for side bar
*/

        (function ( $ ) {

        	/**	
        		* Construction
        	*/
        	function SideNavBar(thisObj, options)
        	{
				// member variable

				this.el = thisObj;
				
				this.serviceArray = new Array();

				this.linkArray = new Array();

				this.selectedService = null;


				// functions 

				//this.configRootElement();
				
				this.el.on("service-select", function(){ });

				if( options == undefined )
					return;

				// add service and link element from options
				if( options.hasOwnProperty("service") )
					this.addServices( options["service"] );

				if( options.hasOwnProperty("link") )
					this.addLinks( options["link"] );

				this.el.on( "service-select", function() {} );
        	}

        	var propertyStrings = {
        		"id": "id",
        		"imgurl": "img_url", 
        		"cost" : "cost", 
        		"title" : "title",
        		"description" : "description",
        		"linkurl": "link_url"
        	}

        	/**
        		* config root element.
			*/
			/*
        	SideNavBar.prototype.configRootElement = function() {
        		// body...
        		console.log("Info SideNavBar::configRootElement:", "config root element");

        		if(this.el.find("#main-content").length == 0){
        			var html = "<div class='container-fluid' id='main-content'>" + 
			        		"<div class='navbar-brand pt-0' href='./index.html' style='height: 60px;'></div>" +
			        		"<div class='collapse navbar-collapse' id='sidenav-collapse-main'>" +
			          			"<ul class='navbar-nav' id='items'></ul><hr class='my-3'><h6 class='navbar-heading text-muted'>Other link</h6><ul class='navbar-nav mb-md-3' id='otherlink'></ul>" +
			        		"</div>" +
			      			"</div>";

			      	console.log("Info configRootElement:", "Make new element.");
			      	this.el.html(html);	
        		}        		
			};
			*/
			
			/**
			 	* Add service input to this plugin
			 */
			SideNavBar.prototype.addServices = function( elements )
			{
				var parent_ = this;

				console.log( "SideNavBar::addServices", elements );
				elements.forEach( function(element) {

					parent_.serviceArray.push( element );					
					parent_.addServiceElement( element );

				} );
			}

			/**
			 	* Add link input to this plugin
			 */
			SideNavBar.prototype.addLinks = function( elements )
			{
				var parent_ = this;

				console.log( "SideNavBar::addLinks", elements );
				elements.forEach( function(element) {

					parent_.linkArray.push( element );					
					parent_.addLinkElement( element );
					
				} );
			}

        	/**
        		* Add one service
        	*/
        	SideNavBar.prototype.addServiceElement = function(element){

        		console.log("Info SideNavBar::addServiceElement:", element);

				var element_container = $("<a></a>").addClass("nav-link").attr("href", "#");
        		$("<span></span>").addClass(element[propertyStrings["imgurl"]]).css("color", element.hasOwnProperty("img_color") ? element["img_color"] : "").appendTo(element_container);
				element_container.append("<span>" + element[propertyStrings["title"]] + "</span>");
				
				element_container.appendTo( this.el.find("#service") );

				var parent_ = this;
        		element_container.click(function(){
        			console.log("Selected Service:", element);

					parent_.selectedService = element;
					parent_.el.find( ".nav-link-activated" ).removeClass( "nav-link-activated" );
					$( this ).addClass( "nav-link-activated" );
        			parent_.el.trigger("service-select", element);
        		});

        	}

        	/**	
        		* Add one link
        	*/
        	SideNavBar.prototype.addLinkElement = function(element){

        		console.log("Info SideNavBar::addLinkElement:", element);

				var element_container = $("<a></a>").attr("href", element[propertyStrings["linkurl"]]);
				
        		if(element.hasOwnProperty(propertyStrings["imgurl"]))
        			element_container.append("<span class='" +element[propertyStrings["imgurl"]]+ "'></span>");
				element_container.append("<span>" + element[propertyStrings["title"]] + "</span>");

				element_container.appendTo( this.el.find("#link") );

        	}



        	$.fn.my_own_sidebar = function( options ){

        		var sidebar = new SideNavBar( $(this), options );
        		return sidebar;
        	}
    	}( jQuery ));