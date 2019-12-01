(function( $ ){

    /********************************
     *  1. add Video List Element
     * *****************************
     * */ 
    var videoList = new ListComponent( $("#videolist"), {
            addItemElement: addVideoElement
        });

    function addVideoElement( video )
    {
        var html = "" +  
             '<li class="list-group-item">' + 
                '<div class="row">' + 
                    '<div>' +
                        '<img src="'+asset_url + "/" + video.adimg_url +'" alt="" srcset="">' +
                    '</div>' +
                    "<div style='margin-left: 20px;' >" +
                      "<h4 style='color:#000; font-weight:500;'>" + video.title + "</h4>" +
                      "<span style='color:#333;'>" + video.description + "</span>" +
                    "</div>" +
                "</div>" +
              "</li>";
        
        return html;
    }

    $.get( 'getvideos', { partnerid: partner.id, count: -1 })
        .done( function( data ){
            console.log( 'getvideos success:', data );

            videoList.addItems( data );
        } )
        .fail( function(err) {
            console.log( 'getvideos failed', err );
        });

    /********************************
     *  2. add article List Element
     * *****************************
     * */ 
    var articleList = new ListComponent( $("#articlelist"), {
        addItemElement: addArticleElement
    });

    function addArticleElement( article )
    {
        var html = "" +
            '<li class="list-group-item">' +
                '<div class="row">' +
                    '<div >' +
                        '<img src="' +asset_url + "/" + article.poster_img +'" alt="" srcset="">' +
                    '</div>' +
                    "<div style='margin-left: 20px;' >" +
                        "<h4 style='color:#000; font-weight:500;'>" + article.title + "</h4>" +
                    "</div>" +
                "</div>" +
            "</li>";
        
        return html;
    }

    $.get( 'getarticles', {partnerid: partner.id, count: -1})
        .done( function( data ){
            console.log('getarticles success', data);

            articleList.addItems(data);
        })
        .fail( function(err){
            console.log('getarticles failed', err);
        });
    
    /********************************
     *  3. add iamges List Element
     * *****************************
     * */ 
    var imageList = new ListComponent($("#imagelist"), {
        addItemElement: addImageElement
    });

    function addImageElement( image )
    {
        var html = "" +
            '<li class="list-group-item">' +
                '<div class="row">' +
                    '<div >' +
                        '<img src="' +asset_url + "/" + image.img_url +'" alt="" srcset="">' +
                    '</div>' +
                    "<div style='margin-left: 20px;' >" +
                        "<h4 style='color:#000; font-weight:500;'>" + image.title + "</h4>" +
                    "</div>" +
                "</div>" +
            "</li>";
        return html;
    }

    $.get( 'fetchgallery', { partnerid: partner.id, count: -1} )
        .done( function(data){
            console.log( "fetchgallery success", data);

            imageList.addItems(data);
        })
        .fail( function(err){
            console.log('fetchgallery failed', err);
        });

    /********************************
     *  4. add appointment view
     * *****************************
     * */ 
    var eventList = new ListComponent( $("#timelinelist"), {
        addItemElement: addTimelineElement,
        onClick: function(e){
            if(e.status != 1)
                $("#modalmodifyevent").trigger('openmodal', e);
        }
    });
    function addTimelineElement( event )
    {
        var start_date = new Date( event.event_start);
        var end_date = new Date( event.event_end );
        var time_text = start_date.getMonth() + "-" + start_date.getDate() + "/" + "[" +  start_date.getHours() + ":" + start_date.getMinutes() + " , " + end_date.getHours() + ":" + end_date.getMinutes() + "]";
        var html = "" +
            "<div class='row'>" +
                "<div class='col-md-3'>" + 
                    '<a target="_blank" style="color:#22c0e8">' + time_text + '</a>' + 
                "</div>" + 
                "<div class='col-md-6'>" + 
                    '<p>' + event.title + '</p>' +
                "</div>" + 
                "<div class='col-md-3'>" + 
                    '<p>' + (event.status == 0 ? "NoStatus" : (event.status == 1 ? "Accept" : "Canceled")) + "</p>" +
                "</div>" +
            '</div>';
        
        return html
    }   
    $.get( 'fetchevents', {partner_id: parseInt(partner.id)} ) 
            .done( function(data) {
                console.log( 'fetchtodayevents success', data );

                eventList.addItems( data );
            })
            .fail( function(err){
                console.log( 'fetchtodayevents end', err );
            });
    /********************************
     *  5. add reports view
     * *****************************
     * */  
    var reportsList = new ListComponent( $("#reportlist"), {
        addItemElement: addReportElement,
        onClick: function(e){
            
        }
    });
    function addReportElement(element)
    {
        var html = "" +
            "<div class='row'>" +
                "<div class='col-md-4'>" + 
                    '<a target="_blank" style="color:#22c0e8">' + element.time + '</a>' + 
                "</div>" + 
                "<div class='col-md-2'>" + 
                    '<p>' + element.points + '</p>' +
                "</div>" + 
                "<div class='col-md-3'>" + 
                    '<p>' + element.user.name + "</p>" +
                "</div>" +
                "<div class='col-md-3'>" + 
                    '<p>' + (element.type == 1 ? 'appointment' : 'chat') + "</p>" +
                "</div>" +
            '</div>';

        return html;
    }

    $.get( 'fetchreports' )
            .done( function(data) {
                console.log('fetchreports success', data);

                reportsList.addItems(data);
            })
            .fail(function(err){});


    /********************************
     * 6. fetch visits statistics
     * *****************************
     * */  

    $.get( "fetchaddpointsnotifications", {sender: 12})
    .then( function( data ) {
        console.log( "fetchaddpointsnotifications succeed", data );
        $('#num_visits').text(data.length);
        $('#num_totalearnings').text(parseFloat(data.length* 0.01).toFixed(2));
    })
    .fail( function( err ) {
        console.log( "fetchaddpointsnotifications failed", err );
    });
}(jQuery));