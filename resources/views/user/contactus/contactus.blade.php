@extends("layouts.app")

@section('content')
    @include('partner.test.firstpage')
    @include('user.component.menudetail')

    <!-- ***** contact us ****** -->
    <section class='uza-portfolio-area' style='padding: 50px;'>
        
        <form data-toggle="validator" novalidate="true" method='post' action="{{ route('sendcontactemail') }}" style='width:80%; margin:auto; background-color:#FFF; border-radius:10px; border:2px solid #000; padding: 30px;'>
            <h4 style='border-bottom: 1px solid #AAA; padding: 5px; font-weight: bold; color:#AAA;'> Επικοινωνία </h4>
            @csrf
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
            <div class='row form-group'>
                <div class='col-md-4'>
                    <label class="form-control-label" for="input-username">Μύνημα</label>
                </div>
                <div class=''>
                    <textarea type="text" id="message" name='message' class="form-control form-control-alternative" placeholder="Message" required></textarea>
                    <div class="help-block with-errors"></div>
                </div>
            </div>
             <div class='row form-group'>
                <div class='col-md-4'>
                    <label class="form-control-label" for="input-username">Σύσταση</label>
                </div>
                <div class=''>
                    <textarea type="text" id="message" name='message' class="form-control form-control-alternative" placeholder="Σύσταση" required></textarea>
                    <div class="help-block with-errors"></div>
                </div>
            </div>
            <div class='row from-group'>
                <div class='col-md-4'></div>
                <div class=''><div id='example3'></div></div>
            </div>
            
            <div class='row form-group'>
                <div class='col-md-4'>
                </div>
                <div class=''>
                    <button class='btn btn-primary' id='submit' style='display:block;' type='submit'>Αποστολή</button>
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
<script src='{{ asset("plugins/canvas-map/js.js") }}'></script> 
<script src="{{asset('js/validator.min.js')}}"></script>
<script>
    function verifyCallback(){
        //$("#submit").css('display', 'block');
    }
    function onloadCallback(){
        grecaptcha.render('example3', {
          'sitekey' : '6Led2KEUAAAAAJbhWO9mE5DT4nUAe0OjcC611kgR',
          'callback' : verifyCallback,
          'theme' : 'light'
        });
    }
    $("#contactus-top-menu").addClass('current-item');
</script>
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"></script>
<script>

</script>
@endpush