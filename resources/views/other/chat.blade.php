
<div class='chatapp'>
</div>

@auth
<a id="chatComponent_link" style="position: fixed; z-index: 2147483647;"><i class="fas fa-comments" <="" i=""></i></a>
@endauth


@push('scripts')
<script src="{{ asset('js/partner-pages/chats/chat-component.js') }}"></script>    
<script>
var privateChannel = "chat." + partner.id + "." + user.id;
var chatComponent = new ChatComponent({
                                    channel: privateChannel,
                                    me: user,
                                    you: partner
                                });
$( '#chatComponent_link' ).on( 'click', (e) => {
    
    if(chatComponent.el == null)
    {
        chatComponent.openChat();
        chatComponent.el.appendTo( '.chatapp' );
        chatComponent.el.css( 'right', '120px');
        chatComponent.el.ready(() => {
            chatComponent.addMessageElement();
        });
    }
    else {
        chatComponent.openChat();
    }
    
    
});
</script>
@endpush


@push('styles')
<link href='{{ asset("css/chat-component/chat-component.css") }}' rel='stylesheet'>
@endpush



