(function($){

    /**
     * 1. fetch all articles from video.
     */
    var selected_article = null;   

    
    var initComponent = function(){
        $("#btn-article-delete").addClass("disabled");
        $("#btn-article-save").addClass("disabled");
        $(".Editor-editor").html("");
        selected_article = null;
    }

    var articleList = new ListComponent( $("#articlelist"), {
        addItemElement: addArticleElement,
        onClick: function(article, el)
        {
            console.log(article);
            console.log( article.content );
            $.get("getarticlecontent", {articleid: article.id})
                .done(data => {
                    $(".Editor-editor").html( data.content );
                    selected_article = data;

                    $(".selected").removeClass('selected');
                    el.addClass('selected');

                    $("#btn-article-delete").removeClass("disabled");
                    $("#btn-article-save").removeClass("disabled");
                })
                .fail(err => {});
            
        }
    });
    function addArticleElement( article )
    {
        var html = "" + 
            '<li article-id="'+article.id+'" class="list-group-item" style="display:flex; flex-direction: row;">' +
                '<div style="width:30%;" >' +
                    '<img src="' + asset_url + "/" + article.poster_img + '" alt="" srcset="">' +
                '</div>' + 
                "<div style=' width: 70%; padding: 10px;' >" +
                    "" + article.title + "" +
                "</div>" +
            "</li>";
        //console.log( html );
    
        return html;
    }
    $.get( 'getarticles', {
                count: -1,
                partnerid: partner.id
            } ) 
            .done( function(data) {
                console.log( 'getarticles success', data );

                articleList.addItems( data );
            })
            .fail( function(err){
                console.log( 'getarticles fail', err );
            });
    $( "#btn-article-save" ).click( function(){
        if(selected_article == null)    return;

        $.post( 'addarticle', {
            _token: csrf_token,
            articleid: selected_article.id,
            imgurl: selected_article.poster_img,
            title: selected_article.title,
            content: $( ".Editor-editor").html(),
            summary: $(".Editor-editor").text().substr(0, 80) + "..."
        })
        .done( function(data){
            console.log( 'addarticle success', data );
            alert( "done" );
        })
        .fail( function(err){
            console.log( "addarticle fail", err);
        });
    });

    $("#btn-article-delete").click(function(){
        $.post("deletearticle", {
            _token: csrf_token,
            articleid: selected_article.id
        })
        .done(data => {            
            $(".list-group-item[article-id='"+selected_article.id+"']").remove();
            initComponent();            
        })
        .fail(err => {});
    });


    initComponent();
}(jQuery))