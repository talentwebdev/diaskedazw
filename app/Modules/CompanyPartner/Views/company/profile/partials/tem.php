<section class='uza-services-area' style='padding: 50px; background-color:rgba(0, 0, 0, 0.7); position:relative;'>
    <div class="advertise-title" style="top: 0; transform: translateY(-100%); opacity: 0.7; border-radius: 20px 20px 0px 0px; background:black; left: 10%; z-index:1;  width: auto; padding-left: 30px; padding-right: 30px;">Product - Service</div>
    <div class='row '>
        <div class='owl-carousel owl-theme promote-packages-container'>
        @foreach($products as $product)
            <div class='item'>
                <div class='row'>
                    <div class='col-md-4' style='position:relative;'>
                        <div style='position:relative; top:50%; transform: translateY(-50%);'>
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
    </div>
</section>
