
<!-- Modal: modalAbandonedCart-->
<div class="modal fade right " id="modalactiveappoinetment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog  modal-notify modal-danger" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'><i style='color:#FFF;'class="fas fa-exclamation"></i> Ενημέρωση
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
    var appointment_param;
    $("#modalactiveappoinetment").on("appointment-activate", function(e, param, calendar){
        appointment_param = param;
        $(this).modal();
    });

    $("#modalactiveappoinetment #button-ok").click( function(){
        if(appointment_param != undefined)
        {
            $.post('addevent',
            {
                "_token": csrf_token,
                title: appointment_param.title,
                type: appointment_param.type,
                event_start: formatDate(appointment_param.start),
                event_end: formatDate(appointment_param.end),
                partner_id: appointment_param.partner_id
            })
            .done( function(data){ 
                console.log('addevent success', data); 
                if(data == "failed")
                {
                    alert("you can not add appointment");
                    return;
                }
                appointment_param.calendar.addEvent({
                    title: appointment_param.title,
                    start: appointment_param.start,
                    end: appointment_param.end,
                    allDay: appointment_param.allDay,
                    backgroundColor: "#4285F4"
                });
            } );
        }
    });
</script>
@endpush