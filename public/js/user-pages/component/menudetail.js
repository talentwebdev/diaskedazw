(function($){
    'use strict';

    // ****************************
    // 1. join counter 
    // ****************************
    $('.joined-counter').my_counter();

    // ****************************
    // 2. Cetner align 
    // ****************************
    function centerAlign()
    {
        $("#logo").css("margin-left", -($("#ellin-title").parent().width() - $("#ellin-title").width()) /2 + "px" );
    }
    $(document).ready(function(){
        console.log("ellin width", $("#ellin-title").width());
        console.log('ellin parent width', $("#ellin-title").parent().width());
        centerAlign();
        
    });
    $(window).resize(function(){
        centerAlign();
    });
}(jQuery))