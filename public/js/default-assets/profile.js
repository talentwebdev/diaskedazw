(function ($) {
    'use strict';

        $(document).ready( function() {
            $(document).on('change', '.btn-file :file', function() {
            var input = $(this),
                label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
            input.trigger('fileselect', [label]);
            });

            $('.btn-file :file').on('fileselect', function(event, label) {
                
                var input = $(this).parents('.input-group').find(':text'),
                    log = label;
                
                if( input.length ) {
                    input.val(log);
                } else {
                    if( log ) alert(log);
                }
            
            });
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    
                    reader.onload = function (e) {
                        $('#img-upload').attr('src', e.target.result);
                    }
                    
                    reader.readAsDataURL(input.files[0]);
                    $("#imgupload").submit();
                }
            }

            $("#imgInp").change(function(){
                readURL(this);
            });     
        });

        $("#user-form").submit(function(e){
            e.preventDefault();
            
            $.post("saveUser", {
                    "_token": $("#pageAttr").attr("csrf")  ,
                    name: $("#username").val(),
                    email: $("#email").val(),
                    first_name: $("#first-name").val(),
                    last_name: $("#last-name").val(),
                    address: $("#address").val(),
                    city: $("#city").val(),
                    country: $("#country").val(),
                    summary: $("#summary").val(),
                    password: $("#password").val(),
                    mobile: $("#mobile").val(),
                    phone: $("#phone").val()
                })
                .done(function(data){
                    $("#thispage").submit();
                    console.log("profile: success saving user.")
                })
                .fail(function(){
                    console.log("profile: failed saving user.")
                });
                
        });

        

        function dealWithBecomeSeller(){
            $("#becomeSellerBtn").click(e => {
                $("#modalsellerpaydlg").modal();
            });

            $("#modalsellerpaydlg").on("onSuccess", function(e){
                location.href = "profile";
            });
        }

        function dealWithBecomeCompanyPartner()
        {
            $("#become-company-partner-btn").click(e => {
                $("#modal-pay-companypartner").modal();
            });
        }

           
        dealWithBecomeSeller();
        dealWithBecomeCompanyPartner();
    
})(jQuery);