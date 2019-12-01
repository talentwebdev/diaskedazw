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
    <div class='advertise-section' >
        <div class='row' style='width:80%; margin:auto; '>
            <div class='col-md-8 video-area'>
                <div class='advertise-text'>
                    <div class='advertise-title' style="background:#107384;">ΕΚΠΤΩΣΕΙΣ</div>
                  Ως μέλος της Diaskedazw επωφελείστε εφόρου ζωής, αποκλειστικές εκπτώσεις και προσφορές από τις συμβεβλημένες εταιρείες και τους συνεργάτες μας, που παρέχουν υπηρεσίες. 
                  Απλά, δείξτε την κάρτα μέλους ή την κάρτα εκπτώσεων στις επιχειρήσεις με την σήμανση Diaskedazw!
                </div>
                
            </div>
            <div class='col-md-4 info-area'>
                <div id="loginPanel" >
                    
                    <!--div class='card' >
                    <!-- diask card promote section -->
                        
                        <img src="/images/discounts/discountcardweb.jpg" alt="Discount card" style="border-radius:10px;" >
                        
                         <!-- diask card promote section -->
                        
                     <!--div class='header'>Καταχώρηση :      Εταιρείας / Συνεργάτη </div>
                        <div class='card-body'>
                            <div class='form-group row'>
                                <div class='col-md-4'>
                                    <label>Ονοματεπώνυμο:</label>
                                </div>
                                <div class='col-md-8'>
                                    <input type='text' id='email-company' class='form-control' name='name' required />                                        
                                </div>
                            </div>
                            <div class='form-group row'>
                                <div class='col-md-4'>
                                    <label>Επιχείρηση:</label>
                                </div>
                                <div class='col-md-8'>
                                    <input type='text' id='email-type' class='form-control' name='surname' required />
                                </div>                                         
                            </div>
                            <div class='form-group row'>
                                <div class='col-md-4'>
                                    <label>Email:</label>
                                </div>
                                <div class='col-md-8'>
                                    <input id='email-email' type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>
                                </div>                                         
                            </div>
                            <div class='form-group row'>
                                <button class='btn' id='sendemail-btn' style='background-color:rgb(76, 83, 75); border-radius: 20px 20px; width:80%; margin:auto;'>Αποστολη</button>
                                 <!-- diask card promote section -->
                            </div>
                        <!--/div>
                        <!-- diask card promote section -->
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
    <section class='uza-services-area' style='padding: 50px; background-color:rgba(0, 0, 0, 0.7); position:relative'>
        <div class="advertise-title" style="top: 0; transform: translateY(-100%); opacity: 0.7; border-radius: 20px 20px 0px 0px; background:black; left: 10%; z-index:1;  width: auto; padding-left: 30px; padding-right: 30px;">Διαφήμιση</div>
        <div class='row '>
            <div class='owl-carousel owl-theme promote-packages-container'>
                
            </div>
        </div>
    </section>

    <!-- diask company setion -->
    <section class='uza-services-area' style='background-color:#EEE;'>
        <div class='diask-company-section'>
            <div class='side-company-container row'>
                <div class='mobile-sidebar-container col-md-12'>
                    <h4 class='company-sidebar-title'>Εταιρείες & Συνεργάτες</h4>
                    <div class="wrap-select">
                        <label>Επαρχία:</label>
                        <div id="dd" class="wrapper-dropdown-3">
                            <span>Επαρχία...</span>
                            <ul class="dropdown" id='area-dropdown'>						
                            </ul>
                        </div>

                        <label>Κατηγορία:</label>
                        <div id="dd1" class="wrapper-dropdown-3">
                            <span>Κατηγορία...</span>
                            <ul class="dropdown" id='category-dropdown'>
                                							
                            </ul>
                        </div>
                    </div>
                </div>
                <div class='sidebar-container col-md-3'>
                    @include('user.discount.component.sidebar')
                </div>
                <div class='company-panel-container col-md-9'>
                    @include('user.discount.component.company')
                </div>
            </div>
        </div>
    </section>
    <!-- diask company section end -->

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
                    <a href="https://diaskedazwdiscounts.com/contactus" style='margin-top: 10px; padding-left: 50px; padding-right: 50px; border-radius: 20px; padding-top:10px; padding-bottom:10px; background-color:#2196F3; color:#FFF;'>ΕΝΔΙΑΦΕΡΟΜΑΙ</a>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Become a partner Area End ***** -->  

    @include('other.footer')
@endsection

@push('scripts')
<script src="{{ asset('js/user-pages/discount/index.js') }}"></script>

<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_grey.js") }}'></script> 
@endpush
@push('styles')
<link rel='stylesheet' href="{{ asset('css/user-pages/discount/style.css') }}">
<link rel='stylesheet' href="{{ asset('css/user-pages/partnerprofile/sitecarousel.css') }}">
<link rel='stylesheet' href="{{ asset('plugins/select-component/select-component.css') }}">
@endpush