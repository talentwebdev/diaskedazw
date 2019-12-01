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
    $(".product-container").on('getdata', ()=>{});

    $("body").on('click', (e)=>{
        if($(e.target).hasClass('category'))
        {
            current_param.category = $(e.target).attr('id');
            $(".product-container").trigger('getdata', current_param);
        }
    });
    // *************************************
    // 3. add search button event
    // *************************************
    $(".product-container").on('search', ()=>{});
    $("#search").on('keydown', (e)=>{
        if(e.which == 13)
        {
            var search = $("#search").val();
            $(".product-container").trigger('search', {search:$("#search").val()});
        }
    });
    // ************************************
    // 4. fetch area category 
    // ************************************
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
                            $(".product-container").trigger('getdata', current_param);
                        });;
        }); 
        $(".category-container").children().first().find('input').attr('checked', 'checked');
        new DropDown( $('#dd1') );
    }
    
    $.get("fetchproductcategory")
        .done(data => {
            addCategoryElement(data);
        })
        .fail(err => {});
    // *******************************
    // 4.0 select component 
    // *******************************
    
    
}(jQuery));