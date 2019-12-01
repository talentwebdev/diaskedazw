(function($){
    
    $(".classy-navbar-toggler").click(function(){
        $("#sidenav-main").css("display", "block");
        $("#sidenav-collapse-main").addClass("show");
    });

    $("#sidenav-collapse-main .navbar-toggler").click(function(event){
        $("#sidenav-collapse-main").removeClass("show");

        event.preventDefault();
    });
}(jQuery))