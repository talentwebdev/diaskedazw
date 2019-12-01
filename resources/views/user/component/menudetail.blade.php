<!-- menu detail -->
<div class='row menu-detail'>
    <div class='row menu-detail-child' style='width:90%; padding-bottom:10px; margin:auto; background-color:#FFF;  padding-top:60px; '>
        <div class='col-md-4'>
            <h3 class="text-center font-bold fs-30 uppercase title">
               <i style="color:red;">* </i> <span id='ellin-title'>Ellin Converssion EUR</span>
            </h3>
            <div class="joined-counter head-count color-red mb-35" data-current='0' data-count='100' data-value="100">
                
            </div>
        </div>
        <div class='col-md-4' style='text-align:center;'>
            <img src='{{ asset("img/logo/diaskedazw-final-logo.png") }}' id='logo' style='width:150px;'>
        </div>

        <div class='col-md-4'>
        
            @if (!auth()->check())
            <form method="POST" action="{{ route('login') }}" class='form-login'>
                @csrf
                <div class='row'>
                    <div class="col-md-5" style='padding-left:10px;'>
                        <label for="exampleInputEmail1" style='font-weight:700;'>Ηλεκτρονική Διεύθυνση</label>
                        <div>
                            <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

                            @if ($errors->has('email'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    <div class="col-md-5" style='padding-left: 10px;'>
                        <label for="exampleInputPassword1" style='font-weight: 700;'>Κωδικός</label>
                        <div>
                            <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                            @if ($errors->has('password'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    <div class='col-md-2' style='padding-left:10px; pading-bottom: 0px; position:relative;'><button type="submit" style='position:absolute; bottom:0px; font-size:12px;' class="btn btn-primary">ΕΙΣΟΔΟΣ</button></div>
                </div>
                <div class="row" style=' display:flex;'>
                    <div class="col-md-6">
                    <a href="{{route('register')}}" style=" position:relative;color:darkgrey; ">Δωρεάν Εγγραφή</a>  
                    </div>
                    <div class="col-md-6">
                    <a style=" color:darkgrey; " href="{{ route('password.request') }}">Ξέχασα τον κωδικό </a>   </div>
                </div>
            </form>
               @else
            <h4 class='user-info'>Καλωσόρισες (<o style="color:#B20202;">{{ Auth::user()->name }}</o>)</h4>
            <h4 class='user-info'>Θέση: @if(Auth::user()->type =='user')<o style="color:#590202;"> Μέλος</o> @else <o style="color:#590202;">Συνεργάτης </o>@endif  </h4>
            <h4 class='user-info' id='user-points'> <img src='{{ asset("img/diask-img/ellinsds.png") }}' width='13' height='9'> <span> <o style="color:#0295B2;">{{ Auth::user()->points }}</o></span></h4>
            @endif
           
        
        </div>
    </div>
</div>
<!-- menu detail end -->
@push('styles')
<link rel='stylesheet' type='text/css' href='{{ asset("plugins/counter/counter.css") }}'>
@endpush
@push('scripts')
<script type='text/javascript' src='{{ asset("plugins/counter/counter.js") }}'></script>
<script type='text/javascript' src="{{ asset('js/user-pages/component/menudetail.js') }}"></script>

@endpush