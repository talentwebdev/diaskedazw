
(function ( $ ) { 

    /**
     * Construction
     */
    function Rating( el, options )
    {   
        this.el         = el;
        this.settings   = {
                        onSelect: false,
                        stars: 5,
                        current_value: 0
                    };
        
        $.extend( this.settings, options );
        this.configRootElement( );

        this.el.on( "select-rating", function() {} );
    }

    /**
     * Config Root element.
     */
    Rating.prototype.configRootElement = function() {
        this.el.html( "" );

        for( var i = 0 ;  i < this.settings.stars ; i++ )
        {
            var button = $( "<span></span>" )
                            .attr( "type", "button" )
                            .attr( "data-attr", i+1 )
                            .attr( "id", "rating-star-" + (i+1) )
                            .addClass( "btnrating btn-lg" )
                            .html( "<i class='fa fa-star' aria-hidden='true'></i>" );
                            
            button.appendTo( this.el );
            
            var parent = this;
            button.on( 'click', function() {                
        
                var previous_value = parent.settings.current_value;
                var selected_value = $(this).attr("data-attr");

                parent.settings.current_value = selected_value;
                
                for (ix = 1; ix <= previous_value; ++ix) {
                    parent.el.find("#rating-star-"+ix).css( "color", "#000");
                    //parent.el.find("#rating-star-"+ix).toggleClass('btn-default');
                }

                for (i = 1; i <= selected_value; ++i) {
                    parent.el.find("#rating-star-"+i).css( "color", "#f3c612");
                    //parent.el.find("#rating-star-"+i).toggleClass('btn-default');
                }

                if($.isFunction( parent.settings.onSelect ))
                    parent.settings.onSelect( selected_value );
                parent.el.trigger( "select-rating", selected_value );
            } );
        }
    }

    /**
     * Set Current Value
     */
    Rating.prototype.setValue = function( val ) {

        this.settings.current_value = val;

        for( ix = 1; ix <= this.settings.stars ; ix++ ){
            this.el.find( "#rating-star-" + ix ).css( "color", "#000" );
        }

        for( i = 1 ; i <= this.settings.current_value ; i++ ){
            this.el.find( "#rating-star-" + i ).css( "color", "#fec612" );
        }
    }

    /**
     * get Current Value
     */
    Rating.prototype.getValue = function() {
        return this.settings.current_value;
    }

    /**
     * plugin for jquery
     */
    $.fn.my_rating = function( options ) {

        var rating = new Rating( $(this), options );
        return rating;
    }
}( jQuery ));