<div class="modal fade right" id="modalPackageInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-info" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'>
                    <img src='' class='package-image' style='width: 30px; height: 30px; border-radius: 50%;'>
                    <span class='package-name' style='color:#FFF; margin-left:10px;'></span>
                    <span style='margin-left: 20px;'>
                        <img src="{{ asset('img/diask-img/ellinsds.png') }}" style="width:9px;"> 
                        <span class='package-ellin' style="font-weight:bold; font-size:13px; color:#000;"> </span>
                        <span class='package-cost' style="font-weight:bold; color:#F00; font-size:13px;">€150</span>
                    </span>
                </p>
        
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
    
        <!--Body-->
            <div class="modal-body" style=" max-height: calc(90vh - 200px); overflow-y: auto;">
    
                <div class="row" style='padding: 20px;'>
                    <img src="{{ asset('img/core-img/card_1.png') }}" class='package-markimage' style='display:block; margin:auto;'>
                </div>
                <div class="row" style='padding: 20px;'>
                    <div class='package-info-text' style='border-radius: 10px; padding: 10px; width: calc(100% - 20px); border: 1px solid #fff;'></div>
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" data-dismiss="modal" class="btn btn-outline-info waves-effect" id="next_step">ΕΠΟΜΕΝΟ</button>
                <button type="button" data-dismiss="modal" class="btn btn-outline-info waves-effect" style='display: none;' id="close_btn">ΕΞΟΔΟΣ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>


<div class="modal fade right" id="modalPackageStep2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-info" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'>
                    <img src='' class='package-image' style='width: 30px; height: 30px; border-radius: 50%;'>
                    <span class='package-name' style='color:#FFF; margin-left:10px;'></span>
                    <span style='margin-left: 20px;'>
                        <img src="{{ asset('img/diask-img/ellinsds.png') }}" style="width:9px;"> 
                        <span class='package-ellin' style="font-weight:bold; font-size:13px; color:#000;"> </span>
                        <span class='package-cost' style="font-weight:bold; color:#F00; font-size:13px;">€150</span>
                    </span>
                </p>
        
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
    
        <!--Body-->
            <div class="modal-body">
    
                <div class="row">
                <form data-toggle="validator" novalidate="true" method='post' action="{{ route('sendcontactemail') }}" id="paymentdetail-formdata" style='width:99%;  height: 500px; overflow-y: auto; margin-top:-15px; background-color:#FFF; border-radius:10px; border:0px solid #AAA; padding: 20px;'>
                    <h4 style='border-bottom: 1px solid #AAA; padding: 10px; font-weight: bold; color:#AAA; margin-top:-18px;'> Αποστολή Κάρτας </h4>
                    <label class="radio-btn-container mail-type" type='existing' style='font-size:14px;'>
                        Χρήση στοιχείων εγγραφής 
                        <input type="radio" checked name="mail-type">
                        <span class="checkmark"></span>
                    </label>
                    @auth
                    <div class='existing-detail-info' style='display: none;'>
                        {{ Auth::user()->first_name }},  
                        {{ Auth::user()->last_name }}, 
                        {{ Auth::user()->address }}, 
                        {{ Auth::user()->city }}, 
                        {{ Auth::user()->po }},
                        {{ Auth::user()->country }},
                        {{ Auth::user()->telephone }},
                        {{ Auth::user()->mobile }},
                        {{ Auth::user()->email }}
                    </div>
                    @endauth
                    <label class="radio-btn-container mail-type" type='form' style='font-size:14px;'>
                        Αποστολή σε νέα διεύθυνση
                        <input type="radio" checked name="mail-type">
                        <span class="checkmark"></span>
                    </label>
                    @csrf
                    <div class='form-data'>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Όνομα</label>
                            </div>
                            <div class=''>
                                <input type="text" id="firstname" name='firstname' class="form-control form-control-alternative" placeholder="First name" required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Επίθετο</label>
                            </div>
                            <div class=''>
                                <input type="text" id="lastname" name='lastname' class="form-control form-control-alternative" placeholder="Last name" required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Διεύθυνση</label>
                            </div>
                            <div class=''>
                                <input type="text" id="address" name='address' class="form-control form-control-alternative" placeholder="Address" required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Πόλη</label>
                            </div>
                            <div class=''>
                                <input type="text" id="city" name='city' class="form-control form-control-alternative" placeholder="City" required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Τ.Κ</label>
                            </div>
                            <div class=''>
                                <input type="text" id="po" name='po' class="form-control form-control-alternative" placeholder="P.O." required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Χώρα</label>
                            </div>
                            <div class=''>
                                <input type="text" id="country" name='country' class="form-control form-control-alternative" placeholder="Country" required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Τηλέφωνο</label>
                            </div>
                            <div class=''>
                                <input type="text" id="telephone" name='telephone' class="form-control form-control-alternative" placeholder="Telephone" required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Κινητό</label>
                            </div>
                            <div class=''>
                                <input type="text" id="mobile" name='mobile' class="form-control form-control-alternative" placeholder="Mobile" required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class='row form-group'>
                            <div class='col-md-4'>
                                <label class="form-control-label" for="input-username">Ηλεκτρονική Διεύθυνση</label>
                            </div>
                            <div class=''>
                                <input type="email" id="email" name='email' class="form-control form-control-alternative" placeholder="jesse@example.com" required />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>
                    
                    <label class="radio-btn-container mail-type" type='doc' style='font-size:14px;'>
                        Ανεβάστε αρχεία
                        <input type="radio" name="mail-type">
                        <span class="checkmark"></span>
                    </label>
                    <span class="btn btn-success fileinput-button" style='width: 100%; display: none;'>
                        <i class="glyphicon glyphicon-plus"></i>
                        <span>
