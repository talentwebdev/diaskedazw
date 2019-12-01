(function($){
    document.addEventListener('DOMContentLoaded', function() {
        var selected_event = null;
        var calendarEl = document.getElementById('calendar'); 
        var now = new Date();
        console.log(now);
        console.log(now.getFullYear() + "-" + (now.getMonth() + 1) + "-" + now.getDate());
        console.log(now.getDay());

        var calendar = new FullCalendar.Calendar(calendarEl, {
          plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'bootstrap' ],
          header: {
            left: 'prev,next today, delete_btn',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay'
          },
          defaultDate: now.getFullYear() + "-" + (now.getMonth() + 1) + "-" + now.getDate(),
          navLinks: true, // can click day/week names to navigate views
          selectable: false,
          selectMirror: true,
          themeSystem: 'bootstrap',
          select: function(arg) {
            if(arg.allDay == true)
              return;
            var offsetDay = new Date(Math.abs(arg.end - arg.start));        
            if(arg.end.getMonth() != arg.start.getMonth() || arg.end.getDay() != arg.start.getDay())
              return;
            var title = prompt('Event Title:');
            if (title) {
              calendar.addEvent({
                title: title,
                start: arg.start,
                end: arg.end,
                allDay: arg.allDay
              })
            }
            calendar.unselect()
          },
          customButtons: {
            delete_btn: {
              text: 'Delete Event',
              click: function() {
                if(selected_event != null)
                {
                    var notification = prompt('Notification:');
                    $.post( 'removeevent', { 
                            _token: csrf_token,
                            eventid: selected_event.id,
                            notification: notification
                        } )
                        .done( function(data){
                          console.log("removeevent success", data);
                          selected_event.remove();
                        })
                        .fail( function(err){
                          console.log('removeevent failed', err);
                        });
                        
                    
                }
              }
              
            }
          },
          eventClick: function( info ){
            $( ".selected-event" ).removeClass( "selected-event" );
            $(info.el).addClass("selected-event");
            info.event.id='12';
            selected_event = info.event;
          },
          editable:false,
          eventLimit: true // allow "more" link when too many events
          
        });
        calendar.render();

        /**
         * fetch event from database
         */
        var addEvents = function(events)
        {
          events.forEach(element => {
            calendar.addEvent({
                id: element.id,
                title: element.title,
                start: new Date(element.event_start),
                end: new Date(element.event_end),
                backgroundColor: element.status == 0 ? "#FFF" : element.status == 1 ? "#47B648" : "#F64444",
                allDay: false
            });
          });
        }
        $.get("fetchevents", 
                {
                  partner_id: partner.id
                })
                .done( function( data ){
                  console.log( 'fetchevents success', data );
                  
                  addEvents( data );
                 } )
                .fail( function( err ){ 
                  console.log( 'fetchevents failed', err );
                })
    });
}(jQuery));