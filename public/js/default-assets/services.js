(function ($) {
    'use strict';

        var service_container = $( "#service-container").my_service_container( {
            onSelect : function( service ){
                $( "#modalAbandonedCart" ).modal() ;
                $( "#modalAbandonedCart" ).find( ".err-notice" ).text( "" );

                braintree.dropin.create({
                    authorization: token,
                    container: "#dropin-container"
                }, function (createErr, instance){
                    $("#preloader_dialog").css( 'display', 'none' );

                    $( "#buyservice" ).on( 'click', function() {
                        var service = service_container.getSelectedService();                                             

                        instance.requestPaymentMethod(function (err, payload){
                            
                            $.get( 'payment.process', 
                                    {payload: payload, packageid: service.id}
                            )
                            .done( function(response) {
                                console.log( response );
                                if(response.success)
                                {
                                    alert( "payment success" );
                                    $.post( 'payment.done', {"_token": csrf_token, packageid: service.id})
                                        .done(function( response ){
                                            location.href = 'packages';
                                        });
                                }
                                else{
                                    alert( "payment failed" );
                                }
                            })
                            .fail( function( err ){
                                console.log( err );
                            });
                        });
                    });
                })
            }
        } );

        $.ajax({
            type: "get",
            url: "fetchPackages",
            success: function (response) {
                
                service_container.addServices( response );
            }
        });
}( jQuery ));
