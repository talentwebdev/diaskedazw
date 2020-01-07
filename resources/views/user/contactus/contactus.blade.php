@extends("layouts.app")

@section('content')
    @include('partner.test.firstpage')
    @include('user.component.menudetail')
    

    <!-- ***** contact us ****** -->
    <section class='uza-portfolio-area contact_section' style='padding: 50px;background:  url({{ asset('img/core-img/conta3ct_us.jpg') }});background-size: 100% 100%;'>
        
        <form data-toggle="validator" novalidate="true" method='post' action="{{ route('sendcontactemail') }}" style='width:80%; margin:auto; background-color:#FFF; border-radius:10px; border:2px solid #000; padding: 30px;'>
            <h4 style='border-bottom: 1px solid #AAA; padding: 5px; font-weight: bold; color:#20A8D8;'> Επικοινωνία </h4>
            @csrf
            <div class="row">
            <div class='col-md-6 form-group'>
                <label class="form-control-label" for="input-username">Όνομα</label>
                <input type="text" id="firstname" name='firstname' class="form-control form-control-alternative" placeholder="First name" required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-6 form-group'>
                <label class="form-control-label" for="input-username">Επίθετο</label>
                <input type="text" id="lastname" name='lastname' class="form-control form-control-alternative" placeholder="Last name" required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-6 form-group'>
                <label class="form-control-label" for="input-username">Διεύθυνση</label>
                <input type="text" id="address" name='address' class="form-control form-control-alternative" placeholder="Address" required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-6 form-group'>
                <label class="form-control-label" for="input-username">Πόλη</label>
                <input type="text" id="city" name='city' class="form-control form-control-alternative" placeholder="City" required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-6 form-group'>
                <label class="form-control-label" for="input-username">Τ.Κ</label>
                <input type="text" id="po" name='po' class="form-control form-control-alternative" placeholder="P.O." required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-6 form-group'>
                <label class="form-control-label" for="input-username">Χώρα</label>
                <input type="text" id="country" name='country' class="form-control form-control-alternative" placeholder="Country" required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-6 form-group'>
                <label class="form-control-label" for="input-username">Τηλέφωνο</label>
                <input type="text" id="telephone" name='telephone' class="form-control form-control-alternative" placeholder="Telephone" required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-6 form-group'>
                <label class="form-control-label" for="input-username">Κινητό</label>
                <input type="text" id="mobile" name='mobile' class="form-control form-control-alternative" placeholder="Mobile" required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-12 form-group'>
                <label class="form-control-label" for="input-username">Ηλεκτρονική Διεύθυνση</label>
                <input type="email" id="email" name='email' class="form-control form-control-alternative" placeholder="jesse@example.com" required />
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-12 form-group'>
                <label class="form-control-label" for="input-username">Μύνημα</label>
                <textarea type="text" id="message" name='message' class="form-control form-control-alternative" placeholder="Message" required></textarea>
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-12 form-group'>
                <label class="form-control-label" for="input-username">Σύσταση</label>
                <textarea type="text" id="message" name='message' class="form-control form-control-alternative" placeholder="Σύσταση" required></textarea>
                <div class="help-block with-errors"></div>
            </div>
            <div class='col-md-12 from-group'>
                <div class=''><div id='example3'></div></div>
            </div>
            
            <div class='col-md-12 form-group'>
                <div class=''>
                    <button class='btn btn-primary' id='submit' style='display:block;' type='submit'>Αποστολή</button>
                </div>
            </div>
            </div>
        </form>
    </section>
    <!-- ***** contact us end ***** -->
    <!-- ***** Site Area Start ***** -->
    <section class="uza-portfolio-area">
        <!-- Other sites introducing -->
        @include('user.partnerprofile.component.sitecarousel')
        <!-- Other sites introducing End -->
    </section>
    <!-- ***** Site Area End ***** -->
        @include('other.footer')

@endsection

@push('scripts')
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_grey.js") }}'></script> 
<script src="{{asset('js/validator.min.js')}}"></script>
<script>
    function verifyCallback(){
        $("#submit").css('display', 'block');
    }
    function onloadCallback(){
        grecaptcha.render('example63', {
          'sitekey' : '6LfcWssUAAAAAJs89Ewb-TMamW22DWUy_oav-y6m',
          'callback' : verifyCallback,
          'theme' : 'light'
        });
    }
    $("#contactus-top-menu").addClass('current-item');
</script>
<script src="https://www.google.com/recaptcha/api.js?render=6LfcWssUAAAAAJs89Ewb-TMamW22DWUy_oav-y6m"></script>
<script>
grecaptcha.ready(function() {
    grecaptcha.execute('6LfcWssUAAAAAJs89Ewb-TMamW22DWUy_oav-y6m', {action: 'homepage'}).then(function(token) {
       ...
    });
});
</script>
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"></script>
<script>

</script>
@endpush