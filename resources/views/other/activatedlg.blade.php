
<!-- Modal: modalAbandonedCart-->
<div class="modal fade right" id="modalActivationPay" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-info" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'><i style='color:#fff;' class="fas fa-shopping-cart"></i> Ανανεώστε την μηνιαία συνδομή σας για περισσότερη Διασκέδαση!
                </p>
        
                <i class="fas fa-times" class="close" data-dismiss="modal"></i>
            </div>
    
        <!--Body-->
            <div class="modal-body">
    
                <div >
                    <label class="radio-btn-container package-active-option" type='1' style='font-size:14px;'>
                        Ανανέωση συνδομής με 55€
                        <input type="radio" class="package-activation" name="package-activation" checked="checked">
                        <span class="checkmark"></span>
                    </label>
                    <p style='padding-left:15px;font-size:14px;'> 100 πόντοι στο mlm.</p>
                </div>
                <div >
                    <label class="radio-btn-container package-active-option" type='2' style='font-size:14px;'>
                        Ανανέωση συνδομής με 95€
                        <input type="radio" class="package-activation" name="package-activation">
                        <span class="checkmark"></span>
                    </label>
                    <p style='padding-left:15px;font-size:14px;'> 200 πόντοι στο mlm.</p>
                </div>      
                <div class="row">                
                    <div class="col-12">
                        <div id='activation-dropin-container'></div>
                        <p class='err-notice' style='color: #e00;'></p>                            
                    </div>
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-outline-info waves-effect" id="buyactivation">ΣΥΝΕΧΕΙΑ</button>
                <button type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">ΟΧΙ ΤΩΡΑ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Modal: modalAbandonedCart-->
    
@push('scripts')
<script>
    var active_type = 1;
    braintree.dropin.create({
        authorization: token,
        container: "#activation-dropin-container"
    }, function (createErr, instance){
        $("#preloader_dialog").css( 'display', 'none' );

        $( "#buyactivation" ).on( 'click', function() {
            instance.requestPaymentMethod(function (err, payload){
                $.post("payment.active.process", {_token: csrf_token, payload: payload, type: active_type})
                    .done(function(data){
                        console.log("payment.active.process successed", data);
                        if(data.success)
                        {
                            alert("activation success");
                            location.href = "home";
                        }
                    })
                    .fail(function(){});
            });
        });
    });
    $(document).ready(function(){
        $(".package-active-option").click(function(){
            active_type = $(this).attr("type");
        });
    });
</script>
@endpush

<link rel='stylesheet' href="{{ asset('plugins/radiobutton/radiobutton.css') }}">