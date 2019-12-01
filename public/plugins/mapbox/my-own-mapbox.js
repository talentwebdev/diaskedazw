
/**
    * this plugin is for mapbox 
*/

        (function ( $ ) {

        	/**
        		* Constructor
        	*/
        	function MapBox( el, options )
        	{
        		this.configRootElement(el);

        		if( options.hasOwnProperty("token") )
        			mapboxgl.accessToken = options["token"];

        		var style 		= "mapbox://styles/mapbox/streets-v11";
        		var center 		= [-77.0091, 38.8899];
        		var zoom 		= 13;
        		var geo_pos		= "top-left";
                var draggable	= true;

                
                // setting object
                var settings = {
                    lat_selector: '#lat',
                    long_selector: '#long',
                    onComplete: false,
                    starting_query: null
                };

                if( options )
                    $.extend( settings, options );
                console.log( "Mapbox::Init:", settings );

        		if( options.hasOwnProperty("style") )
        			style = options.style;
                if( options.hasOwnProperty("center") )
                {
                    if(parseInt(options.center[0]) != 0 || parseInt(options.center[1]) != 0 )
                        center = options.center;
                    console.log("center", center);
                }
        		if( options.hasOwnProperty("zoom") )
        			zoom = options.zoom;
        		if( options.hasOwnProperty("geo_pos") )
        			geo_pos = options.geo_pos;
        		if( options.hasOwnProperty("draggable") )
        			draggable = options.draggable;


                
                this.map        = new mapboxgl.Map({
                                        container: 'map-container',
                                        style: style,
                                        center: center,
                                        zoom: zoom
                                    });

                // config geocoder which is get coodinator from address
                this.geocoder   = new MapboxGeocoder({
                                        accessToken: mapboxgl.accessToken,
                                        query: "pyong yang"
                                    });

                this.map.addControl(this.geocoder, geo_pos);

                // config marker which marked current position.
                this.marker     = new mapboxgl.Marker({draggable: draggable})
                                  .setLngLat({lng: center[0], lat: center[1]})
                                  .addTo(this.map);

                this.lngLat     = {lng: center[0], lat: center[1]};

                 var parent_ = this;
                // add listenr when you click position.
                this.marker.on( 'dragend', function(){
                    console.log("onDragEnd", this);
                    var lngLat = parent_.marker.getLngLat();

                    var coordinates = parent_.el.find( "#coordinates" );
                    coordinates.css( "display", "block" );
                    coordinates.html( 'Longitude: ' + lngLat.lng + '<br />Latitude: ' + lngLat.lat );

                    parent_.lngLat = lngLat;
                    parent_.el.trigger( "position", lngLat );

                    if ($.isFunction(settings.onComplete))
                    {
                        settings.onComplete(lngLat);
                    }
                    else
                    {
                        if ($(settings.long_selector, window.parent.document).length)
                        {
                            $(settings.long_selector, window.parent.document).val(lngLat.lng);
                        }

                        if ($(settings.lat_selector, window.parent.document).length)
                        {
                            $(settings.lat_selector, window.parent.document).val(lngLat.lat);
                        }
                    }
                } );

                this.el.on( "position", function(){  } )

                // After the map style has loaded on the page, add a source layer and default
                // styling for a single point.
               
                this.map.on('load', function() {

                    parent_.map.addSource('single-point', {
                        "type": "geojson",
                        "data": {
                            "type": "FeatureCollection",
                            "features": []
                        }
                    });


                    parent_.map.addLayer({
                        "id": "point",
                        "source": "single-point",
                        "type": "circle",
                        "paint": {
                            "circle-radius": 10,
                            "circle-color": "#007cbf"
                        }
                    });

                     
                    // Listen for the `geocoder.input` event that is triggered when a user
                    // makes a selection and add a symbol that matches the result.
                    parent_.geocoder.on('result', function(ev) {
                        //parent_.map.getSource('single-point').setData(ev.result.geometry);
                        console.log("result", ev.result);
                        var styleSpec = ev.result;
                        parent_.marker
                          .setLngLat(styleSpec.center)
                          .addTo(parent_.map);

                        parent_.lngLat = {lng: styleSpec.center[0], lat: styleSpec.center[1]};
                        parent_.el.trigger( "position", parent_.lngLat );

                        var lngLat = parent_.lngLat;
                        if ($.isFunction(settings.onComplete))
                        {
                            settings.onComplete(lngLat);
                        }
                        else
                        {
                            if ($(settings.long_selector, window.parent.document).length)
                            {
                                $(settings.long_selector, window.parent.document).val(lngLat.lng);
                            }

                            if ($(settings.lat_selector, window.parent.document).length)
                            {
                                $(settings.lat_selector, window.parent.document).val(lngLat.lat);
                            }
                        }
                    });

                    // start querying
                    if(settings.starting_query)
                        parent_.geocoder.query(settings.starting_query);
                   
                });               
				


        	}

        	/**
        		* resize current map element
        	*/
        	MapBox.prototype.resize  = function(){
        		this.map.resize();
        	}


        	/**
        		* config root html element for mapbox.
        	*/
        	MapBox.prototype.configRootElement = function(el) {
        		// body...

        		this.el = el;

        		$( "<div></div>" ).addClass( "flex-child flex-child--grow bg-darken10 viewport-twothirds viewport-full-mm" ).attr( "id", "map-container" ).appendTo(this.el);
        		$( "<pre></pre>" ).addClass( "coordinates" ).attr( "id", "coordinates" ).appendTo( this.el );

        	}

            /**
                * get Position
            */
            MapBox.prototype.getCurrentPosition = function()
            {
                return this.lngLat;
            }


        	/**
        		* options: options for mapbox
        			* style 		: style of mapbox, ex)"mapbox://styles/mapbox/streets-v11"
        			* center 		: init center position of mapbox. ex)[-77.0091, 38.8899]
        			* zoom 			: zoom value ex) 13
        			* geo_pos		: Geocoder position of mpbox ex) "top-left"
        			* draggable		: define that the marker can be draggable. ex) true, false
        	*/

        	$.fn.my_own_mapbox = function( options ) {

                console.log(options);
                var map = new MapBox( $(this), options );
        		return map;
            }
        }( jQuery ));