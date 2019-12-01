
(function($){
    var chatComponents = new Array();
    var channel = "chat." + partner.id;
    var currentChatComponent = null;

    var chatList = new ListComponent( $("#userlist"), {
            addItemElement: addUserElement,
            onClick: function( user ){
                if(currentChatComponent != null)
                {
                    currentChatComponent.closeChat();
                }

                currentChatComponent = chatComponents[user.id];
                currentChatComponent.openChat();
                currentChatComponent.el.appendTo( ".chatapp" );
                currentChatComponent.el.css({'right': '770px'});
                currentChatComponent.el.ready(() => {
                    currentChatComponent.addMessageElement();
                });
            }
        });
    
    function addUserElement( user )
    {
        var html = "" + 
                "<li class='list-group-item' id='"+user.id+"'>" +
                    "<div class='row'>" +
                        "<div class='img'>" +
                            "<img src='" + asset_url + "/" + user.img_url + "'  />" +
                        "</div>" +
                        "<div class='info'>" +
                            "<span>" + user.name + "</span></br>" +
                            "<span>" + user.email + "</span>" +
                        "</div>" +
                    "</div>" +
                "</li>";
        
        return html;
    }

    function addChatComponent( user )
    {
        var chatComponent = new ChatComponent( {
            me: partner,
            you: user,
            join: function(){
            },
            leave: function(){
            }                             
        });

        chatComponents[user.id] = chatComponent;
        chatList.addItems(user);
    }

    Echo.join(channel)
        .here( (users) => {
            /*
            console.log( "Joined(" + channel + ")", users);

            users.forEach(user => {
                if(user.id != partner.id)
                    addChatComponent(user);
            });
            */

        })
        .joining((user) => {
            console.log( 'joing(' + channel +') new user', user );

            //addChatComponent(user);           
            
        })
        .leaving((user) => {
            console.log( 'leaving(' + channel +') user', user );

            $( "#userlist" ).find( "#" + user.id ).remove();
        });
    $.get('fetchconnectedusers')   
        .then(data => {
            console.log("fetchconnectedusers success", data);
            data.forEach(user => {
                if(user.id != partner.id)
                    addChatComponent(user);
            });
        })
        .fail(err => {
            console.log("fetchconnectedusers failed", err);
        });
}(jQuery));