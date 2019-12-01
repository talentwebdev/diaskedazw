(function ( $ ) {
  function SmoothCarousel(el)
  {
    this.el = el;
    this.slide = el.find('.slider-single');
    this.slideTotal = this.slide.length - 1;
    this.slideCurrent = -1;
    this.left = el.find('.slider-left').first();
    this.right = el.find('.slider-right').first();
    var parent = this;
    this.left.on('click', function() {
      parent.slideLeft();
    });
    this.right.on('click', function() {
      parent.slideRight();
    });
    this.slideInitial();
  }
  
  SmoothCarousel.prototype.slideInitial = function() {
    var parent = this;
    this.slide.addClass('proactivede');
    setTimeout(function() {
      parent.slideRight();
    }, 500);
  }

  SmoothCarousel.prototype.slideRight = function(){
    var parent = this;
    if (parent.slideCurrent < parent.slideTotal) {
      parent.slideCurrent++;
    } else {
      parent.slideCurrent = 0;
    }

    if (parent.slideCurrent > 0) {
      var preactiveSlide = parent.slide.eq(parent.slideCurrent - 1);
    } else {
      var preactiveSlide = parent.slide.eq(parent.slideTotal);
    }
    var activeSlide = parent.slide.eq(parent.slideCurrent);
    if (parent.slideCurrent < parent.slideTotal) {
      var proactiveSlide = parent.slide.eq(parent.slideCurrent + 1);
    } else {
      var proactiveSlide = parent.slide.eq(0);

    }

    parent.slide.each(function() {
      var thisSlide = $(this);
      if (thisSlide.hasClass('preactivede')) {
        thisSlide.removeClass('preactivede preactive active proactive').addClass('proactivede');
      }
      if (thisSlide.hasClass('preactive')) {
        thisSlide.removeClass('preactive active proactive proactivede').addClass('preactivede');
      }
    });
    preactiveSlide.removeClass('preactivede active proactive proactivede').addClass('preactive');
    activeSlide.removeClass('preactivede preactive proactive proactivede').addClass('active');
    proactiveSlide.removeClass('preactivede preactive active proactivede').addClass('proactive');
  }

  SmoothCarousel.prototype.slideLeft = function() {
    var parent = this;
    if (parent.slideCurrent > 0) {
      parent.slideCurrent--;
    } else {
      parent.slideCurrent = parent.slideTotal;
    }

    if (parent.slideCurrent < parent.slideTotal) {
      var proactiveSlide = parent.slide.eq(parent.slideCurrent + 1);
    } else {
      var proactiveSlide = parent.slide.eq(0);
    }
    var activeSlide = parent.slide.eq(parent.slideCurrent);
    if (parent.slideCurrent > 0) {
      var preactiveSlide = parent.slide.eq(parent.slideCurrent - 1);
    } else {
      var preactiveSlide = parent.slide.eq(parent.slideTotal);
    }
    parent.slide.each(function() {
      var thisSlide = $(this);
      if (thisSlide.hasClass('proactivede')) {
        thisSlide.removeClass('preactive active proactive proactivede').addClass('preactivede');
      }
      if (thisSlide.hasClass('proactive')) {
        thisSlide.removeClass('preactivede preactive active proactive').addClass('proactivede');
      }
    });
    preactiveSlide.removeClass('preactivede active proactive proactivede').addClass('preactive');
    activeSlide.removeClass('preactivede preactive proactive proactivede').addClass('active');
    proactiveSlide.removeClass('preactivede preactive active proactivede').addClass('proactive');
  }

  $.fn.smoothcarousel = function(options){
    var carousel = new SmoothCarousel($(this), options);
    return carousel;
  }
}(jQuery));
/*
  var slide = $('.slider-single');
  var slideTotal = slide.length - 1;
  var slideCurrent = -1;

  function slideInitial() {
    slide.addClass('proactivede');
    setTimeout(function() {
      slideRight();
    }, 500);
  }

  function slideRight() {
    if (slideCurrent < slideTotal) {
      slideCurrent++;
    } else {
      slideCurrent = 0;
    }

    if (slideCurrent > 0) {
      var preactiveSlide = slide.eq(slideCurrent - 1);
    } else {
      var preactiveSlide = slide.eq(slideTotal);
    }
    var activeSlide = slide.eq(slideCurrent);
    if (slideCurrent < slideTotal) {
      var proactiveSlide = slide.eq(slideCurrent + 1);
    } else {
      var proactiveSlide = slide.eq(0);

    }

    slide.each(function() {
      var thisSlide = $(this);
      if (thisSlide.hasClass('preactivede')) {
        thisSlide.removeClass('preactivede preactive active proactive').addClass('proactivede');
      }
      if (thisSlide.hasClass('preactive')) {
        thisSlide.removeClass('preactive active proactive proactivede').addClass('preactivede');
      }
    });
    preactiveSlide.removeClass('preactivede active proactive proactivede').addClass('preactive');
    activeSlide.removeClass('preactivede preactive proactive proactivede').addClass('active');
    proactiveSlide.removeClass('preactivede preactive active proactivede').addClass('proactive');
  }

  function slideLeft() {
    if (slideCurrent > 0) {
      slideCurrent--;
    } else {
      slideCurrent = slideTotal;
    }

    if (slideCurrent < slideTotal) {
      var proactiveSlide = slide.eq(slideCurrent + 1);
    } else {
      var proactiveSlide = slide.eq(0);
    }
    var activeSlide = slide.eq(slideCurrent);
    if (slideCurrent > 0) {
      var preactiveSlide = slide.eq(slideCurrent - 1);
    } else {
      var preactiveSlide = slide.eq(slideTotal);
    }
    slide.each(function() {
      var thisSlide = $(this);
      if (thisSlide.hasClass('proactivede')) {
        thisSlide.removeClass('preactive active proactive proactivede').addClass('preactivede');
      }
      if (thisSlide.hasClass('proactive')) {
        thisSlide.removeClass('preactivede preactive active proactive').addClass('proactivede');
      }
    });
    preactiveSlide.removeClass('preactivede active proactive proactivede').addClass('preactive');
    activeSlide.removeClass('preactivede preactive proactive proactivede').addClass('active');
    proactiveSlide.removeClass('preactivede preactive active proactivede').addClass('proactive');
  }
  var left = $('.slider-left');
  var right = $('.slider-right');
  left.on('click', function() {
    slideLeft();
  });
  right.on('click', function() {
    slideRight();
  });
  slideInitial();
});
*/