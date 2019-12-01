
    function ChatComponent( options )
    {
        this.el             = null;
        this.settings       = {
                                me: null,
                                you: null,
                                join: null,
                                leave: null
                            };
        this.messages       = new Array();
        this.channel        = null;
        this.isOpen         = false;
        this.isActive       = false;
        this.lastMessage    = null;
        this.timer          = null;

        $.extend( this.settings, options );
        
        if(this.settings.me.id == partner.id)
            this.channel = "chat." + this.settings.me.id + "." + this.settings.you.id;
        else if(this.settings.you.id == partner.id)
            this.channel = "chat." + this.settings.you.id + "." + this.settings.me.id;

        if(this.channel != null)
        {
            var parent = this;
            Echo.join( this.channel )
            //Echo.join("Channel.10")
                .here((users) => {
                    console.log( "Join channel:" + parent.channel + " success", users);

                    users.forEach(user => {
                        if(user.id == parent.settings.you.id)                      
                            parent.isActive = true;
                    });
                    parent.activeUser();
                })
                .joining((user)=>{
                    console.log("join channel:" + parent.channel + " user", user);

                    if($.isFunction(parent.settings.join ))
                        parent.settings.join( parent );

                    if(user.id == parent.settings.you.id)
                        parent.isActive = true;
                    
                    parent.activeUser();
                })
                .leaving((user)=>{
                    console.log("leave channel:" + parent.channel + " user", user);

                    if($.isFunction(parent.settings.leave))
                        parent.settings.leave( parent );

                    if(user.id == parent.settings.you.id)
                        parent.isActive = false;

                    parent.activeUser();
                })
                .listen('MessageSendEvent', (message) => {
                    console.log(parent.channel + " Message received:", message);

                    if(message.message.sender_id == parent.settings.me.id)
                        parent.insertChat('me', message.message);
                    else if(message.message.sender_id == parent.settings.you.id)
                    {
                        parent.insertChat('you', message.message);
                        parent.lastMessage = message.message;
                        parent.currentLook(message.message);
                    }
                    parent.messages.push( message.message );

                    if(parent.el != null && parent.el.find('.chat-input').is(":focus"))
                        parent.lookedMessage();
                })
                .listen('LookedMessageEvent', (message) =>{
                    console.log("LookedMessageEvent Received", message);

                    parent.currentLook( message );
                })
                .listenForWhisper('typing', (e) => {
                    console.log( 'whisper typing received');
                    if(parent.timer != null)
                        clearTimeout(parent.timer);
                    
                    parent.timer = setTimeout(() => {
                        if(parent.el != null)
                            parent.el.find('.lds-ellipsis').css('display', 'none');    
                    }, 1000);
                    if(parent.el != null)
                        parent.el.find('.lds-ellipsis').css('display', 'block');
                });   
            
            // fetch message from database.
            $.get( 'fetchmessages', {channel: parent.channel})
                .done((data) => {
                    console.log( 'fetchmessages success', data );

                    for(var i = data.length - 1 ; i >= 0 ; i--)
                    {
                        
                        parent.messages.push( data[i] );
                    }

                })
                .fail((err) => {
                    console.log( 'fetchmessages failed', err );
                });
        }
    }

    ChatComponent.prototype.currentLook = function(message){
        if(this.el == null)
            return;
        if(message.hasOwnProperty('created_at'))
        {
            var parent = this;
            this.el.find( '#'+message.id ).ready( (e) => {
                //parent.el.find('#currentuser').insertAfter($(this));
                parent.el.find(".msg_container_base").append(parent.el.find("#currentuser"));
            })
            
        }
        for(var i = this.messages.length-1 ; i >= 0 ; i--)
            if(this.messages[i].id == message.id)
            {
                console.log( 'find message', this.messages[i]);
                this.el.find( '#currentuser' ).insertAfter( this.el.find( '#'+message.id ) );
                break;
            }
    }

    ChatComponent.prototype.activeUser = function(){
        if(this.isActive == true && this.el != null)
            this.el.find('.img-responsive').addClass('active');
        else if(this.isActive == false && this.el != null)
            this.el.find('.img-responsive').removeClass('active');
    }
    function formatAMPM(date) {
        var hours = date.getHours();
        var minutes = date.getMinutes();
        var ampm = hours >= 12 ? 'PM' : 'AM';
        hours = hours % 12;
        hours = hours ? hours : 12; // the hour '0' should be '12'
        minutes = minutes < 10 ? '0'+minutes : minutes;
        var strTime = hours + ':' + minutes + ' ' + ampm;
        return strTime;
    }   

    ChatComponent.prototype.closeChat = function()
    {
        if(this.el != null)
            this.el.remove();
        this.el = null;
        this.isOpen = false;
    }

    ChatComponent.prototype.addMessageElement = function()
    {
        for(var i = 0 ; i < this.messages.length ; i++)
        {
            if(this.messages[i].sender_id == this.settings.me.id)
            {
                if(this.el != null)
                    this.insertChat('me', this.messages[i], this.messages[i].looked);
                //this.currentLook({id: this.messages[i].id});
            }
            else if(this.messages[i].sender_id == this.settings.you.id)
            {
                if(this.el != null)
                this.insertChat('you', this.messages[i], true);
                this.lastMessage = this.messages[i];
            }
        }
    }

    ChatComponent.prototype.openChat = function()
    {
        if(this.isOpen == false)
        {
            var parent = this;

            this.makeNewComponent();         
            this.isOpen = true;
        }        
        else if(this.isOpen == true)
        {
            if(this.el.hasClass('bounceOutDown'))
                this.el.removeClass('bounceOutDown').addClass('bounceInUp');
        }
    }

    ChatComponent.prototype.makeNewComponent = function()
    {
        var html = "" + 
            '<div class="chat-component animated bounceInUp" id="' + this.channel + '">' + 
                '<div class="panel panel-default">' +
                    '<div class="row panel-heading top-bar" style="position:relative; background:url(' + asset_url + "/" + 'img/misc/user_profile_bg.jpg);" >' + 
                        '<div>' + 
                            '<img src="' + asset_url + "/" + this.settings.you.img_url + '" style="width:40px; height:40px; border-radius:50%;" class=" img-responsive '+ (this.isActive ? "active" : "") +' ">' + 
                        '</div>' + 
                        '<div class="col-md-5 col-xs-8">' + 
                            '<div>' + this.settings.you.name + '</div>' + 
                            '<div>' + this.settings.you.email + '</div>' +
                        '</div>' +
                        '<div class="" style="position: absolute; right: 20px;">' + 
                            '<i class="fas fa-times-circle close-chat"></i>' + 
                        '</div>' +
                    '</div>' + 
                    '<div class="panel-body msg_container_base">' +
                    "<div id='currentuser' style='display:flex;'>" + 
                        '<img src="' + asset_url + "/" + this.settings.you.img_url + '" style="width:20px; height:20px; border-radius:50%;" >' + 
                        '<div class="lds-ellipsis" style="display:none;"><div></div><div></div><div></div><div></div></div>' +
                    "</div>" +
                    ' </div>' + 
                    '<div class="panel-footer" style="position:relative;">' + 
                        "<div class='row chat-input-container' style='width:100%;' >" +
                            "<textarea class='chat-input' placeholder='Type here ...'></textarea>" +
                        "</div>" +
                        '<i class="fas fa-share chat-text-share"></i>' +
                    "</div>" +
                "</div>" +
            "</div>";

        this.el = $(html);
        var parent = this;
        this.el.find('.close-chat').on( 'click', (e) => {
            parent.el.removeClass('bounceInUp').removeClass('animated').addClass('animated').addClass('bounceOutDown');
        });

        this.el.find('.chat-input').focus((e)=>{
            parent.lookedMessage();
        });
        this.el.find('.chat-text-share').click((e)=>{
            var text = parent.el.find('.chat-input').val();
            if (text !== ""){      
                // payment for chat
                if(parent.settings.me.id != parent.id)
                {
                    parent.sendMessage(0);
                }                
            }
        });
        this.el.find(".chat-input").on("keydown", function(e){
            if (e.which == 13){
                e.preventDefault();
                parent.el.find('.chat-text-share').click();
            }

            // whisper to partner I am is typing.
            Echo.join(parent.channel)
                .whisper('typing', {});
        });
        
    }

    ChatComponent.prototype.sendMessage = function(payment)
    {
        var parent = this;
        $.post( 'sendmessage', {
            _token: csrf_token,
            channel: this.channel,
            message: this.el.find('.chat-input').val(),
            payment: payment
        })
        .done( (data) => {
            if(data == "failed")
            {
                // not activated
                parent.partner = partner;
                $("#modalactivechat").trigger('chat-activate', parent);
                return ;
            }
            this.el.find('.chat-input').val('');
            console.log( 'sendmessage success', data );
        })
        .fail( (err) => {
            console.log( 'sendmessage failed', err );
        });
        
    }
    ChatComponent.prototype.lookedMessage = function()
    {
        if(this.lastMessage != null && this.lastMessage.hasOwnProperty('looked') && !this.lastMessage.looked )
        {
            this.lastMessage.looked = true;
            $.post( 'message.looked', { _token: csrf_token, id: this.lastMessage.id })
                .done( (data) => {
                    console.log( 'message.looked success', data );
                })
                .fail( (err) => {
                    console.log( 'message.looked failed', err );
                } );
        }
    }
    ChatComponent.prototype.insertChat = function(who, message, looked){

        var parent = this;

        var control = "";
        
        if (who == "me"){
            control =   "" +
                        '<div class="row msg_container base_sent" id="'+message.id +'">' +
                            '<div class="col-md-10 col-xs-10 ">' +
                                '<div class="messages me msg_sent">' +
                                    '<p>' + message.message + '</p>' +
                                    '<time datetime="2009-11-13T20:00">' + message.created_at + '</time>' + 
                                '</div>' + 
                            '</div>' +                        
                        '</div>';                   
        }else{
            control = "" + 
                        '<div class="row msg_container base_sent" id="'+message.id+'">' + 
                            '<div class="col-md-2 col-xs-2 avatar">' + 
                                '<img src="' + asset_url + "/" + this.settings.you.img_url + '"">' + 
                            '</div>' + 
                            '<div class="col-md-10 col-xs-10 ">' + 
                                "<div class='chat-sender'>" + this.settings.you.name + "</div>" + 
                                '<div class="messages you msg_sent">' + 
                                    '<p>' + message.message + '</p>' + 
                                    '<time datetime="2009-11-13T20:00">' + message.created_at + '</time>' +
                                '</div>' +
                            '</div>' +                         
                        '</div>';
        }

        if(parent.el != null)           
        {                   
            parent.el.find(".msg_container_base")
                    .append(control);

            if(looked == true)
            {
                parent.el.find(".msg_container_base").append(parent.el.find('#currentuser').clone())
                parent.el.find('#currentuser').remove();
            }
            
            parent.el.find(".msg_container_base").scrollTop(parent.el.find(".msg_container_base").prop('scrollHeight'));
            
        }
        
    }

    ChatComponent.prototype.resetChat = function()
    {
        this.messages = new Array();
        this.el.find( 'ul' ).empty();
    }