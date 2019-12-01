(function($){
    'use strict';

    // ******************************************
    // 1. add search event
    // ******************************************
    $('.search-form').on('searchresult', ()=>{});

    // ******************************************
    // 2. get article with search word
    // ******************************************
    $(".search-form").submit((e)=>{
        e.preventDefault();
        $(".lds-roller").css('display', 'block');

        $('#latest-articles').children().remove();
        $("<div class='lds-roller' style='display:block;'><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>")
            .appendTo("#latest-articles");
        $.get('searcharticle', {"partnerid": partner.id, "searchindex":$("#search").val()})
            .done((data)=>{
                console.log('sesarcharticle success', data);
                $("#latest-articles").find('.lds-roller').remove();
                $(".search-form").trigger('searchresult', {data:data});                
                /**
                $(".article-slides").remove();
                $("<div></div>").addClass('article-slides owl-carousel').appendTo(".article-slides-container").ready(()=>{
                    AddArticleElement(data);
                    $(".lds-roller").css('display', 'none');
                });
                */
                
            })
            .fail((err)=>{
                console.log('searcharticle failed', err);
            });
    });

}(jQuery));