(function($){
    'use strict';

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
    var selectedArg;
    $("#calendar").on("addevent", function(e, param){
        if(selectedArg != undefined)
        {
            if (param.title) {            
                
                selectedArg.partner_id = partner.id;
                selectedArg.title = param.title;
                selectedArg.type = param.type;
                selectedArg.calendar = calendar;
                $("#modalactiveappoinetment").trigger("appointment-activate", selectedArg); 
                //console.log(formatDate(arg.start));
                /*
                $.post('addevent',
                            {
                                "_token": csrf_token,
                                title: param.title,
                                type: param.type,
                                event_start: formatDate(selectedArg.start),
                                event_end: formatDate(selectedArg.end),
                                partner_id: partner.id
                            })
                            .done( function(data){ 
                                console.log('addevent success', data); 
                                if(data == "failed")
                                {
                                    alert("you can not add appointment");
                                    return;
                                }
                                calendar.addEvent({
                                    title: param.title,
                                    start: selectedArg.start,
                                    end: selectedArg.end,
                                    allDay: selectedArg.allDay,
                                    backgroundColor: "#4285F4"
                                });
                            } );*/
            }
        }
    });
        
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

            if(!user.package_id)
            {
                $("#modalactivealert").modal();
                return false;
            }
            
            var offsetDay = new Date(Math.abs(arg.end - arg.start));        
            if(arg.end.getMonth() != arg.start.getMonth() || arg.end.getDay() != arg.start.getDay())
                return;

            
            $("#modaladdevent").modal();
            //var title = prompt('Event Title:');
            selectedArg = arg;
            
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
    
    /** sticky side bar */
    var a = new StickySidebar('.sticky-sidebar-container', {
        topSpacing: 80,
        containerSelector: '.mainarea'
    });

    /** fetch events */
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
 
}(jQuery));