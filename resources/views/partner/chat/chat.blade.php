
<div class='chatapp'>
    <div class="chat-component" id='chat-list' style='display:none; right: 410px;'>
        <div class="panel panel-default">
            <div class="row panel-heading top-bar" style="position:relative; background:url({{ asset('img/misc/user_profile_bg.jpg') }});">
                <div>                
                    <h4 style='font-weight:400;'><i class="fas fa-users"></i> Current Users</h4>
                </div>
                <div class="close" style="position: absolute; right: 20px;">
                    <i class="fas fa-times-circle close-chat"></i>
                </div>
            </div>
            <div class="panel-body msg_container_base">
                <div class="row msg_container base_sent">
                    <ul class='list-group' id='userlist' style='width:100%;'>
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

@auth
<a id="chatComponent_link" style="position: fixed; z-index: 2147483647; bottom: 110px;"><i class="fas fa-comments" <="" i=""></i></a>
@endauth

@push('scripts')
<script src="{{ asset('js/partner-pages/common/listcommon.js') }}"></script>
<script src="{{ asset('js/partner-pages/chats/chat-component.js') }}"></script>    
<script src="{{ asset('js/partner-pages/chats/chat-list.js') }}"></script>
<script>
$( "#chatComponent_link" ).on( "click", (e) => {
    $( '#chat-list' ).css( 'display', 'block' );
    if(!$("#chat-list").hasClass('bounceInUp'))
        $("#chat-list").removeClass('bounceOutDown').addClass( 'animated bounceInUp');

});
$( "#chat-list .close" ).on( 'click', (e) => {
    $( "#chat-list" ).removeClass('bounceInUp').addClass('bounceOutDown');
});
</script>
@endpush

@push('external-styles')
<link href='{{ asset("css/chat-component/chat-component.css") }}' rel='stylesheet'>
@endpush
