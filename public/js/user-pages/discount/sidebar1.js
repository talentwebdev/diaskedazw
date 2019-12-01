(function($){
    'use-strict';

    /** sticky side bar */
    
    var a = new StickySidebar('.sidebar-container', {
        topSpacing: 80,
        containerSelector: '.sidebar-container'
    });
    

    // ************************************
    // 2. add select category event 
    // ************************************
    var current_param = {area: 1, category: 1};
    $(".company-container").on('getdata', ()=>{});

    $("body").on('click', (e)=>{
        if($(e.target).hasClass('category'))
        {
            current_param.category = $(e.target).attr('id');
            $(".company-container").trigger('getdata', current_param);
        }
        else if($(e.target).hasClass('area'))
        {
            current_param.area = $(e.target).attr('id');
            $(".company-container").trigger('getdata', current_param);
        }
    });
    // *************************************
    // 3. add search button event
    // *************************************
    $(".company-container").on('search', ()=>{});
    $("#search").on('keydown', (e)=>{
        if(e.which == 13)
        {
            var search = $("#search").val();
            $(".company-container").trigger('search', {search:$("#search").val()});
        }
    });
    // ************************************
    // 4. fetch area category 
    // ************************************
    function addAreaElement(areas)
    {
        $('.area-container').children().remove();
        areas.forEach((area)=>{
            var html = "" + 
                '<label class="radio-btn-container">' + area.name + 
                    '<input type="radio" class="area" id="'+area.id+'" name="area">' + 
                    '<span class="checkmark"></span>' +
                '</label>';
            $(html).appendTo('.area-container');

            var html_ ='<li class="area" id="'+area.id+'"><a href="#">' + area.name + '</a></li>'
            $(html_).appendTo("#area-dropdown")
                    .click(function(){
                        current_param.area = $(this).attr('id');
                        $(".company-container").trigger('getdata', current_param);
                    });;
        });
        $(".area-container").children().first().find('input').attr('checked', 'checked');
        new DropDown( $('#dd1') );
    }
    function addCategoryElement(categories)
    {
        $('.category-container').children().remove();
        categories.forEach((category)=>{
            var html = "" + 
                '<label class="radio-btn-container">' + category.name + 
                    '<input type="radio" class="category" id="'+category.id+'" name="category">' + 
                    '<span class="checkmark"></span>' +
                '</label>';
            $(html).appendTo('.category-container');

            var html_ ='<li class="category" id="'+category.id+'"><a href="#">' + category.name + '</a></li>'
            $(html_).appendTo("#category-dropdown")
                    .click(function(){
                            current_param.category = $(this).attr('id');
                            $(".company-container").trigger('getdata', current_param);
                            
                        });;
        });
        $(".category-container").children().first().find('input').attr('checked', 'checked');
        new DropDown( $('#dd') );
    }
    $.get('fetchareacategory')
        .done((data)=>{
            console.log('fetchAreaCategory successed', data);
            addAreaElement(data.area);
            addCategoryElement(data.category);
        })
        .fail((err)=>{
            console.log('fetchAreaCategory failed', err);
        });
    // *******************************
    // 4.0 select component 
    // *******************************
    
    
}(jQuery));