(function($){
    function TeamCarousel(el)
    {
        this.el = el;

        this.children = this.el.children('ul').children('li');
        console.log(this.children);

        var parent = this;
        this.el.find('.prev').click(function(){
            parent.prev();
        });
        this.el.find('.next').click(function(){
            parent.next();
        });
        
        //$(window).load(function(){
            this.el.css('height', this.getMaxHeight() + "px");
        //});
        
        $(window).resize(()=>{
            this.el.css('height', this.getMaxHeight() + "px");
        });
    }

    TeamCarousel.prototype.next = function()
    {
        var mainItem = this.el.children('ul').children('li.main-pos');
        var leftItem = this.el.children('ul').children('li.left-pos');
        var rightItem = this.el.children('ul').children('li.right-pos');

        $(leftItem).removeClass('left-pos').addClass('back-pos');        
        $(mainItem).removeClass('main-pos').addClass('left-pos');
        $(rightItem).removeClass('right-pos').addClass('main-pos');
                
        if($(rightItem).next().length == 0)
            this.el.children('ul').children('li').first().removeClass('back-pos').addClass('right-pos');
        else
            $(rightItem).next().removeClass('back-pos').addClass('right-pos');
    }

    TeamCarousel.prototype.prev = function()
    {
        var mainItem = this.el.children('ul').children('li.main-pos');
        var leftItem = this.el.children('ul').children('li.left-pos');
        var rightItem = this.el.children('ul').children('li.right-pos');
    
        $(leftItem).removeClass('left-pos').addClass('main-pos');
        $(mainItem).removeClass('main-pos').addClass('right-pos');    
        $(rightItem).removeClass('right-pos').addClass('back-pos');    
                
        if($(leftItem).prev().length == 0)
            this.el.children('ul').children('li').last().removeClass('back-pos').addClass('left-pos');
        else
            $(leftItem).prev().removeClass('back-pos').addClass('left-pos');
    }

    TeamCarousel.prototype.getMaxHeight = function(){
        var maxHeight = 0;

        var items = this.el.children('ul').children('li');
        for(var i = 0 ; i < items.length ; i++)
        {
            var element = items[i];
            var height;
            height = ($(element).hasClass('left-pos') || $(element).hasClass('left-pos')) ?
                                     $(element).height() * 1 : $(element).height();
            console.log("getMaxHeight", $(element), height);
            if(maxHeight < height)
                maxHeight = height;
        }
        return maxHeight;
    }

    $.fn.team_carousel = function(){
        return new TeamCarousel($(this));
    }
}(jQuery));