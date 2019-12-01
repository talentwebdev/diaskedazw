(function ($) {
    'use strict';

    var uza_window = $(window);

    // ****************************
    // :: 1.0 Preloader Active Code
    // ****************************

    uza_window.on('load', function () {
        console.log("window loaded");
        window.loaded = true;
        $('#preloader').fadeOut('1000', function () {
            $(this).remove();
        });
    });

    // ****************************
    // :: 2.0 ClassyNav Active Code
    // ****************************

    /*
    if ($.fn.classyNav) {
        $('#uzaNav').classyNav();

    }
    */

    

    // *********************************
    // :: 8.0 Portfolio Menu Active Code
    // *********************************
    $('.portfolio-menu button.btn').on('click', function () {
        $('.portfolio-menu button.btn').removeClass('active');
        $(this).addClass('active');
    })

    // *********************************
    // :: 9.0 Magnific Popup Active Code
    // *********************************
    if ($.fn.magnificPopup) {
        $('.video-play-btn').magnificPopup({
            type: 'iframe'
        });
    }

    // ***************************
    // :: 10.0 Tooltip Active Code
    // ***************************
    if ($.fn.tooltip) {
        $('[data-toggle="tooltip"]').tooltip();
    }

    // ***********************
    // :: 11.0 WOW Active Code
    // ***********************
    if (uza_window.width() > 767) {
        new WOW().init();
    }

    // ****************************
    // :: 12.0 Jarallax Active Code
    // ****************************
    if ($.fn.jarallax) {
        $('.jarallax').jarallax({
            speed: 0.2
        });
    }

    // ****************************
    // :: 13.0 Scrollup Active Code
    // ****************************
    
    if ($.fn.scrollUp) {
        uza_window.scrollUp({
            scrollSpeed: 2000,
            scrollText: '<i class="fa fa-angle-up"</i>'
        });
    }
    
    // **************************
    // :: 14.0 Sticky Active Code
    // **************************
    uza_window.on('scroll', function () {
        if (uza_window.scrollTop() > 0) {
            $('.main-header-area').addClass('sticky');
        } else {
            $('.main-header-area').removeClass('sticky');
        }
    });

    // ********************************
    // :: 15.0 Slick Slider Active Code
    // ********************************
    if ($.fn.counterUp) {
        $('.counter').counterUp({
            delay: 15,
            time: 1500
        });
    }

    // *********************************
    // :: 16.0 Prevent Default 'a' Click
    // *********************************
    $('a[href="#"]').click(function ($) {
        $.preventDefault();
    });

}(jQuery));