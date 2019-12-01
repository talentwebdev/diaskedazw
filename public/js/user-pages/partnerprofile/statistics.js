(function($){
    'use-strict';

    // ***************************
    // fetch visits on partner profile
    // ***************************
    function fetchVisitsNum()
    {
        $.get( "fetchaddpointsnotifications", {sender: 12})
        .then( function( data ) {
            console.log( "fetchaddpointsnotifications succeed", data );
            $('#num_visits').text(data.length);
            $('#num_totalearnings').text(parseFloat(data.length* 0.01).toFixed(2));
        })
        .fail( function( err ) {
            console.log( "fetchaddpointsnotifications failed", err );
        });
    }

    fetchVisitsNum();
}(jQuery));