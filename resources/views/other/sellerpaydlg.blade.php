@if (Auth::user() != null && Auth::user()->isActivated() && !Auth::user()->isActiveEshop())
<div class="modal fade right " id="modalsellerpaydlg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-bottom-right modal-notify" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #000;'><i style='color:#000;'class="fas fa-exclamation"></i> Δημιουργία καταστήματος
                </p>
        
                <i class="fas fa-times" class="close" data-dismiss="modal"></i>
            </div>
    
        <!--Body-->
            <div class="modal-body">
    
                  
                <div class="row">     
                    <h2> Αυτή η υπηρεσία εξαργυρώνεται με 500 βαθμούς Ellin </h2>
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" id='button-ok' class="btn btn-outline-danger waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>ΣΥΝΕΧΕΙΑ</button>
                <button type="button" id='button-cancel' class="btn btn-outline-danger waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>ΟΧΙ ΤΩΡΑ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
@push("scripts")
<script>
$("#button-ok").click(e => {
    $.post("becomeseller", {_token: csrf_token})
        .done(data => {
            if(data == "success")
                $("#modalsellerpaydlg").trigger("onSuccess");
        })
        .fail(err => {});
});
</script>
@endpush
@endif