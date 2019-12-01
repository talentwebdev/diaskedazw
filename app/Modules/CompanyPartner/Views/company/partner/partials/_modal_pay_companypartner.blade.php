@if (Auth::user() != null && Auth::user()->isActivated())
<div class="modal fade right " id="modal-pay-companypartner" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-bottom-right modal-notify" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #000;'><i style='color:#000;'class="fas fa-exclamation"></i> Ένταξη της επιχείρησης σου στην πλατφόρμα του Mall Υπηρεσιών Diaksedazw
                </p>
        
                <i class="fas fa-times" class="close" data-dismiss="modal"></i>
            </div>
    
        <!--Body-->
            <div class="modal-body">
    
                  
                <div class="row">     
                    <h2> Αυτό το Επιχειρηματικό Πακέτο χρειάζεται 1500 βαθμούς Ellin </h2>
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" id='button-ok' class="btn btn-outline-danger waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>ΑΠΟΔΟΧΗ</button>
                <button type="button" id='button-cancel' class="btn btn-outline-danger waves-effect" data-dismiss="modal" style='padding: 10px; padding-left: 40px; padding-right: 40px;'>ΑΚΥΡΩΣΗ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
@push("scripts")
<script>
$("#modal-pay-companypartner #button-ok").click(e => {
    $.post("{{ route('company.partner.becomepartner') }}",
        {
            _token: "{{ csrf_token() }}",
            user_id : {{ Auth::user()->id }}
        })
        .done(data => {
            
            if(data.success == true)
                location.href = "{{ route('company.partner.create') }}";
            else
            {
                alert("you don't have enough ellin points");
            }
            
        })
        .fail(err => {});
});
</script>
@endpush
@endif