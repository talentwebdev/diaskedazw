
<div class='sticky-sidebar-container'>
    <div class='sticky-sidebar' style='width: 100%;'>
        <div class='menu'>

            <div class="owl-carousel owl-theme" id="carousel_ads_id">
                @foreach($companyads as $ads)
                <div class="item container">
                    <div class="row">
                        <img src="{{ asset($ads->adsimage_url) }}" alt="" style="width: 100%;">
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <img src="{{ asset($ads->logoimage_url) }}" alt="" style="width: 100%;">
                        </div>
                        <div class="col-md-9">
                            <h3 id="h3_headline_id">
                                {{ $ads->headline }}
                            </h3>
                            <h5 id="h3_description_id">
                                {{ $ads->description }}
                            </h5>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            
            <h4> Μενού </h4>
            <div id='home-menu' class="menu-content"> <a href='{{ route("company.profile.index") }}'>Αρχική</a> </div>
            <div id='gallery-menu' class="menu-content"> <a href='{{ route("company.profile.image") }}'>Όλες οι Εικόνες</a> </div>   
            <div id='video-menu' class="menu-content"> <a href='{{ route("company.profile.video") }}'>Όλα τα Videos</a> </div>
            <div id='article-menu' class="menu-content"> <a href='{{ route("company.profile.article") }}'>Όλα τα Άρθρα</a> </div>
                 
            <div id='gallery-menu'> <a href='' user-id="{{ $partner->id }}" id='eshop-link'>E-shop</a> </div>        
            <div id='website-menu'> <a href='{{ $company->link_url }}'>Ιστοσελίδα</a> </div>        

   
            <!-- <form id="myform" role="form"  method="get" action="{{URL::to('product')}}">
                <input type = "hidden" value="{{$partner->id}}" name="user_id" />            
                <div id='website-menu'> <a href='#' onclick="document.getElementById('myform').submit()">Product</a> </div>        
            </form> -->
            
                                
        </div>
        <div>
            <img src="" />
        </div>
        <div style="display: flex;">
            <h5> Current Visit Users: </h5> &nbsp;
            @auth
            <h5 id="current-visit-users"></h5>
            @else
            <a id="login-link"> Login </a>
            @endauth
        </div>


        @if($has_product == 1)

        <div>
                <section class='uza-services-area' style='padding: 20px 30px 20px 30px ; background-color:rgba(0, 0, 0, 0.7); position:relative; margin-top:40px;'>
                    <div class="advertise-title" style="top: 0; transform: translateY(-100%); opacity: 0.7; border-radius: 20px 20px 0px 0px; background:black; left: 10%; z-index:1;  width: auto; padding-left: 30px; padding-right: 30px;">Product - Service</div>
                    <div class='row '>
                                                    
                            @foreach($products as $product)
                                <div class=''>
                                    <div class='row'>
                                        <div class='col-md-4' style='position:relative;'>
                                            <div style='position:relative; top:40%; transform: translateY(-50%);'>
                                                <img class='product-content' product-id='{{ $product->id }}' user-id='{{ $product->user_id }}' src='{{ asset($product->product_img) }}' style='width:100%;'>
                                            </div>
                                        </div>
                                        <div class='col-md-8' style='text-align:center;'>
                                            <div style='color:#FFF; font-weight:bold; font-size:16px;'>&nbsp;
                                                <i product-id='{{ $product->id }}' class='fas fa-star {{ $product->isLike ? "active" : "" }}'></i> &nbsp;
                                                <span class='count'>{{ $product->likeCnt }} </span> &nbsp;
                                                <span style='color:#F6FAFF;'>{{ $product->product_name }} - &nbsp;</span>
                                                <img src='{{ asset('img/diask-img/ellinsds.png') }}' style='display:inline-block; width:9px; height:auto;'>
                                                <span style='color:#22B670;'>{{ $product->product_price }}</span>
                                            </div>
                                            <div>
                                                <span style='color:#FFF;'> {{ $product->product_description }} </span>
                                            </div>
                                            <div>
                                                <button class='btn btn-primary product-content' style='border-color:#DB831F; background-color:#DB831F !important;float:right; padding: 2px; padding-left: 10px; padding-right:10px; font-size:12px;' product-id='{{ $product->id }}' user-id='{{ $product->user_id }}'> Επιλογή </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                    
                        
                    </div>
                </section>
        </div>
        @endif



    </div>
</div> 

@push("scripts")
<script src="{{ asset('plugins/sticky-sidebar/sticky-sidebar.js') }}"></script>
<script src="https://js.pusher.com/4.4/pusher.min.js"></script>
<script>
    new StickySidebar('.sticky-sidebar-container', {
        topSpacing: 80,
        containerSelector: '.mainarea'
    });

/*
    var pusher = new Pusher('b6710519609f96a78b9b');
    var presenceChannel = pusher.subscribe('presence-example');
    presenceChannel.bind('pusher:subscription_succeeded', function() {
        alert("hello");
        var me = presenceChannel.members.me;
        var userId = me.id;
        var userInfo = me.info;
    });
  */  

    Echo.join('company.' + "{{ $company->user_id }}")
        .here(users => {
            $("#current-visit-users").text(users.length);
        })
        .joining((user) => {
            var current_users = parentInt($("#current-visit-users").text());
            current_users ++;
            $("#current-visit-users").text(current_users);

            //addChatComponent(user);           
            
        })
        .leaving((user) => {
            var current_users = parentInt($("#current-visit-users").text());
            current_users --;
            $("#current-visit-users").text(current_users);
        });

    $("#login-link").click(e => {
        $("#email").focus();
    });
    
    $("#eshop-link").click(e => {
        $.post("{{ route('productprofile') }}", {_token: "{{ csrf_token() }}", user_id: $("#eshop-link").attr("user-id")})
                .done(data => {
                    location.href = "{{ route('shopprofile') }}";
                })
                .fail(err => {});
    });

// Company ads Carousel
    $("#carousel_ads_id").ready(e => {
    var owl = $('#carousel_ads_id');
    owl.owlCarousel({
        margin: 30,
        loop: true,
        autoplay: true,
        autoplayTimeout: 5000,
        smartSpeed: 1000,
        responsiveClass:true,
        items: 1
    });
});
</script>
@endpush

@push("styles")
<style>
@media only screen and (max-width:991px){
    #calendar{
        display: none;
    }
}
</style>
@endpush