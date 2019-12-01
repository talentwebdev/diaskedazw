
<div class="row" style='padding-bottom:20px; padding-top: 30px; margin-left:0px; margin-right:0px;'>
    <div style='width:90%; margin:auto; position:realtive;'>
        <div class='owl-carousel owl-theme companies-container' id='companies-container'>
        </div>
    </div>
</div>

<form action="{{ route('company.profile.index') }}" method='GET' style="display:none;" id="company-profile-form">
    <input type="text" name="company_id" />
</form>

@push('scripts')
<script src="{{ asset('js/user-pages/partnerprofile/sitecarousel.js') }}"></script>
<script>
$("body").click(e => {
    if($(e.target).hasClass("my-button"))
    {
        $("input[name='company_id']").val($(e.target).attr("company-id"));
        $("#company-profile-form").submit();
    }
});
</script>
@endpush
@push('styles')
<link rel='stylesheet' href="{{ asset('css/user-pages/partnerprofile/sitecarousel.css') }}"></script>
@endpush