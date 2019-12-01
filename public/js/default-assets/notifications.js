(function($){
    'use strict'

    function fetchNotifications()
    {
        $.get('/fetchnotifications')
            .done(items => {
                
                console.log("fetchNotifications", items);

                // add notification items to the element
                $("#notifications").notifications({ 
                    notifications: items,
                    clickListener: onClickNotification
                });
            });
    }

    function onClickNotification(notification)
    {
        // TODO: do some work when click notifications
        console.log(notification);
        if(notification.type == "upload_image" || notification.type == "upload_video" || notification.type == "upload_article")
        {
            $.get("setpartner", {partnerid: notification.sender_id, })
                .done(data => {
                    if(data == "success")
                    {
                        if(notification.type == "upload_image")
                        {
                            $("#notificationForm").attr("action", "partnerprofile.gallery");
                        }
                        else if(notification.type == "upload_video")
                        {
                            $("#notificationForm").attr("action", "partnerprofile.video")
                        }                        
                        else if(notification.type == "upload_article")
                        {
                            $("#notificationForm").attr("action", "partnerprofile.article")
                        }
                        $("#contentID").val(notification.content_id);
                        $("#notificationForm").submit();
                    }
                })
                .fail(err => {});
        }
        
    }

    fetchNotifications();
}(jQuery));