(function($){
    'use strict';

    // *********************************
    // :: 1.0 set top menu
    // *********************************
    $("#discount-top-menu").addClass('current-item');   

    // *********************************
    // :: 2.0 send email 
    // *********************************
    $("#sendemail-btn").on('click', ()=>{
        $.post('sendcompanyemail', {
                _token: csrf_token,
                company: $("#email-company").val(),
                type: $("#email-type").val(),
                email: $("#email-email").val()
            })
            .done((data)=>{ 
                console.log('sendcompanyemail successed', data);
            })
            .fail((err)=>{
                console.log('sendcompanyemail failed', err);
            });
    });

    // **************************************
    // 6.0 Auto scroll down
    // **************************************
    window.setTimeout(function(){
        if(!getCookie("discount-scrolldown"))
        {
            window.scrollBy(0, $(".company-panel-container").offset().top);
            setCookie('discount-scrolldown', true, 365);
        }
        console.log("discount TOP:" + $(".company-panel-container").offset().top)
        
    }, 4000);

}(jQuery));