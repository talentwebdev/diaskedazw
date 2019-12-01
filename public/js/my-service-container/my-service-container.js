/**
    * this plugin is for service container
*/

(function ( $ ) {

    /**
     *  constructor
     * @param {*} el    jquery element
     * @param {*} options   options for this plugin
     */
    function ServiceContainer( el, options )
    {
        this.el = el;
        this.settings = {
            asset_url: $("#asset-url").attr("url"),
            services: null,
            onSelect: null
        };
        this.serviceArray = new Array();
        this.selectedService = null;

        $.extend( this.settings, options );
        
        if( this.settings.service != null )
            this.addServices( this.settings.services );

        this.el.on( "service-select", function() {} );
    }

    /**
     * add Service element into this plugin
     * @param service   service object
     */
    ServiceContainer.prototype.addServiceElement = function( service ) {
        var html = "" + 
            "<div class='col-12 col-sm-6 col-lg-2'>" +
                "<div class='package-item single-service-area mb-80'>" +
                    "<div>" +
                        "<img src='"+this.settings.asset_url + "/" + service.img_url+"' style='width:80%;' />" +
                    "</div>" +
                    "<h5 id='title' style='margin-top:10px;'></h5>" +
                    "<p id='cost'></p>" +
                    "<button class='btn btn-primary' style='border-radius:50%;'><i class='fas fa-shopping-cart'></i> Buy</button>" + 
                "</div>" +
            "</div>";
        
        var el = $( html );

        el.find( "#title" ).text( service.name );
        el.find( "#cost" ).text( service.cost + "$" );

        el.appendTo( this.el );

        var parent = this;
        el.on( 'click', function() {

            if( $.isFunction( parent.settings.onSelect ) )
                parent.settings.onSelect( service );

            parent.selectedService = service;
            parent.el.trigger( "service-select", service );
            
        } );
    }

    /**
     * get user selected service
     */
    ServiceContainer.prototype.getSelectedService = function() {
        return this.selectedService;
    }

    /**
     * add services into this plugin
     */
    ServiceContainer.prototype.addServices = function( services ){
        if( $.isArray( services ) )
        {
            var parent = this;
            services.forEach( function( service ){
                parent.addServiceElement( service );
                parent.serviceArray.push( service );
            } );
        }
        else{
            this.addServiceElement( services );
            this.serviceArray.push( services );
        }
    }

    /**
     * clear services
     */
    ServiceContainer.prototype.clear = function( ) {
        this.serviceArray = new Array();
        this.el.html( "" );
    }

    /**
     * jquery plugin
     */
    $.fn.my_service_container = function( options ) {
        var service_container = new ServiceContainer( $(this), options );
        return service_container;
    }

} (jQuery));