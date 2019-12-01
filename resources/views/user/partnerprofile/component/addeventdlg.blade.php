
<!-- Modal: modalAbandonedCart-->
<div class="modal fade right " id="modaladdevent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-notify modal-primary" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'><i style='color:#FFF;' class="fas fa-calendar-alt"></i> Add Event
                </p>
        
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
    
        <!--Body-->
            <div class="modal-body">
                <div style='padding: 20px; border-bottom: 1px solid #AAA;'>    
                    <div> 
                        <label class="radio-btn-container" id="offline_appointment"> Offline Appointment
                            <input type="radio" class="area" checked  name="appointment"> 
                            <span class="checkmark"></span>
                        </label>
                    </div>
                    <div>
                        <label class="radio-btn-container" id="online_appointment"> Online Appointment
                            <input type="radio" class="area"  name="appointment"> 
                            <span class="checkmark"></span>
                        </label>
                    </div>
                </div>
                <div style='padding: 20px;'>
                    <div>Text: </div>
                    <textarea id='event-title' style='width: 100%;' rows=3></textarea>
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" id='addevent-btn' class="btn btn-outline-primary waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>OK</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Modal: modalAbandonedCart-->

@push('styles')
<link rel='stylesheet' href="{{ asset('plugins/radiobutton/radiobutton.css') }}">
@endpush

@push('scripts')
<script>
function formatDate(date) {
    var monthNames = [
        "January", "February", "March",
        "April", "May", "June", "July",
        "August", "September", "October",
        "November", "December"
    ];
    
    var day = date.getDate();
    var monthIndex = date.getMonth() + 1;
    var year = date.getFullYear();
    
    return year + '-' + monthIndex + '-' + day + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
}

var eventType = 0;
$("#calendar").on("addevent", function(){});

$("#online_appointment").click( function(){
    eventType = 1;
});
$("#offine_appointment").click(function(){
    eventType = 0;
});

$("#addevent-btn").click(function(e){
    if($("#event-title").val().length == 0)
    {
        e.preventDefault();
        return false;
    }
    $("#calendar").trigger('addevent', {title: $("#event-title").val(), type: eventType});
});
</script>
@endpush