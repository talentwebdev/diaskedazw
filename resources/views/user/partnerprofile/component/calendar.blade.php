<div id='calendar-mobile' style='display:none;'>
</div>


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
    function initCalendar(){
        var calendarEl = document.getElementById('calendar-mobile');
        var now = new Date();
        var calendar = new FullCalendar.Calendar(calendarEl, {
            plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'bootstrap' ],
            header: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay'
            },
            defaultDate: now.getFullYear() + "-" + (now.getMonth() + 1) + "-" + now.getDate(),
            navLinks: true, // can click day/week names to navigate views
            selectable: true,
            selectMirror: true,
            themeSystem: 'bootstrap',
            select: function(arg) {
            if(arg.allDay == true)
                return;
            var offsetDay = new Date(Math.abs(arg.end - arg.start));        
            if(arg.end.getMonth() != arg.start.getMonth() || arg.end.getDay() != arg.start.getDay())
                return;
                
            if(!user.package_id)
            {
                $("#modalactivealert").modal();
                return;
            }
            $("#modaladdevent").modal();
            var title = prompt('Event Title:');
            if (title) {
                console.log(formatDate(arg.start));
                arg.partner_id = partner.id;
                arg.title = title;
                $("#modalactiveappoinetment").trigger("appointment-activate", arg); 
            }
            calendar.unselect()
            },
            eventClick: function( info ){
            },
            dateClick: function(info){
            calendar.changeView('timeGridDay', info.dateStr);
            },
            editable:false,
            eventLimit: true // allow "more" link when too many events
            
        });
        calendar.render();
        
        // *********************************
        // :: 3.0 fetch events from database
        // *********************************
        var addEvents = function(events)
        {
            events.forEach(element => {
                calendar.addEvent({
                    title: element.title,
                    start: new Date(element.event_start),
                    end: new Date(element.event_end),
                    allDay: false,
                    backgroundColor: element.user_id == user.id ? "#4285F4" : "#FFF"
                });
            });
        }
        if(authorised == 1)
        {
            $.get( "fetchevents", 
            {
                partner_id: partner.id
            })
            .done( function( data ){
                console.log( 'fetchevents success', data );
                
                addEvents( data );
            } )
            .fail( function( err ){ 
                console.log( 'fetchevents failed', err );
            });
        }
    }
     
    initCalendar();
</script>
@endpush

@push('styles')
<style>
@media only screen and (max-width: 991px)
{
    #calendar-mobile{
        display: block !important;
    }
}
@media only screen and (max-width: 768px)
{
    #calendar-mobile button > span{
        font-size: 10px;
    }
    #calendar-mobile button{
        font-size: 10px;
    }
    #calendar-mobile h2{
        font-size: 14px;
    }
}
</style>
@endpush