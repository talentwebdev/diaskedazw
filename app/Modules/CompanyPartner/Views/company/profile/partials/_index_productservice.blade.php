


<section class='uza-services-area' style='padding: 50px; background-color:rgba(0, 0, 0, 0.7); position:relative;'>
    <div class="advertise-title" style="top: 0; transform: translateY(-100%); opacity: 0.7; border-radius: 20px 20px 0px 0px; background:black; left: 10%; z-index:1;  width: auto; padding-left: 30px; padding-right: 30px;">Εκπτώσεις / Προσφορές</div>
    <div class='row '>
        <div class='owl-carousel owl-theme promote-packages-container'>
        @foreach($discounts as $value)
            <div class='item'>
                <div class='row'>
                    
                    <div class='col-md-8' style='text-align:center;'>
                        <div style='color:#FFF; font-weight:bold; font-size:16px;'>&nbsp;
                               <i product-id='{{ $value->id }}' class='fas fa-star {{ $value->isLike ? "active" : "" }}'></i> &nbsp;
                            <span style='color:#F6FAFF;'>{{ $value->title }}  &nbsp;</span>                            
                            
                        </div>
                        <div>
                            <span style='color:#FFF; position:relative; left:10px;'> {{ $value->description }} </span>
                        </div>
                        <div>
                            
                        </div>
                    </div>
                </div>
            </div>
        @endforeach

    
        </div>
    </div>
</section>



<script>
$(".promote-packages-container").ready(e => {
    if($.fn.owlCarousel)
    { 
        var owl = $('.promote-packages-container');
        owl.owlCarousel({
            margin: 10,
            loop: true,
            autoplay: true,
            autoplayTimeout: 5000,
            smartSpeed: 1000,
            responsiveClass:true,
            responsive: {
                0: {
                    items: 1
                },
                500: {
                    items: 2
                },
                1000: {
                    items: 3
                }
            }
        });
        $(".promote-packages-container .owl-item.active").removeClass("no-border")
                                                        .last().addClass("no-border");  
                                                        
        owl.on('changed.owl.carousel', function(event){

            $(".promote-packages-container .owl-item").removeClass("no-border");                    
            var items = $(".promote-packages-container .owl-item");
            var count = items.length;
            $(items[(event.item.index + event.page.size - 1) % count]).addClass('no-border');
            console.log("changed owl carousel");                    
        });
    }
});
$("body").click(e => {
    if($(e.target).hasClass("fa-star"))
    {
        $.post("/likeproduct", {_token: csrf_token, product_id: $(e.target).attr("product-id")})
            .done(data => {
                if(data == "failed") return;

                $("i.fa-star[product-id='"+$(e.target).attr("product-id")+"']").parent().find(".count").text(data);
                $("i.fa-star[product-id='"+$(e.target).attr("product-id")+"']").addClass("active");
            })
            .fail(err => {});
    }
});
</script>