Επιλέξτε αρχεία...</span>
                        <!-- The file input field used as target for the file upload widget -->
                        <input type="file" name="file" id="docFile" class="custom-file-input form-control">
                    </span>                   
                    
                </form>
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" data-dismiss="modal" class="btn btn-outline-info waves-effect" id="prev_step">ΚΑΡΤΑ</button>
                <button type="button" data-dismiss="modal" class="btn btn-outline-info waves-effect" id="next_step">ΣΥΝΕΧΕΙΑ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<div class="modal fade right" id="modalAbandonedCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-info" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'>
                    <img src='' class='package-image' style='width: 30px; height: 30px; border-radius: 50%;'>
                    <span class='package-name' style='color:#FFF; margin-left:10px;'></span>
                    <span style='margin-left: 20px;'>
                        <img src="{{ asset('img/diask-img/ellinsds.png') }}" style="width:9px;"> 
                        <span class='package-ellin' style="font-weight:bold; font-size:13px; color:#000;"> </span>
                        <span class='package-cost' style="font-weight:bold; color:#F00; font-size:13px;">€150</span>
                    </span>
                </p>
        
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
    
        <!--Body-->
            <div class="modal-body">
    
                <div style='width: calc(100% - 3.0rem); position:absolute; height: 100%; background-color: rgba(255, 255, 255, 0.4); z-index: 10001;'></div>
                <div class='package-info row'>
                    <div class='col-md-12'>
                        <div class='package-description' style='min-width:200px; border-radius:5px; padding: 10px; border:1px solid #B5B5B5;'>
                        </div>
                    </div>
                </div>
                <div class="row">                
                    <div class="col-12">
                        <div id='dropin-container'></div>
                        <p class='err-notice' style='color: #e00;'></p>                            
                    </div>
                    <div class='col-12' id='preloader_dialog'>
                        <img style='margin:auto;' width='100%' src="{{asset('img/preload-img/preloader.svg')}}" />
                    </div>
                </div>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <!--<button type="button" class="btn btn-outline-info waves-effect" disabled id="buyservice">Αγορα</button>-->
                <button type="button" class="btn btn-outline-info waves-effect" id='prevstep-btn' data-dismiss="modal">ΠΙΣΩ</button>
                <button type="button" class="btn btn-outline-info waves-effect"  id='sendpaymentinfo-btn' data-dismiss="modal">ΑΠΟΣΤΟΛΗ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>

<div class="modal fade" id="modalSuccess" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-side modal-notify modal-info" role="document">
        <!--Content-->
        <div class="modal-content">
        <!--Header-->
            <div class="modal-header">
                <p class="heading" style='color: #fff;'>
                    <img src='' class='package-image' style='width: 30px; height: 30px; border-radius: 50%;'>
                    <span class='package-name' style='color:#FFF; margin-left:10px;'></span>
                    <span style='margin-left: 20px;'>
                        <img src="{{ asset('img/diask-img/ellinsds.png') }}" style="width:9px;"> 
                        <span class='package-ellin' style="font-weight:bold; font-size:13px; color:#000;"> </span>
                        <span class='package-cost' style="font-weight:bold; color:#F00; font-size:13px;">€150</span>
                    </span>
                </p>
        
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
    
        <!--Body-->
            <div class="modal-body">
    
                <h4>Έχουμε λάβει το αίτημα σας με επιτυχία! Θα επικοινωνήσουμε μαζί σας το συντομότερο.
