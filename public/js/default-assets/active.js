(function ($) {
    'use strict';

    var uza_window = $(window);

    // ****************************
    // :: 1.0 Preloader Active Code
    // ****************************

    uza_window.on('load', function () {
        $('#preloader').fadeOut('1000', function () {
            $(this).remove();
        });
    });

    // ****************************
    // :: 2.0 ClassyNav Active Code
    // ****************************

    if ($.fn.classyNav) {
        $('#uzaNav').classyNav();
    }

    // *********************************
    // :: 3.0 Welcome Slides Active Code
    // *********************************

    if ($.fn.owlCarousel) {
        var welcomeSlider = $('.welcome-slides');
        welcomeSlider.owlCarousel({
            items: 1
        });
    }

    // *********************************
    // :: 3.0 Other Sites Active Code
    // **
    if($.fn.owlCarousel)
    {
        var siteSlider = $(".site-slides");
        siteSlider.owlCarousel({
            item: 6 ,
            margin: 30,
            autoplay: true,
            smartSpeed: 1000,
            dots: true,
            responsive: {
                0: {
                    items: 1
                },
                992: {
                    items: 3
                },
                1400: {
                    items: 6
                }
            }
        });
    }

    // *********************************
    // :: 3.0 Advertise Site Active Code
    // **
    if($.fn.owlCarousel)
    {
        var advertiseSlider = $("#advertiseSite");
        advertiseSlider.carousel({
            interval: 2000
        });
    }

    // ***********************************
    // :: 4.0 Portfolio Slides Active Code
    // ***********************************
    if ($.fn.owlCarousel) {
        var portfolioSlide = $('.portfolio-sildes');
        portfolioSlide.owlCarousel({
            items: 4,
            margin: 50,
            loop: true,
            autoplay: true,
            smartSpeed: 1500,
            dots: true,
            responsive: {
                0: {
                    items: 1
                },
                576: {
                    items: 2
                },
                992: {
                    items: 3
                },
                1400: {
                    items: 4
                }
            }
        });
    }

    // *************************************
    // :: 5.0 Testimonial Slides Active Code
    // *************************************
    if ($.fn.owlCarousel) {
        var testimonialSlide = $('.testimonial-slides');
        testimonialSlide.owlCarousel({
            items: 1,
            margin: 0,
            loop: true,
            autoplay: true,
            autoplayTimeout: 10000,
            smartSpeed: 1500,
            nav: true,
            navText: ['<i class="arrow_carrot-left"></i>', '<i class="arrow_carrot-right"></i>']
        });
    }

    // ******************************
    // :: 6.0 Team Slides Active Code
    // ******************************
    if ($.fn.owlCarousel) {
        var teamSlide = $('.team-sildes');
        teamSlide.owlCarousel({
            items: 4,
            margin: 50,
            loop: true,
            autoplay: true,
            smartSpeed: 1500,
            dots: true,
            responsive: {
                0: {
                    items: 1
                },
                576: {
                    items: 2
                },
                992: {
                    items: 3
                },
                1400: {
                    items: 4
                }
            }
        });
    }

    // *******************************
    // :: 7.0 ImagesLoaded Active Code
    // *******************************
    if ($.fn.imagesLoaded) {
        $('.uza-portfolio').imagesLoaded(function () {
            // filter items on button click
            $('.portfolio-menu').on('click', 'button', function () {
                var filterValue = $(this).attr('data-filter');
                $grid.isotope({
                    filter: filterValue
                });
            });
            // init Isotope
            var $grid = $('.uza-portfolio').isotope({
                itemSelector: '.single-portfolio-item',
                percentPosition: true,
                masonry: {
                    columnWidth: '.single-portfolio-item'
                }
            });
        });
    }

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

})(jQuery);