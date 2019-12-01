<div class='row company-container' id='companies-container'>
    
</div>
<form action="{{ route('company.profile.index') }}" method='GET' style="display:none;" id="company-profile-form">
    <input type="text" name="company_id" />
</form>

@push('scripts')
<script src="{{ asset('js/user-pages/discount/company.js') }}"></script>
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
<link type='text/css' href='{{ asset("css/loading/style.css") }}' rel='stylesheet'>
@endpush