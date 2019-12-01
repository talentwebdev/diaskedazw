@if(Auth::user() == null || !Auth::user()->isActivated() || !Auth::user()->isValidProfile())

<!-- Modal: modalAbandonedCart-->
<div class="modal fade right " id="modalactivealert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-bottom-right modal-notify" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #000;'><i style='color:#000;'class="fas fa-exclamation"></i> Υπενθύμιση
                </p>
        
                <i class="fas fa-times" class="close" data-dismiss="modal"></i>
            </div>
    
        <!--Body-->
            <div class="modal-body">
    
                  
                <div class="row">     
                @auth 
                    @if(Auth::user()->isValidProfile() && Auth::user()->active_package != 0)          
                        <p>
                           Η συνδρομή σας χρειάζεται ανανέωση για να συνεχήσετε να απολαμβάνετε όλες τις υπηρεσίες του MALL Diaskedazw.
                        </p>
                    @endif
                    @if(!Auth::user()->isValidProfile())
                        <p>
                            Το προφίλ σας χρειάζεται να ολοκληρωθεί
                        </p>
                    @else
                        <p>
                        Μόνο τα ενεργά μέλη Diaskedazw έχου απεριόριστη πρόσβαση σε όλες τις υπηρεσίες. Ένα διαθέσιμο πακέτο σας περιμένει!
                        </p>
                    @endif
                @endauth
                @if(Auth::user() == null)
                    <p>
                        Προχωρήστε στην Δωρεάν Εγγραφή της Ιστοσελίδας.
                    </p>
                @endif
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" id='button-ok' class="btn btn-outline-danger waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>ΕΝΤΑΞΕΙ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Modal: modalAbandonedCart-->
@endif
@push('scripts')
@auth
@if(Auth::user()->isValidProfile() && Auth::user()->active_package != 0)
<script>
    $("#modalactivealert").on('hidden.bs.modal', function(){
        $("#modalActivationPay").modal();
    });
</script>
@endif
@if(!Auth::user()->isValidProfile())
<script>
    if($("#pageAttr") != undefined && $("#pageAttr").attr("attr") == "profile")
        $("#modalactivealert").hide();
        
    $("#modalactivealert").on('hidden.bs.modal', function(){
        if($("#pageAttr") == undefined || $("#pageAttr").attr("attr") != "profile")
            location.href = "/profile";
    });
</script>
@else
<script>
    $("#modalactivealert #button-ok").click(function(){
        if(authorised)
            location.href="/packages";
        else
            location.href="/register";
    });
</script>
@endif
@endauth
@if(Auth::user() == null)
<script>
     $("#modalactivealert").on('hidden.bs.modal', function(){
        location.href="/register";
    });
</script>
@endif
@endpush