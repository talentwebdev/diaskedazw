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


    $("#product-top-menu").addClass("current-item");
}(jQuery));