(function ($) {
    'use strict';

    if( $("#pageAttr").attr( "attr") == "appointment" )
    {

      // *********************************
        // :: 1.0 Welcome Slides Active Code
        // *********************************

        if ($.fn.owlCarousel) {
            var welcomeSlider = $('.welcome-slides');
            welcomeSlider.owlCarousel({
                items: 1
            });
        }

        // *********************************
        // :: 2.0 calendar view
        // *********************************
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
        
        var calendarEl = document.getElementById('calendar');
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
              var title = prompt('Event Title:');
              if (title) {
                calendar.addEvent({
                  title: title,
                  start: arg.start,
                  end: arg.end,
                  allDay: arg.allDay
                });
                
                console.log(formatDate(arg.start));
                $.post('addevent',
                              {
                                "_token": csrf_token,
                                title: title,
                                event_start: formatDate(arg.start),
                                event_end: formatDate(arg.end),
                                partner_id: partner.id
                              })
                              .done( function(){ console.log('addevent success'); } );
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
              allDay: false
            });
          });
        }
        $.get( "fetchevents", 
                {
                  partner_id: partner.id
                })
                .done( function( data ){
                  //console.log( 'fetchevents success', data );
                  
                  addEvents( data );
                 } )
                .fail( function( err ){ 
                  console.log( 'fetchevents failed', err );
                });

        /**
         * add chat component
         */
        Echo.join( 'chat.' + partner.id )
                    .here((users) => {
                        console.log("Join Channel() success", users);
                    });
    }
}( jQuery ));
