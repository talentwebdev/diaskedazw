function moveToSelected(element) {

  if (element == "next") {
    var selected = $(".selected").next( "div" );
    if(selected.length == 0)
      selected = $(".selected").parent().children("div").first();
  } else if (element == "prev") {
    var selected = $(".selected").prev( "div" );
    if(selected.length == 0)
      selected = $(".selected").parent().children("div").last();
  } else {
    var selected = element;
  }

  var next = $(selected).next( "div" );
  var prev = $(selected).prev( "div" );  

  if(next.length == 0)
    next = $(selected).parent().children("div").first();
  if(prev.length == 0)
    prev = $(selected).parent().children("div").last();

  var prevSecond = $(prev).prev( "div" );
  var nextSecond = $(next).next( "div" );
  if(nextSecond.length == 0)
    nextSecond = $(selected).parent().children("div").first();
  if(prevSecond.length == 0)
    prevSecond = $(selected).parent().children("div").last();

  $(".selected").parent().children("div").removeClass().addClass('hideLeft');
  
  var hideRight = nextSecond.next("div");
  if(hideRight.length == 0)
    hideRight = $(selected).parent().children("div").first();
  hideRight.removeClass().addClass("hideRight");

  $(selected).removeClass().addClass("selected");

  $(prev).removeClass().addClass("prev");
  $(next).removeClass().addClass("next");

  $(nextSecond).removeClass().addClass("nextRightSecond");
  $(prevSecond).removeClass().addClass("prevLeftSecond");
/*
  $(nextSecond).nextAll( "div" ).removeClass().addClass('hideRight');
  $(prevSecond).prevAll( "div" ).removeClass().addClass('hideLeft');
  */

}

// Eventos teclado
$(document).keydown(function(e) {
    switch(e.which) {
        case 37: // left
        moveToSelected('prev');
        break;

        case 39: // right
        moveToSelected('next');
        break;

        default: return;
    }
    e.preventDefault();
});

$('#carousel div').click(function() {
  moveToSelected($(this));
});

$('#prev').click(function() {
  moveToSelected('prev');
});

$('#next').click(function() {
  moveToSelected('next');
});
