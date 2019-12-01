
function ListComponent( el, options )
{
    this.el = el;
    this.settings = {
        onClick: null,
        addItemElement: null
    };

    $.extend( this.settings, options );
}

ListComponent.prototype.addItems = function( videos ){
    var parent = this;
    if($.isArray(videos))
    {
        videos.forEach(element => {
            var html = parent.settings.addItemElement( element );

            var newEl = $(html);
            newEl.appendTo( parent.el );     
            newEl.click(function() {
                if($.isFunction(parent.settings.onClick))
                    parent.settings.onClick( element, $(this) );
            });
        });
    }
    else if(videos != ""){
        var html = parent.settings.addItemElement( videos );

        var newEl = $(html);
        newEl.appendTo( parent.el );     
        newEl.click(function() {
            if($.isFunction(parent.settings.onClick))
                parent.settings.onClick( videos, $(this) );
        });
    }
    
}    
