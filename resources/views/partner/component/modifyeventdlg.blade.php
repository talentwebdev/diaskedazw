
<!-- Modal: modalAbandonedCart-->
<div class="modal fade right "  id="modalmodifyevent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog  modal-notify modal-primary" style='margin-top: 100px;' role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'><i style='color:#FFF;'class="fas fa-exclamation"></i> ModelModify
                </p>
        
                <button type="button" style='background-color:transparent; border: 0; cursor: pointer;' data-dismiss="modal" aria-label="Close">
                    <i class="fas fa-times"></i>
                </button>
            </div>
    
        <!--Body-->
            <div class="modal-body" style='background-color:#FFF;'>
                <div>
                    <div>Type: <span id='event-type'></span></div>
                    <div>Text: <span id='event-text'></span></div>
                </div>
                <hr/>
                <div class='form-group'>
                    <div>StartTime: <input type='text' id='startdatepicker' /></div>
                    <div style='margin-top: 10px;'>EndTime: <input type='text' id='enddatepicker' /></div>
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center" style='background-color:#FFF;'>
                <button type="button" id='accept-event' class="btn btn-outline-primary waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>Accept</button>
                <button type="button" id='deny-event' class="btn btn-outline-primary waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>Deny</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Modal: modalAbandonedCart-->

@push('scripts')
 <script src="{{ asset('plugins/datepicker/js/jquery.datetimepicker.js') }}"></script>

<script>
var selectedEvent;
 //Inline DateTimePicker Example
$('#startdatepicker').datetimepicker({
    format:'Y-m-d H:i',
    inline:false,
    onChangeDateTime: function(e, t){
        var startDate = new Date($(t).val());

        $("#enddatepicker").datetimepicker({
            format:'Y-m-d H:i',
            inline:false,
            minDate: startDate.getFullYear()+"/"+(startDate.getMonth()+1)+"/"+startDate.getDate(), //yesterday is minimum date
            maxDate:startDate.getFullYear()+"/"+(startDate.getMonth()+1)+"/"+startDate.getDate() //tomorrow is maximum date
        });
        
    }
});
$('#enddatepicker').datetimepicker({
    format:'Y-m-d H:i',
    inline:false,
});


$("#accept-event").click(function(){
    if(selectedEvent != undefined){
        console.log("accpent event", selectedEvent);
    }
});

$("#deny-event").click(function(){
    if(selectedEvent != undefined)
    {
        console.log('deny event', selectedEvent);
    }
});

$("#modalmodifyevent").on("openmodal", function(e, param){
    $(this).modal();

    selectedEvent = param;
    $("#event-type").text(param.type == 0 ? "Offline Appointment" : "Online Appointment");
    $("#event-text").text(param.title);
    $("#startdatepicker").val(param.event_start);
    $("#enddatepicker").val(param.event_end);

     var startDate = new Date(param.event_start);

    $("#enddatepicker").datetimepicker({
        format:'Y-m-d H:i',
        inline:false,
        minDate: startDate.getFullYear()+"/"+(startDate.getMonth()+1)+"/"+startDate.getDate(), //yesterday is minimum date
        maxDate:startDate.getFullYear()+"/"+(startDate.getMonth()+1)+"/"+startDate.getDate() //tomorrow is maximum date
    });
});

$("#accept-event").click( function(){
    var notification = prompt();

    if(notification == '')
        return false;
    $.post('acceptevent', {
                _token: csrf_token,
                eventid: selectedEvent.id,
                notification: notification,
                event_start: $("#startdatepicker").val(),
                event_end: $("#enddatepicker").val()
            })
            .done( function(data){
            })
            .fail(function(err){
                console.log('accept event failed', err);
            });
});
$("#deny-event").click( function(){
    var notification = prompt();

    if(notification == '')
        return false;
    $.post('denyevent', {
                _token: csrf_token,
                eventid: selectedEvent.id,
                notification: notification
            })
            .then(function(){})
            .fail(function(err){
                console.log('deny event failed', err);
            });
});
</script>
<link type='text/css' href="{{ asset('plugins/datepicker/css/jquery.datetimepicker.min.css') }}" rel='stylesheet' />
@endpush

