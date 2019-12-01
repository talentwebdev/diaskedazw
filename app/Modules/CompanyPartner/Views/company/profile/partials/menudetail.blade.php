<div class='row menu-detail'>
    <div class='row' style='position:relative; padding-top:60px;'>
        <div class='col-md-8 partner-info-container'>
            <div class='row' style='padding-left: 10%; padding-right:10%; padding-bottom: 15px;'>
                <div style='width:130px; position:relative;'>
                    <div class='img-container' style='overflow:hidden; '>
                        <img src='{{ asset($company->logo_url) }}'>
                        <div class='img-overlay'></div>
                    </div>
                </div>
                <div style='width:calc(100% - 130px);'>
                    <div style="display: flex;">
                        <div class='partner-info-description' style='word-wrap:break-word;'><h5 style='font-weight: bold;'>{{ $company->name }}</h5></div>
                        <a style='padding: 5px; margin-left:8px;margin-top:-5px;' ><i company-id='{{ $company->id }}' class='article fas fa-heart fa-company {{$like ? "active" : "" }}'></i> <span class='count'>{{$company->heart }}</a>
                        
                    </div>
                    
                    <div class="partner-info-link" style="display: flex; margin-left: 25px;">
                            <div class="facebook-url social-link">
                                <a href="{{ $company->facebook }}"><i class="fab fa-facebook" style="color:#4267B2;"></i></a>
                            </div>
                            <div class="youtube-url social-link">
                                <a href="{{ $company->youtube }}"><i class="fab fa-youtube" style="color:#FF0000;"></i></a>
                            </div>
                            <div class="twitter-url social-link">
                                <a href="{{ $company->twitter }}"><i class="fab fa-twitter" style="color:#1DA1F2;"></i></a>
                            </div>
                            @if($company->instagram != null && $company->instagram != "")
                            <div class="instagram-url social-link">
                                <a href="{{ $company->instagram }}"><i class="fab fa-instagram" style="color:#1DA1F2;"></i></a>
                            </div>
                            @endif
                            @if($company->linkedin != null && $company->linkedin != "")
                            <div class="linkedin-url social-link">
                                <a href="{{ $company->linkedin }}"><i class="fab fa-linkedin" style="color:#1DA1F2;"></i></a>
                            </div>
                            @endif

                        </div>
                    <div class='partner-info-description' style='word-wrap:break-word;'><h6>{{ $company->slogan }}</h6></div>
                    
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
                <div class="row" style=' display:flex;'>
                    <div class="col-md-6">
                    <a href="{{route('register')}}" style=" position:relative;color:darkgrey; ">Δωρεάν Εγγραφή</a>  
                    </div>
                    <div class="col-md-6">
                    <a style=" color:darkgrey; " href="{{ route('password.request') }}">Ξέχασα τον κωδικό </a>   </div>
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
.social-link{
    padding: 5px;
}
</style>
@endpush