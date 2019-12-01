<script>
(function($){
    'use strict';


    function dealWithDiscountSearch()
    {
        $("#discount-search").on('keydown', (e)=>{
            if(e.which == 13)
            {
                $("#discount-list").html( "" );
                $("#discount-list").load("{{ route('discount.list') }}",
                    {
                        _token: "{{ csrf_token() }}",
                        type: "search",
                        search: $("#discount-search").val()
                    },
                    function(){});
            }
        });
    }

    function dealWithDiscountList()
    {
        $("#discount-list").load("{{ route('discount.list') }}",
            { 
                _token: "{{ csrf_token() }}",
                type: "all"
            },
            function(response){
            });
        $("body").click(e => {
            if($(e.target).hasClass("edit-discount"))
            {
                $("input[name='discount_id']").val($(e.target).attr("discount-id"));
                $("#edit-discount-form").submit();
            }
            else if($(e.target).hasClass("delete-discount"))
            {
                $.post("{{ route("discount.delete") }}", {_token: "{{ csrf_token() }}", discount_id: $(e.target).attr("discount-id")}) 
                    .done(data => {
                        if(data == "success")
                        {
                            $(".col-md-3[discount-id='" + $(e.target).attr("discount-id") +"']").remove();
                        }
                    })
                    .fail(err => {});
            }
        });
    }

    dealWithDiscountSearch();
    dealWithDiscountList();
}(jQuery));
</script>