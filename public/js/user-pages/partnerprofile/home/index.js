
(function ($) {
    'use strict';

        // *********************************
        // :: 1.0 add Chat component
        // *********************************
        Echo.join( 'chat.' + partner.id )
                    .here((users) => {
                        console.log("Join Channel() success", users);
                    });
        // *********************************
        // :: 2.0 add Chat component
        // *********************************
        //$("#home-menu").addClass('active');

        // *********************************
        // :: 3.0 set mall top menu
        // *********************************
        $("#mall-top-menu").addClass("current-item");

        // *********************************
        // 4.0 announce 
        // *********************************
        function formatDate(dateString)
        {
            var date = new Date(dateString);

            var monthNames = [
                "January", "February", "March",
                "April", "May", "June", "July",
                "August", "September", "October",
                "November", "December"
            ];
            return monthNames[date.getMonth()] + " " + date.getDate() + "," + date.getFullYear() +
                    " " + date.getHours() + ":" + date.getMinutes();
        }
        function addAnnounceElement(announces)
        {
            announces.forEach(function(element){
                var html = "" + 
                    "<li class='list-group-item'>" + 
                        "<div class='announce-title'>" + element.title + " </div>" + 
                        "<div class='announce-content' style='color:#cccccc;'>" + element.content + "</div>" + 
                        "<div class='announce-date'>" + formatDate(element.date) + "</div>"+
                    "</li>";
                    
                $(html).appendTo("#announce-list");
            });
        }
        $.get('getannounce')
            .done(function(data){
                console.log("get announce success", data);

                addAnnounceElement(data);
            })
            .fail(function(err){
                console.log("get announce failed", err);
            });
        // *********************************
        // 5.0 visit this page
        // *********************************
        $.ajax('https://extreme-ip-lookup.com/json')
        .then(
            function success(response) {
                $.get("addvisit", {ip_address: response.query, partner_id: partner.id})
                    .then(res => {})
                    .fail(err => {});
            },
    
            function fail(data, status) {

                console.log('Request failed.  Returned status of',
                            status);
            }
        );
}( jQuery ));
