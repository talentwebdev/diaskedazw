(function($){
    'use strict';

    var selected_item;

    var max_sub_level = 5;
    function addSubComponent(item, width, services, level, component)
    {
        var main_size = width, sub_size = width * 0.6;
        
        console.log( "onclickitem", services );
        if(services.hasOwnProperty('description'))
            $("#circle-component").trigger('circle-select', services);
        
        if(services.hasOwnProperty('partner'))
        {
            $.get( 'setpartner', { _token: csrf_token, partnerid: services.partner })
                    .done( (data) => {
                        console.log( 'set partner sucess', data );
                        location.href = 'partnerprofile.home';
                    })
                    .fail( (err) => {
                        console.log( 'set partner failed', err );
                    });
            return;
        }
        component.setCurrentItem(item);

        if(!services.hasOwnProperty('sub_component'))
            return;
        console.log( "sub category", services.sub_component.length );      
        
        if(services.hasOwnProperty('adv_img'))
        {
            $( '#adv-service' )
                        .css('width', width * 0.6 + "px")
                        .css( 'display', 'block' )
                        .addClass( 'scaleup' );
            $( "#adv-service img" ).attr( "src", services.adv_img );
            $( "#adv-service" ).one('webkitAnimationEnd oanimationend msAnimationEnd animationend',
                function(e) {

                // code to execute after animation ends

                $(this).removeClass('scaleup');
            });
        }
        else{
            $("#adv-service")
                    .css('display', 'none');
        }

        if( services.sub_component.length > 0)
        {
            $( "#sub-component-"+level )
                .css( 'margin-top', (main_size - sub_size) / 2 - main_size+ "px" )
                .css( 'display', 'block' );

            /*
            var sub_component = $( "#sub-component" ).circle_component( {
                items: main_services[item].sub_component,
                size: sub_size,
                onClickItem: (i, item) =>
                {
                    if( item.hasOwnProperty('partner') )
                    {
                        $.post( 'setpartner', { _token: csrf_token, partnerid: item.partner })
                            .done( (data) => {
                                console.log( 'set partner sucess', data );
                                location.href = 'partnerprofile';
                            })
                            .fail( (err) => {
                                console.log( 'set partner failed', err );
                            });
                    }
                }
            });
            */

           var sub_component = $( "#sub-component-" + level ).circle_component( {
                items: services.sub_component,
                size: sub_size,
                onClickItem: (item) =>
                {
                    removeAllSubComponents(level);
                    addSubComponent(item.index, item.size, item.item, level + 1, sub_component);
                }
            });

        }
        else
        {
            removeAllSubComponents(level);
        }
    }

    function removeAllSubComponents(level)
    {
        for(var i = level + 1 ; i <= max_sub_level ; i++)
            $("#sub-component-"+i).css('display', 'none');
    }
    function addComponent(width)
    {   
        var main_size =  width;/*width / ( 1 + 2 / main_services.length);*/
        var circle_mall_section_height;
        $("#service-area").css( 'height', main_size + "px" );
        if(jQuery(window).width() > 768)
        {
            $(".circle-mall-section").css('height', (main_size + 200) / 2 + 'px');            
        }
        else
        {
            $("#showAllSwitch").css('display', 'none');
        }
        $(".circle-component-container").css('width', main_size + "px");
        $(".circle-component-container").css('height', main_size + "px");
        /*
        $("#adv-service").css('margin-left', "-"+main_size/main_services.length+"px")
                        .css('margin-top', main_size/main_services.length+"px");
                        */
        var sub_size = main_size * 0.6;
        removeAllSubComponents(0);
        /*
                                .css('margin-left', "-"+main_size/main_services.length+"px")
                                .css('margin-top', main_size/main_services.length+"px");*/
                                
        var component = $( "#circle-component" ).circle_component( {
                            items: main_services,
                            size: main_size,
                            level: 0,
                            onClickItem: function( item_ ){
                                removeAllSubComponents(0);
                              addSubComponent(item_.index, main_size, item_.item, 1, component);  
                            }
                        });

    }

    $("#link-btn").click(function(){
        if(selected_item.link.type == 1)
            location.href = selected_item.link.href;
        else if(selected_item.link.type == 2)
        {
            $.get( 'setpartner', { _token: csrf_token, partnerid: selected_item.link.href })
                .done( (data) => {
                    console.log( 'set partner sucess', data );
                    location.href = 'partnerprofile.home';
                })
                .fail( (err) => {
                    console.log( 'set partner failed', err );
                });
        }
    });
    
    $(document).ready(()=>{
        $("#circle-component").on('circle-select', (e, item)=>{
            $("#service-latest-article .section-title").text(item.name);
            $("#service-latest-article #latest-article-text").text(item.description);
            if(item.hasOwnProperty("link"))
                $("#link-btn").css("display", "block");
            else
                $("#link-btn").css("display", "none");
            selected_item = item;
        });
        $(window).resize(()=>{
            console.log($( ".circle-component-container").css('width'));
            var width = parseInt($( ".circle-component-container").css('width'));
            addComponent(width);
        });
        var width = parseInt($( ".circle-component-container").css('width'));
            addComponent(width);
    
        
    });
    
    $( "#showAllSwitch" ).change( function( e ) {
        if($(this).hasClass('on'))
            $(this).removeClass('on');
        else
            $(this).addClass('on');

        if($(this).hasClass('on'))
        {
            var height = parseInt($( ".circle-mall-section" ).css('height')) * 2;
            $( ".circle-mall-section" ).animate( {"height": height + "px"}, 500 );
        }
        else
        {
            var height = parseInt($( ".circle-mall-section" ).css('height')) / 2;
            $( ".circle-mall-section" ).animate( {"height": height + "px"}, 500 );
        }
    });
}(jQuery));