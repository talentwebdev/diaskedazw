(function($){
    'use strict';

    /**
     * 
     * @param {*} el 
     * @param {*} settings 
     */
    function NotificationElement(el, settings)
    {
        this.el = el;
        this.settings = {
            notifications: [],
            clickListener: null, 
        };

        $.extend(this.settings, settings);

        // add all notification element 
        var parent = this;

        this.settings.notifications.forEach(item => {
            parent.addNewNotificationElement(item);    
        });

        return this;
    }

    /**
     * 
     * @param {*} notification : notification element
     */
    NotificationElement.prototype.addNewNotificationElement = function(notification)
    {
        var typeIcon = "";

        if(notification.type == "upload_video")
            typeIcon ='<i class="fas fa-video notification-type-icon" ></i>';
        else if(notification.type == "upload_article")
            typeIcon = '<i class="far fa-newspaper notification-type-icon"></i>';
        else if(notification.type == "upload_image")
            typeIcon = '<i class="fas fa-images notification-type-icon"></i>';
        else if(notification.type == "appointment_deny")
            typeIcon = '<i class="fas fa-times-circle notification-type-icon"></i>';
        else if(notification.type == "appointment_accept")
            typeIcon = '<i class="fas fa-check-circle notification-type-icon"></i>';
        else if(notification.type == 'message')
            typeIcon = '<i class="fas fa-comment notification-type-icon"></i>';
        else if(notification.type == "friend")
            typeIcon = '<i class="fas fa-users notification-type-icon"></i>';
        
        var html = "" + 
                "<li>" +
                    "<a>" +
                        "<div class='row notification-item'>" + 
                            "<div class='notification-sender'> " + 
                                "<div class='image-container'> " +
                                    "<img class='sender-image' src='" + asset_url + "/" + notification.user.img_url + "'>" +
                                    typeIcon +                             
                                "</div>" + 
                            "</div>" +
                            "<div class='notification-content-container'>" +
                                "<div class='notification-title'>" + notification.title + "</div>" +
                                "<div class='content'>" + notification.content + "</div>" +
                            "</div>" +
                        "</div>" +
                    "</a>" +
                "</li>";
        
        var newEL = $(html);
        var parent = this;

        newEL.appendTo(this.el);
        newEL.click(function(event){
            // if setting include click listener, trigger click notification listener
            if(parent.settings.clickListener != null)
                parent.settings.clickListener( notification );
        });
    }

    /**
     * 
     * @param {*} settings 
     */
    $.fn.notifications = function(settings){

        return new NotificationElement($(this), settings);
    };
}(jQuery));