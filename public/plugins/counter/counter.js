(function($){
    function Counter(el)
    {
        this.el = el;

        var parent = this;
        //var numCnt = Math.floor(Math.log(parseInt(parent.el.attr('data-count'))) / Math.log(10)) + 1;
        var numCnt = parent.el.attr('data-count').length;
        for(var i = 0 ; i < numCnt ; i++)
        {
            $("<div></div>").addClass("num").text(0).appendTo(parent.el);        
            if((numCnt - i - 1) != 0 && (numCnt - i - 1) % 2 == 0)
                $("<div style='display:inline-block; font-size: 12px; font-weight:bold; margin-left:5px; margin-right:5px;'></div>").text(',').appendTo(parent.el);
        }
        $({countNum:parseInt(parent.el.attr("data-current"))}).animate({
                countNum:parseInt(parent.el.attr('data-count'))
            },
            {
                duration: 2000,
                easing: 'linear', 
                step: function(){
                    var currentNum = Math.floor(this.countNum);
                    var numChilds = parent.el.find('.num');
                    for(var i = numCnt - 1;  currentNum && i >= 0 ; i--, currentNum = Math.floor(currentNum / 10))
                        $(numChilds[i]).text(currentNum % 10);
                },
                complete: function()
                {
                    var currentNum = Math.floor(this.countNum);
                    var numChilds = parent.el.find('.num');
                    for(var i = numCnt - 1;  currentNum && i >= 0 ; i--, currentNum = Math.floor(currentNum / 10))
                        $(numChilds[i]).text(currentNum % 10);
                }
            }
        );
    }
    $.fn.my_counter = function()
    {
        return new Counter($(this));
    }
}(jQuery))