<div class='row menu-detail'>
    <div class='row' style='position:relative; padding-top:60px;'>
        <div class='col-md-8 partner-info-container'>
            <div class='row' style='padding-left: 10%; padding-right:10%;'>
                <div style='width:80px; height:80px; position:relative;'>
                    <div class='partner-clip-path' style='width:100%; height:100%;' >
                        <div class='img-container' style='overflow:hidden; border-radius:50%; '>
                            <img src='{{ asset($partner->img_url) }}'>
                            <div class='img-overlay'></div>
                        </div>
                        <img class='img-border' src='{{ asset("img/core-img/ceo.png") }}' style='width:100%; position:absolute; left:0px; top:0px;'>
                        <img class='img-border-hover' src='{{ asset("img/core-img/ceo_hover.png") }}' style='width:100%; position:absolute; left:0px; top:0px;'>
                    </div>
                    <!--<img class='partner-info-image' src="{{ asset($partner->img_url) }}" width='80' height='80'>-->
                </div>
                <div style='width:calc(100% - 80px);'>
                    <span class='partner-info-name'>{{ $partner->name }}</span></br>
                    <div class='partner-info-description' style='word-wrap:break-word;'>{{ $partner->partner->say }}</div>
                    <span class='partner-info-social'>
                        <i class="partner-info-facebook fab fa-facebook"></i>
                        <i class="partner-info-twitter fab fa-twitter-square"></i>
                    </span>
                </div>
            </div>
        </div> 
        <div class='col-md-4'>
        
            @if (!auth()->check())
            <form method="POST" action="{{ route('login') }}" class='form-login'>
                @csrf
                <div class='row'>
                    <div class="col-md-5" style='padding-left:10px;'>
                        <label for="exampleInputEmail1" style='font-weight:700;'>Ηλεκτρονική Διεύθυνση </label>
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
                        <label for="exampleInputPassword1" style='font-weight: 700;'>Κωδικός </label>
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
                <div style='float:right;'>
                    <a href="{{route('register')}}" style=" position:relative; left:-77px; color:darkgrey; ">Δωρεάν Εγγραφή</a>                    
                </div>
            </form>
            @else
            <h4 class='user-info'>Γειά σου (<o style="color:#B20202;">{{ Auth::user()->name }}</o>)</h4>
            <h4 class='user-info'>Θέση: @if(Auth::user()->type =='user')<o style="color:#590202;"> Μέλος</o> @else <o style="color:#590202;">Συνεργάτης </o>@endif  </h4>
            <h4 class='user-info' id='user-points'> <img src='{{ asset("img/diask-img/ellinsds.png") }}' width='13' height='9'> <span> <o style="color:#0295B2;">{{ Auth::user()->points }}</o></span></h4>
            @endif
        
        </div>
    </div>
</div>

@push('styles')
<style>
@supports not (-webkit-clip-path: polygon(56% 0, 92% 22%, 100% 55%, 79% 91%, 42% 100%, 8% 81%, 0 43%, 20% 10%))  {
                
    .img-container{
        border-radius: 50%;
        position: relative;
        width: calc(100% - 14px) !important;
        margin-left: 8px ;
        margin-top: 5px !important;
    }
}
</style>
@endpush