Καλή συνέχεια!
</h4>
            </div>
    
        <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button type="button" data-dismiss="modal" class="btn btn-outline-info waves-effect">ΕΝΤΑΞΕΙ</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
@push('scripts')
<script>
var isFirstPass = 0, isSecondPass = 0;
var paymentShip = {type: "form", data: null};
var selected_package;

$("#modalPackageInfo").on("package_select", function(e, package){
    selected_package = package;
});

$("#modalPackageInfo").on('hidden.bs.modal', function(){
    if(isFirstPass == 1)
        $("#modalPackageStep2").modal();
    isFirstPass = 0;
});    

$("#modalPackageInfo #next_step").click(function(){
    isFirstPass = 1;
    
});

$("#modalPackageStep2").on('hidden.bs.modal', function(){
    if(isSecondPass == 1)
        $("#modalAbandonedCart").modal();
    isSecondPass = 0;
});

$("#modalPackageStep2 #next_step").click(function(){
    $("#modalAbandonedCart").modal();
});
$("#modalPackageStep2 #prev_step").click(function(){
    $("#modalPackageInfo").modal();
});
$("#modalPackageStep2 .mail-type").click(function(){

    $(".existing-detail-info").css("display", "none");
    $(".fileinput-button").css("display", "none");
    $("#modalPackageStep2 .form-data input").prop("disabled", true);

    if($(this).attr("type") == "form")
    {
        $("#modalPackageStep2 .form-data input").prop("disabled", false);
        paymentShip.type = "form";
    }
    else if($(this).attr("type") == "doc")
    {
        
        $(".fileinput-button").css("display", "block");
        paymentShip.type = "doc";
        
    }
    else
    {
        $(".existing-detail-info").css("display", "block");
        paymentShip.type = "existing";
    }
});
$("#paymentdetail-formdata").submit(function(event){
    event.preventDefault();

    var formData = new FormData(document.getElementById('paymentdetail-formdata'));
    formData.append("package_id", selected_package.id);

     $.ajax({
        url: "sendnewshipcardemail",
        method: 'post',
        data: formData,//{"_token": csrf_token, video: videofile, videourl: videourl},
        contentType: false,
        processData: false,
        dataType: 'json',
        cache: false,
        complete: function( data ){
            $("#modalSuccess").modal();
        }
    });

    return false;
});
$("#docFile").change(function(){
    uploadDocFile();
});

function uploadDocFile()
{
    var fileSelect = document.getElementById("docFile");

    var formData = new FormData();
    formData.append("docfile", fileSelect.files[0]);
    formData.append("_token", csrf_token);

     $.ajax({
        url: "uploaddoc.file",
        method: 'post',
        data: formData,//{"_token": csrf_token, video: videofile, videourl: videourl},
        contentType: false,
        processData: false,
        dataType: 'json',
        cache: false,
        complete: function( data ){
            var url = data.responseText;
            console.log(url);

            paymentShip.data = {_token: csrf_token, filePath: url, package_id: selected_package.id};

            /*
            $.post("sendpaymentdocemail", {_token: csrf_token, filePath: url})
                .then( function(){
                    $("#modalPackageStep2").modal('hide');
                    isSecondPass = 1;
                })
                .fail(function(){});
                */
        }
    });
        
}

$("#sendpaymentinfo-btn").click(function(){
    if(paymentShip.type == "form")
    {
        $("#paymentdetail-formdata").submit();
    }
    else if(paymentShip.type == "doc")
    {
        if(paymentShip.data == null) return;

        $.post("sendpaymentdocemail", paymentShip.data)
                .then( function(){
                    $("#modalSuccess").modal();
                })
                .fail(function(){});
    }
    else if(paymentShip.type == "existing"){
        $.post("sendexistinginfoemail", {package_id:selected_package.id, _token: csrf_token})
            .then(function(){
                $("#modalSuccess").modal();
            })
            .fail(function(){});
    }
});

$("#modalAbandonedCart #prevstep-btn").click(function(){
    $("#modalPackageStep2").modal();
});
</script>
@endpush

<link rel='stylesheet' href="{{ asset('plugins/radiobutton/radiobutton.css') }}">