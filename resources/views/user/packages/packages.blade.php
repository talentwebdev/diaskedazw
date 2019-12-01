@extends("layouts.app")

@section('menu-detail')
    @include('user.component.menudetail')
@endsection

@section('content')
    @include('partner.test.firstpage')
    <!-- diask card promote section -->
    <div class='diask-card-promote-section row'>
        <div class='col-md-4 card-image'>
            <img src="{{ asset('img/core-img/diask_card.png') }}" >
        </div>
        <div class='col-md-12 card-description'>
            <img src="{{ asset('img/core-img/diask_card.png') }}" class='card-image' style='float:right; margin-right: 10px;'>
            <div class='card-description-text'>
            <h4 class='promote-text-title'>Κάρτες </h4>
            <p>Με οποιουδήποτε Πακέτο αποκτάτε την προσωπική σας κάρτα Diaskedazw, η οποία δίνει πρόσβαση σε εκπτώσεις και προσφορές από τις Συμβεβλημένες επιχειρήσεις και τους Συνεργάτες της Diaskedazw.
             </p>  
            <p>

 Όλα τα Πακέτα παρέχουν στους κατόχους τους την δυνατότητα ένταξης στην παγκόσμια εκπαιδευτική ομάδα της Diaskedazw, που με βάση το τρίπτυχο «ΜΥΑΛΟ, ΨΥΧΗ ΚΑΙ ΣΩΜΑ», βοηθά άμεσα τα Μέλη και τους Συνεργάτες της να αναπτυχθούν σε όλους τους τομείς της ζωής, μέσα από την εκπαίδευση αλλά και την χρηματοπιστωτική αγορά.
 
  </p> 
 
            </div>
        </div>
    <!--
        <div class='col-md-4'>
            <img src="{{ asset('img/core-img/diask_card.png') }}" >
        </div>
        <div class='col-md-8'>
            <h4 class='promote-text-title'>Πακέτα </h4>
            <p>Με την  αγορά οποιουδήποτε πακέτου, αποκτάτε την προσωπική σας κάρτα μέλους Diaskedazw, η οποία δίνει πρόσβαση σε όλες τις υπηρεσίες που προσφέρει. 
          </p>  <p>
Εφόρου ζωής επωφελείστε εκπώσεις και προσφορές από τις συμβεβλημένες εταιρείες και τους συνεργάτες που παρέχουν υπηρεσίες.

</p><p>Η μηναία συνδρομή σας κρατά ενεργούς χωρίς περιορισμούς!

            </p>
        </div>
    -->
    </div>
    <!-- diask card promote section end -->

    <!-- ***** Promote Packages Area Start ***** -->
    <section class='uza-services-area' style='padding: 50px; background-color:rgba(0, 0, 0, 0.7);'>
        <div class='row promote-packages-container'>
        </div>
    </section>
    <!-- ***** Promote Packages Area End ***** -->

    <!-- packages container section -->    
    <div class='packages-container-parent'>
        <div class='packages-container row'>
        </div>
        <!--
        <div class='col-md-3 packages-item-container'>
            <img src="{{ asset('img/package-img/packages-1.png') }}">
            <div style='padding:30px;'>
                <a>Login</a>
            </div>
        </div>
        -->
    </div>
    <!-- packages container section end -->
    @auth
    <!-- ***** Promote Packages Area Start ***** -->
    <section class='uza-services-area ellin-packages-section' style='padding: 50px; background-color:rgba(0, 0, 0, 0.7);'>
        <div class='row ellin-packages-container'>
        </div>
    </section>
    <!-- ***** Promote Packages Area End ***** -->
    @endauth
    
    <!-- Modal: modalAbandonedCart-->
    @include("other.buypackagedlg")
    
    <!-- Modal: modalAbandonedCart-->

    @include('other.footer')
@endsection

@push('scripts')
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>

<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js.js") }}'></script> 
<script src="{{ asset('js/user-pages/packages/index.js') }}"></script>
@endpush

@push('styles')
<style>


.diask-card-promote-section img.card-image{
    float: right;
    -webkit-shape-outside: url({{ asset('img/core-img/diask_card_mask.png') }});
    shape-outside: url({{ asset('img/core-img/diask_card_mask.png') }});
    shape-image-threshold: 0.2;
    margin-right: -10% !important;
}

.diask-card-promote-section > div.card-image{
    display: none;
}

@media only screen and (min-width: 400px) and (max-width: 768px)
{
    .diask-card-promote-section img.card-image{
        margin-right: -50px !important;
        width: 40%;
        height: auto !important;
    }
}

@media only screen and (max-width: 399px){
    .diask-card-promote-section > div.card-image{
        display: block;
    }
    .diask-card-promote-section img.card-image{
        display: none;
    }
}

</style>
<link rel='stylesheet' href="{{ asset('css/user-pages/packages/style.css') }}">
<link type='text/css' href='{{ asset("css/loading/style.css") }}' rel='stylesheet'>
@endpush