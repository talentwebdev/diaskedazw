
<!-- Modal: modalAbandonedCart-->
<div class="modal fade right " id="modalactivechat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog  modal-notify modal-danger" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'><i style='color:#FFF;'class="fas fa-exclamation"></i> Ειδοποίηση
                </p>
        
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
    
        <!--Body-->
            <div class="modal-body">
    
                  
                <div class="row">     
                    Η υπηρεσία αυτή εξαργυρώνεται με 100 βαθμούς Ellin
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" id='button-ok' class="btn btn-outline-primary waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>ΣΥΝΕΧΕΙΑ</button>
                <button type="button" id='button-cancel' class="btn btn-outline-danger waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>ΟΧΙ ΤΩΡΑ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Modal: modalAbandonedCart-->

@push('scripts')
<script>
    var chat_component;
    $("#modalactivechat").on("chat-activate", function(e, component){
        chat_component = component;
        $(this).modal();
    });

    $("#modalactivechat #button-ok").click( function(){
        if(chat_component != undefined)
        {
            $.post('{{route("paychat")}}', {
                _token: csrf_token,
                partner_id: chat_component.partner.id,
                channel: chat_component.settings.channel
            })
            .done( data => {
                console.log("paychat success", data);
                if(data != "failed")
                {
                    chat_component.sendMessage(1);
                    $("#user-points span").text(data);
                }
                else
                {
                    alert("you don't have enough points please buy new package for ellin points");
                    location.href = "packages";
                }
            })
            .fail( err => {
                console.log( "paychat failed", err );
                
            });
        }
    });
</script>
@endpush