@extends("layouts.app")

@section('content')
    <!--
    <div class='advertise-bubble-section'>
        <img src='{{ asset("img/core-img/slider-bg.jpg") }}' style='width:100%;'>
        <div class='advertise-text'>
            <div class='advertise-title' >Εκπτώσεις</div>
            asldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs fasldkfjsldfksjdlfksdjsldfksdjlfksdjf sldkfjsdlfk slksdjflsdkfj lskdfj lskfjsl kjslf ksjldf ksjlf sjflskdfj lskfs f
        </div>
        <img src='{{ asset("img/core-img/ballon discount.png") }}' class='bubble x1'>
        <img src='{{ asset("img/core-img/ballon discount.png") }}' class='bubble x2'>
    </div>
    -->
    @include('partner.test.firstpage')
    @include('user.component.menudetail')
    <div class='advertise-section'>


        <input value="{{$user_id}}" type="hidden" id="user_id" />

        <div class='row' style='width:80%;  margin:auto; opacity:1.0; filter: alpha(opacity=30);'>

    
            <div class='col-md-8 video-area' >
                <div class='advertise-text' style=" background:black; opacity:0.8;">
                    <div class='advertise-title' style="posotion:relative; top:-3px;background:black; opacity:1; z-index:1;" >E - SHOP</div>
                  Ως μέλος Diaskedazw επωφελείστε εφόρου ζωής, αποκλειστικές εκπτώσεις και προσφορές από τις συμβεβλημένες εταιρείες και τους συνεργάτες που παρέχουν υπηρεσίες. 
                  Απλά, δείξτε την κάρτα μέλους σας!
Ανακαλύψτε τις πληροφορίες τους πιο κάτω, σύντομα και οι ιστοσελίδες τους.

                </div>
                
            </div>
            <div class="col-md-4 info-area">
                <div class='announce-panel'>
                    <div class='card'>
                        <div class='card-body' style="position:relative; " >
                            <ul class='list-group' id='announce-list'>
                            <!--  
                                <li class='list-group-item' style="display:flex; flex-direction: row;">
                                    <div style="width: 30%; padding: 10px;"><img src="{{ asset('images/overview/121563525434.jpg') }}" width='100%' /></div>
                                    <div style="padding: 10px;">
                                        <div class='announce-title'>Τίτλος </div>
                                        <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                        <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                    </div>
                                </li>
                            
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                </li>
                                
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                </li>
                                
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                </li>
                                
                                <li class='list-group-item'>
                                    <div class='announce-title'>Τίτλος </div>
                                    <div class='announce-content' style="color:#cccccc;">Πληροφορίες</div>
                                    <div class='announce-date'>Μάης 22, 2019 20:28</div>
                                    <p></p>
                                </li>
                                -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- diask card promote section -->
    <!--
    <div class='diask-card-promote-section row'>
        <div class='col-md-4'>
            <img src="{{ asset('img/core-img/diask_card.png') }}" >
        </div>
        <div class='col-md-8'>
            <h4 class='promote-text-title'>Article Lecture 1</h4>
            <p>
                Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio Article Lecture 2 Video and Audio 
            </p>
        </div>
    </div>
    -->
    <!-- diask card promote section end -->

    <!-- ***** Promote Packages Area Start ***** -->
    <section class='uza-services-area' style='padding: 50px; background-color:rgba(0, 0, 0, 0.7); position:relative;'>

        <div class="advertise-title" style="top: 0; transform: translateY(-100%); opacity: 0.7; border-radius: 20px 20px 0px 0px; background:black; left: 10%; z-index:1;  width: auto; padding-left: 30px; padding-right: 30px;">Advertise</div>
        <div class='row '>            
            <div class='owl-carousel owl-theme promote-packages-container'>
                
            </div>
        </div>
    </section>

    <!-- diask product setion -->
    <section class='uza-services-area' style='background-color:#EEE;'>
        <div class='diask-product-section'>
            <div class='side-product-container row'>
                <div class='mobile-sidebar-container col-md-12'>
                    <h4 class='product-sidebar-title'>Εταιρείες & Συνεργάτες</h4>
                    <div class="wrap-select">
                        <label>Κατηγορία:</label>
                        <div id="dd1" class="wrapper-dropdown-3">
                            <span>Κατηγορία...</span>
                            <ul class="dropdown" id='category-dropdown'>
                                							
                            </ul>
                        </div>
                    </div>
                </div>
                <div class='sidebar-container col-md-3'>
                    @include('user.product.component.sidebar')
                </div>
                <div class='product-panel-container col-md-9'>
                    @include('user.product.component.productpanel')
                </div>
            </div>
        </div>
    </section>
    <!-- diask product section end -->

    <!-- ***** Become a partner Area Start ***** -->
    <section class="uza-services-area become-partner-section" style='z-index: 200; background-color:#AAA;'>
        <div class='become-partner' style='width: 80%; margin:auto;'>
            <div class='row' >
                <div class='col-md-6' style='z-index: 200; position:relative;'>
                    <img src='{{ asset("img/bg-img/layer-125.png") }}' />
                </div>
                <div class='col-md-6' style='text-align:center; color: #000; margin-top:-10px;'>
                    <h2 style='font-weight: 800; color:#2196F3;'>Θέλετε να προσφέρετε και εσείς; </h2>
                    <h5 style='font-weight: 600; margin-top:-5px;'> Ενημερωθείτε για τα ωφελήματα και πλεονεκτήματα των επιχειρήσεων που συνεργάζονται με την Diaskedazw.  </h2><p></p>
                    <a style='margin-top: 10px; padding-left: 50px; padding-right: 50px; border-radius: 20px; padding-top:10px; padding-bottom:10px; background-color:#2196F3; color:#FFF;'>ΕΝΔΙΑΦΕΡΟΜΑΙ</a>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Become a partner Area End ***** -->  

    @include('other.footer')
@endsection

@push('scripts')
<script src="{{ asset('js/user-pages/product/index.js') }}"></script>

<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_yellow.js") }}'></script> 
@endpush
@push('styles')
<link rel='stylesheet' href="{{ asset('css/user-pages/product/style.css') }}">
<link rel='stylesheet' href="{{ asset('css/user-pages/partnerprofile/sitecarousel.css') }}">
<link rel='stylesheet' href="{{ asset('plugins/select-component/select-component.css') }}">
@endpush