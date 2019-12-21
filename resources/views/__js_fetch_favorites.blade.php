<!-- fetch favorite company -->
<script src="{{asset('plugins/favorite/company.js')}}"></script>
<script>
    $.get("{{route('fetchfavoritecompanies')}}")  
        .done(items => {
            console.log(items);
            $("#favorite-company").companies({ 
                    companies: items,
                    clickListener: onClickCompany
                });
        });
    
    function onClickCompany(company)
    {
        location.href = "{{route('company.profile.index')}}?company_id="+company.id;
    }
</script>

<script src="{{asset('plugins/favorite/discount.js')}}"></script>
<script>
    $.get("{{route('fetchfavoritediscounts')}}")
        .done(items => {
            $("#favorite-discount").discounts({
                discounts: items,
                clickListener: onClickDiscount
            })
        });
    
    function onClickDiscount(discount)
    {
        location.href = "{{route('company.profile.index')}}?company_id="+discount.company_id;
    }
</script>