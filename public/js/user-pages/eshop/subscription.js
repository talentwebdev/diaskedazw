
(function($){
    'use strict';

    function dealWithSubscription()
    {
        var subscribe = function(type){
            $.post("subscribe", {_token: csrf_token, type: type})
                .done(data => {
                    if(data == "failed")
                    {
                        $("#modal-with-pointserror #error-message").text("you don't have enough points");
                        return;
                    }
                    alert("success");
                    location.href = "subscription";
                })
                .fail(err => {});
        }

        $("#daySubBtn").click(e => {
            subscribe(1);
        });

        $("#monthSubBtn").click(e => {
            subscribe(2);
        });

        $("#yearSubBtn").click(e => {
            subscribe(3);
        });
    }

    dealWithSubscription();
}(jQuery));