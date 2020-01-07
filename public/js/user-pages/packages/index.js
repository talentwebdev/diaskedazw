(function($){
    'use-strict';

    var packages_array = new Array();
    // *******************************
    // 1. set top menu
    // *******************************
    $("#packages-top-menu").addClass('current-item');


    // ******************************
    // 2. fetch packages from database
    // ******************************
    function formatNumber(num) {
        return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
    }
    function addPackageElement (packages)
    {
        packages.forEach((element)=>{
            var html = "";
            packages_array[element.id] = element;
            if(element.type == 1)
            {
                html = "" + 
                    "<div class='col-md-3 packages-item-container'>" +
                        "<div>" + 
                            '<img src="' + asset_url + "/" + element.img_url + '">' + 
                        "</div>" + 
                        "<div style='padding-top:5px; text-align:center;'>" + 
                            "<div style='font-size:14px;  padding-top: 10px; color:#fff;'>"+element.name+"</div>" +
                            (element.cost == 0 ? "<div style='font-size:14px; font-weight:bold;padding-top: 10px; color:rgb(34, 177, 76);'>Δωρεάν</div>"
                                : ("<div style='font-size:14px;font-weight:bold; color:#fff; padding-top: 10px;'>" + 
                                        "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='width:9px;'> " + 
                                        "<span style='font-weight:bold; font-size:13px;'>"+formatNumber(element.ellin)+" | </span>" + 
                                        "<span style='font-weight:bold; color:#F00; font-size:13px;' >" + (element.cost == 0 ? "free" : "€" + formatNumber(element.cost)) + "</span>" +
                                    "</div>")) +
                            "<div style='font-weight:bold;' color:#000; font-size: 13px;'>" + element.shares + "</div>" + 
                            "<div><div class='buy-btn' package='"+element.id+"'  style='padding:5px; background-color:#FFF; border-radius:15px; border: 1px solid #AAA;margin-top: 10px; color: #000; cursor: pointer;'>Επιλογη</div></div>" +
                        "</div>" + 
                    "</div>";
                $(html).appendTo(".ellin-packages-container");
                return;
            }
            if(element.promote == 0)
            {

                html = "" + 
                    "<div class='col-md-2 packages-item-container'>" +
                        "<div>" + 
                            '<img src="' + asset_url + "/" + element.img_url + '">' + 
                        "</div>" + 
                        "<div style='padding-top:5px; text-align:center;'>" + 
                            "<div style='font-size:14px;  padding-top: 10px; color:#000;'>"+element.name+"</div>" +
                            (element.cost == 0 ? "<div style='font-size:14px; font-weight:bold;padding-top: 10px; color:rgb(34, 177, 76);'>Δωρεάν</div>"
                                : ("<div style='font-size:14px;font-weight:bold; color:#000; padding-top: 10px;'>" + 
                                        "<img src='"+asset_url+"/"+"img/diask-img/ellinsds.png"+"' style='width:9px;'> " + 
                                        "<span style='font-weight:bold; font-size:13px;'>"+formatNumber(element.ellin)+" | </span>" + 
                                        "<span style='font-weight:bold; color:#F00; font-size:13px;' >" + (element.cost == 0 ? "free" : "€" + formatNumber(element.cost)) + "</span>" +
                                        
                                    "</div>")) +
                            "<div style='font-weight:bold;' color:#000; font-size: 13px;'>" + element.shares + "</div>" + 
                            "<div><div class='"+ (parseInt(user.package_id) == element.id ? "activated-package" : "buy-btn") + "' package='"+element.id+"'  style='padding:5px; border-radius:15px; border: 1px solid #AAA;margin-top: 10px; cursor: pointer;'>"+(parseInt(user.package_id) == element.id ? "Επιλεγμένο" : "Eπιλογή")+"</div></div>" +
                        "</div>" + 
                    "</div>";
            }
            else
            {
                html = "" + 
                    "<div class='item'>"+
                        "<div class='row'>" +
                            "<div class='col-md-4' style='position:relative;'>" +
                                "<div style='position:relative; top:50%; transform: translateY(-50%);'>" +
                                    "<img src='" + asset_url + "/" + element.img_url + "' style='width:100%; border-radius: 50%;'>" +
                                    "<p style='text-align:center; margin-top: 20px; color:#F00; font-weight:bold;'>"                                        
                                         + (element.cost == 0 ? "Δωρεάν" : ("€"+element.cost)) + 
                                    "</p>" +
                                "</div>" +
                            "</div>" +
                            "<div class='col-md-8' style='text-align:center;'>" +
                                "<div>"+
                                "<h5 style='color:#FFF; font-weight:bold; font-size:16px;'><i class='fas fa-star' style='color:#FF0;'></i>"+element.name+"</h5>" +
                                "<p class='description' style='word-wrap:break-word; text-align:center; line-height:2em; height:8em; overflow:hidden;text-overflow: ellipsis; display: -webkit-box;-webkit-line-clamp: 4; -webkit-box-orient: vertical;'>"+element.description+"</p>" +
                                "</div>" +
                                "<div><button package='"+element.id+"' class='buy-btn btn btn-primary'>Επιλογη</button></div>" +
                            "</div>" +
                        "</div>" +
                    "</div>";
            }
               
            if(element.promote == 0)
            {
                $(html).appendTo(".packages-container");
            }
            else
                $(html).appendTo('.promote-packages-container');
            
        });

        if($.fn.owlCarousel)
            { 
                var owl = $('.promote-packages-container');
                owl.owlCarousel({
                    margin: 10,
                    loop: false,
                    autoplay: false,
                    autoplayTimeout: 2000,
                    smartSpeed: 1000,
                    responsiveClass:true,
                    responsive: {
                        0: {
                            items: 1
                        },
                        500: {
                            items: 2
                        },
                        900: {
                            itmes: 2
                        },
                        1200: {
                            items: 2
                        }
                    }
                })
            }
            
        responsivePackagePanel();   
    }

    $("<div class='lds-roller' style='display:block;'><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>")
            .appendTo(".packages-container");
    $.get('fetchPackages')
        .done((data)=>{
            console.log('fetchPackages successed', data);
            $(".packages-container").find('.lds-roller').remove();
            addPackageElement(data);
        })
        .fail((err)=>{
            console.log('fetchPackages failed', err);
        });

    // ******************************
    // 3.0 responsive design 
    // ******************************
    function responsivePackagePanel()
    {
        var width = jQuery(window).width();
        if(width > 1100)
        {
            //$(".packages-container").children().attr("class", "col-my-md-5 packages-item-container");
            $(".packages-container").children().attr("class", "col-md-3 packages-item-container");
        }
        else if(width > 1000)
        {
            $(".packages-container").children().attr("class", "col-md-3 packages-item-container");
        }
        else if(width > 800)
        {
            $(".packages-container").children().attr("class", "col-md-4 packages-item-container");
        }
        else if(width > 600)
        {
            $(".packages-container").children().attr("class", "col-md-6 packages-item-container");
        }

        if(width <= 1000)
        {
            //$(".promote-packages-container").children().attr("class", "col-md-6 ");
        }
        else if(width > 1000)
        {
            //$(".promote-packages-container").children().attr("class", "col-md-6 ");
        }

        // diaske card promote section
        if($(".card-description-text").height() > 0)
        {
            $(".card-description > img").css("height", ($(".card-description-text").height() + 20) + "px");
        }
    }
    $(window).resize(function(){responsivePackagePanel();});
    /*
    function responsiveCardSection()
    {
        if(jQuery(window).width() <= 768)
        {
            var text = $(".diask-card-promote-section .promote-text").text();
            var imgHTML = "<img src='"+asset_url+"/img/core-img/diask_card.png' style='width:30%; float:right; position:relative; left:30px; margin-left:30px; top:0px;' >";
            var length = text.length, splitLength = parseInt(length /  * 4);
            var html = text.substr(0, splitLength) + imgHTML + text.substr(splitLength + 1, length - splitLength);
            $(".diask-card-promote-section .promote-text").html(html);
        }
    }
    $(window).resize(function(){
        responsiveCardSection();
    });

    */
    // ***********************
    // 4.0 Add Payment


    $(document).ready(function(){
        console.log('onready');
        $(document).on("click",".btn-primary",function() {
            console.log('onclick');
        });
    });

    $(".packages-container-parent").on("buy-package", function(e, p){
        console.log("buy", p);
        $( "#modalPackageInfo" ).modal() ;
    });
    $( "body" ).click( function(e) {
        if($(e.target).hasClass("buy-btn"))
        {
            if(authorised == 0) 
            {
                alert("you have to register first.");
                location.href="register";
                return; 
            }
            var packageid = $(e.target).attr("package");
            var package = packages_array[packageid];

            $("#modalPackageInfo .package-info-text").text(package.description);

            /*
            $("#modalAbandonedCart").find(".package-image").attr("src", asset_url + "/" + package.img_url);
            $("#modalAbandonedCart").find(".package-name").text(package.name);
            $("#modalAbandonedCart").find(".package-ellin").text(package.ellin+"|");
            $("#modalAbandonedCart").find(".package-cost").text("€"+package.cost);
            $("#modalAbandonedCart").find(".package-description").text(package.description);
            */
            $(".package-image").attr("src", asset_url + "/" + package.img_url);
            $(".package-name").text(package.name);
            $(".package-ellin").text(package.ellin+"|");
            $(".package-cost").text("€"+package.cost);
            $(".package-description").text(package.payment_description);
            $("#modalPackageInfo .package-markimage").attr("src", package.markimg_url);
            
            if(packageid == undefined) return;

            $( "#modalPackageInfo" ).modal() ;
            $("#modalPackageInfo").trigger("package_select", package);
            
            if(package.cost == 147 || package.cost == 247)
            {
                //$("#modalPackageInfo #next_step").prop("disabled", true);
                $("#modalPackageInfo #next_step").css("display", "none");
                $("#modalPackageInfo #close_btn").css("display", "block");
            }
            else
            {
                $("#modalPackageInfo #next_step").css("display", "block");
                $("#modalPackageInfo #close_btn").css("display", "none");
            }

            $( "#modalAbandonedCart" ).find( ".err-notice" ).text( "" );

            braintree.dropin.create({
                authorization: token,
                container: "#dropin-container"
            }, function (createErr, instance){
                $("#preloader_dialog").css( 'display', 'none' );

                $( "#buyservice" ).on( 'click', function() {
                    console.log(packageid);

                    instance.requestPaymentMethod(function (err, payload){
                        
                        $.get( 'payment.process', 
                                {payload: payload, packageid: packageid}
                        )
                        .done( function(response) {
                            console.log( "payment.process", response );
                            if(response.success)
                            {
                                alert( "payment success", packageid );
                                $.post( 'payment.done', {"_token": csrf_token, packageid: packageid})
                                    .done(function( response ){
                                        location.href = 'packages';
                                    });
                            }
                            else{
                                alert( "payment failed" );
                            }
                        })
                        .fail( function( err ){
                            console.log( err );
                        });
                    });
                });
            })
        }
    } );

    // **************************************
    // 5.0 Check if the user activated
    // **************************************
    if(parseInt(user.package_id) == 0)
    {
        $(".ellin-packages-section").css("display", "none");
    }

    $("#modalactivealert").css("display", "none");



    // **************************************
    // 6.0 Auto scroll down
    // **************************************
    window.setTimeout(function(){
        if(!getCookie("package-scrolldown"))
        {
            window.scrollBy(0, $(".packages-container-parent").offset().top);
            setCookie('package-scrolldown', true, 365);
        }
        console.log("Package TOP:" + $(".packages-container-parent").offset().top)
        
    }, 4000);
    

}(jQuery));
