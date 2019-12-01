(function($){
    'use strict';

    function addMenu( parent_el, menulists )
    {
        menulists.forEach(element => {
            var el = $( "<li style='padding:10px;'></li>" );
            //var link = element.hasOwnProperty("link") ? element.link : "#";
            var link = '#';
            var name = element.hasOwnProperty('sub_component') && element.sub_component.length > 0
                        ? element.name + " >"  : element.name;
            el.append( "<a href='" + link + "'>" + name + "</a>");

            if(element.hasOwnProperty('partner'))
            {
                el.find('a').attr('id', element.partner);
                el.find('a').addClass('partner-menu');
            }

            if(element.hasOwnProperty('sub_component') &&
                element.sub_component.length > 0)
            {
                var ul = $( "<ul class='dropdown'></ul>" );

                if(element.hasOwnProperty('class'))
                {
                    ul.addClass(element.class);       
                }

                addMenu( ul, element.sub_component );
                ul.appendTo( el );
            }
            el.appendTo( parent_el );
        });
    }

    $('body').click((e)=>{
        if($(e.target).hasClass('partner-menu'))
        {
            var partnerid = $(e.target).attr('id');
             $.get( 'setpartner', { partnerid: partnerid })
                .done( (data) => {
                    console.log( 'set partner sucess', data );
                    location.href = 'partnerprofile.home';
                })
                .fail( (err) => {
                    console.log( 'set partner failed', err );
                });
        }
    });
    addMenu( $("#mall-submenu"), main_services );

    if ($.fn.classyNav) {
        $('#uzaNav').classyNav();

    }

    
    /**
     * Long Drop down menu.
     */
    var flag = 0;
    if(jQuery(window).width() >= 991)
    {
        $("#mall-submenu-container").css('background', 'transparent')
                                .css('box-shadow', "")
                                .css('width', jQuery(window).width() + "px")
                                .css('height', jQuery(window).height() * 0.8 + "px");
    }
    
    $("#mall-submenu > li").hover(function(e){
        var totalHeight = $("#mall-submenu-container").height();
        var itemHeight = $(this).height(), top = e.clientY;
        var containerHeight = $("#mall-submenu").height();

        var ul = $(this).children('ul').first();
        if(ul.height() + top > totalHeight)
        {
            ul.addClass('push-bottom');
        }
        else{
            ul.removeClass('push-bottom');
        }

        
        if($(this).next().length > 0 && totalHeight < top + itemHeight * 2 && flag == 0 )
        {
            var top = parseInt($("#mall-submenu").css('top'));

            //$("#mall-submenu").css('top', top - itemHeight + "px");      
            $( "#mall-submenu" ).animate({
                top: ((top - itemHeight) >= (totalHeight - containerHeight) ? (top - itemHeight) : 0) + "px"
              }, 100, function() {
                flag = 0;     
              });      
           flag = 1;
        }
        else if(top < itemHeight * 3 && flag == 0)
        {
            var top = parseInt($("#mall-submenu").css('top'));

            //$("#mall-submenu").css('top', top + itemHeight + "px");
            $( "#mall-submenu" ).animate({
                top: (top + itemHeight) > 0 ? 0 : (top + itemHeight) + "px"
              }, 100, function() {
                
              });   
            flag = 1;
            window.setTimeout(function(){ 
                flag = 0;
            }, 1000);
        }    
    });
}(jQuery))