
/**
    * this plugin is for video player
*/

(function ( $ ) {
    /**
     * constructor
     * @param {*} el
     * @param {*} options
     */
    function CircleComponent( el, options )
    {
        this.el                 = el;
        this.settings           = {
                                        items: new Array(),
                                        size: 400,
                                        onClickItem: null,
                                        level: 1
                                    };
        this.currentItem        = null;
        this.currentRotate      = 30;

        // extends from options.
        $.extend( this.settings, options );

        this.addComponents();
        this.setStyleElement();
        this.deployChildElements();
    }

    /**
     * set style for root element
     */
    CircleComponent.prototype.setStyleElement = function() {

        // set size of circle-container
        this.el.css( 'width', this.settings.size + "px" ).css( "height", this.settings.size + "px" );

    }

    /**
     * add  components
     */
    CircleComponent.prototype.addComponents = function() {
        if( this.settings.items.length == 0 )
            return;

        this.el.children( '.circle-item' ).remove();

        var parent = this;
        this.settings.items.forEach( function( item ) {
            parent.addComponentHtml( item );
        });
    }

    /**
     * config html element
     */
    CircleComponent.prototype.addComponentHtml = function( item ) {

        var html =  "<a class='circle-item circle-border'>" +
                        "<div class='not-active-show'>" +
                            "<img src='' width='100%' style='border-radius: 50%; margin-left:0px; margin-top:0px;'/>" +
                        "</div>" +
                        "<div class='active-show circle-border active-show-display'>" +
                            "<img src='' width='100%' style='border-radius: 50%; margin-left:0px; margin-top: 0px;' />" +
                        "</div>" +
                        "<div style='width: 100%; height:100%;' class='circle-border border-thin border-dashed over-lay'></div>" +
                    "</a>"

        var el = $( html );
        el.find( "img" ).attr( "src", item.img_url );
        el.find( "#name" ).text( item.name );
        /*
        if( item.hasOwnProperty( 'link' ) )
            el.attr( 'href', item.link );
            */

        el.appendTo( this.el );
    }

    /**
     * deploy child elements in round
     */
    CircleComponent.prototype.deployChildElements = function() {

        this.childItems = this.el.children( ".circle-item" );
        var angle = Math.PI * 2.0 / this.childItems.length;
        var itemSize = Math.min( this.settings.size / 4, this.settings.size / (this.childItems.length) * 2);

        for( var i = 0 ; i < this.childItems.length ; i++ )
        {
            var pos = {
                x : ( 1 + Math.cos(angle * i - Math.PI / 2) ) * this.settings.size / 2 - itemSize / 2,
                y : ( 1 + Math.sin(angle * i - Math.PI / 2) ) * this.settings.size / 2 - itemSize / 2
            };

            $( this.childItems[i] ).css( "position", "absolute" );
            $( this.childItems[i] ).css( "left", pos.x + "px" ).css( "top", pos.y + "px" );
            $( this.childItems[i] ).css( "width", itemSize + "px" ).css( "height", itemSize + "px" );

            this.addClickListener( $( this.childItems[i] ), i, this.settings.items[i] ) ;
        }

        this.currentItem = 0;

        //this.el.addClass( "scaleup" );
    }

    CircleComponent.prototype.addClickListener = function( el, item, _objItem )
    {
        var parent = this;
        el.on( 'click', function( e ) {

            if( jQuery.isFunction( parent.settings.onClickItem ) )
                    parent.settings.onClickItem( {index: item, item: _objItem, size:parent.settings.size, level:parent.settings.level} );
            //parent.setCurrentItem( item );

        })
    }

    /**
     * set current item
     */
    CircleComponent.prototype.setCurrentItem = function( item ) {

        var angle = 360 / this.childItems.length * ( - item);

        this.currentItem = item;

        this.el.animate({transform: '+=rotate(30deg)'}, 2000);
        console.log(this.currentRotate % 360);
        //this.el.children( '.circle-item' ).animate( {transform: 'rotate('+this.currentRotate+'deg)'}, 1);
        this.el.children( '.circle-item' ).css("transform", "rotate(-"+this.currentRotate+"deg)");
        this.el.children( '.circle-container' ).animate( {transform: '+=rotate(-'+this.currentRotate+'deg)'}, 2000);
        /*
        if( this.el.children( '.circle-container' ).first().css( 'display' ) != 'none')
            this.currentRotate = 31;
        else
            this.currentRotate += 31;
            */
        this.currentRotate = (this.currentRotate + 30);

        this.el.find( ".current-item" ).removeClass( 'current-item' );
        $( '.activated' ).removeClass( 'activated' );
        $( this.childItems[item] ).addClass( "activated" );
    }

    /**
     * entry point of this plugin
     */
    $.fn.circle_component = function( options ) {

        var circle_component = new CircleComponent( $(this), options );
        return circle_component;
    }


}(jQuery));
