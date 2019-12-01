@extends('layouts.app')

@section('content')
    <style>
    .btn-file {
        position: relative;
        overflow: hidden;
    }
    .btn-file input[type=file] {
        position: absolute;
        top: 0;
        right: 0;
        min-width: 100%;
        min-height: 100%;
        font-size: 100px;
        text-align: right;
        filter: alpha(opacity=0);
        opacity: 0;
        outline: none;
        background: white;
        cursor: inherit;
        display: block;
    }

    #img-upload{
        width: 100%;
    }
    </style>


    <!-- ***** Breadcrumb Area Start ***** -->
    <div class="breadcrumb-area">
        <div class="container h-100">
            <div class="row h-100 align-items-end">
                <div class="col-12">
                    <div class="breadcumb--con">
                        <h2 class="title" style="position:relative; top:-80px;">Δωρεάν Εγγραφή </h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb" style="position:relative; top:-50px;">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Αρχική</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Εγγραφή</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- Background Curve -->
        <div class="breadcrumb-bg-curve" >
            <img src="{{ asset('img/core-img/curve-5.png') }}" alt="">
        </div>
    </div>
    <!-- ***** Breadcrumb Area End ***** -->

    <!-- ***** About Us Area Start ***** -->
    <section class="uza-about-us-area section-padding-80">
        <div class="container" style="position:relative; margin-bottom: 50px; padding: 10px; top:-140px;">
            <div class="row">
                <div class='col-md-6' style='padding: 10px;'>
                    <a href='social/facebook' class='btn btn-block btn-social btn-lg btn-facebook' style="border-radius:20px;" >
                        <i class="fa fa-facebook"></i> 
                        Σύνδεση μέσω Facebook
                    </a>
                </div>
                <div class='col-md-6' style='padding: 10px;'>
                    <a href="social/google" class='btn btn-block btn-social btn-lg btn-google'style="border-radius:20px;">
                        <i class="fab fa-google"></i>
                        Σύνδεση μέσω Google
                    </a>
                </div>
            </div>
        </div>
        <div class="container" style="position:relative; top:-160px; ">
            <div class="row">
                <div class="col-xl-12 order-xl-1">
                    <div class="card shadow">
                    <div class="card-header border-0" style='background-color: #eee;'>
                      <div class="row align-items-center" >
                        <div class="col-8">
                          <h3 class="mb-0" style="font-size:18px;">Λογαριασμός</h3>
                        </div>
                        
                      </div>
                    </div>
                    <div class="card-body">
                      <form method="POST" data-toggle="validator" novalidate="true" action="{{ route('register') }}">
                       @csrf
                        <h6 class="heading-small text-muted mb-4">Προσωπικές Πληροφορίες</h6>
                        <div class="pl-lg-4">
                          <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-username">Ψευδώνυμο</label>
                                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>
                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                                <div class="help-block with-errors"></div>
                              </div>
                            </div>
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-email">Ηλεκτρονική Διεύθυνση</label>
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>
                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                                <div class="help-block with-errors"></div>
                              </div>
                            </div>
                            

                          </div>
                           <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-email">Καταχώρηση Κωδικού</label>
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                                <div class="help-block with-errors"></div>
                              </div>
                            </div>
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-email">Επιβεβαίωση</label>
                                <input id="repassword" type="password" class="form-control" name="password_confirmation" data-match="#password" data-match-error="this doesn't match" required>
                                <div class="help-block with-errors"></div>
                              </div>
                            </div>
                            

                          </div>
                          
                          <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-first-name">Όνομα</label>
                                <input type="text" id="first_name" name="first_name" class="form-control form-control-alternative" placeholder="" required />
                              </div>
                            </div>
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-last-name">Επίθετο</label>
                                <input type="text" id="last_name" name="last_name" class="form-control form-control-alternative" placeholder="" required  />
                              </div>
                            </div>
                          </div>
                        </div>
                        <hr class="my-4" />
                        <!-- Address -->
                        <h6 class="heading-small text-muted mb-4">Στοιχεία Επικοινωνίας</h6>
                         <div class="pl-lg-4">
                          <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group">
                    <label class="form-control-label" for="input-username">Διεύθυνση</label>
               
                <div class=''>
                    <input type="text" id="address" name='address' class="form-control form-control-alternative" placeholder="" required />
                    <div class="help-block with-errors"></div>
                </div>
                 </div>
            </div>
            <div class="col-lg-6">
                              <div class="form-group">
                    <label class="form-control-label" for="input-username">Πόλη</label>
               
                <div class=''>
                    <input type="text" id="city" name='city' class="form-control form-control-alternative" placeholder="" required />
                    <div class="help-block with-errors"></div>
                </div>
                 </div>
            </div>
            </div>
            <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group">
                    <label class="form-control-label" for="input-username">Τ.Κ</label>
              
                <div class=''>
                    <input type="text" id="po" name='po' class="form-control form-control-alternative" placeholder="" required />
                    <div class="help-block with-errors"></div>
                </div>
                  </div>
            </div>
           
             <div class="col-lg-6">
                              <div class="form-group">
                    <label class="form-control-label" for="input-username">Χώρα</label>
               
                <div class=''>
                    <input type="text" id="country" name='country' class="form-control form-control-alternative" placeholder="" required />
                    <div class="help-block with-errors"></div>
                </div>
                  </div>
            </div>
            </div>
            <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group">
                    <label class="form-control-label" for="input-username">Τηλέφωνο</label>
                
                <div class=''>
                    <input type="text" id="telephone" name='telephone' class="form-control form-control-alternative" placeholder="" required />
                    <div class="help-block with-errors"></div>
                </div>
            </div>
            </div>
             <div class="col-lg-6">
                              <div class="form-group">
                    <label class="form-control-label" for="input-username">Κινητό</label>
                
                <div class=''>
                    <input type="text" id="mobile" name='mobile' class="form-control form-control-alternative" placeholder="" required />
                    <div class="help-block with-errors"></div>
                </div>
                </div>
            </div>
            </div>
                           
                          </div>
               
                          
                              <div class="form-group">
                    <label class="form-control-label" for="input-username">Σύσταση</label>
               
                <div class=''>
                    <textarea type="text" id="message" name='message' class="form-control form-control-alternative" placeholder="" ></textarea>
                    <div class="help-block with-errors"></div>
                </div>
            
                        </div>
                      </div>
                                               
                  
            
                        
                              <div class="form-group" align="center">
                                <button type="submit"  align="center" style="position:relative; align:center; border-radius:10px; font-weight: bold; font-family: Arial,Helvetica Neue,Helvetica,sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 700; line-height: 15.4px; " class="btn btn-sm btn-primary" >ΕΓΓΡΑΦΗ</button>
                              </div>
                            </div>
                         
                       

                        <input   type="hidden" name='points' value="0" />
                        
                        </form>  
                    </div>
                  </div>
                </div>
            </div>
        </div>
         <div class="container">
            <div class="row">
                <div class="col-xl-12 order-xl-1">
                    <div class="card shadow">
                    <div class="card-header border-0" style='background-color: #eee;'>
                      <div class="d" >
                        <div class="d">
                          <div class="form-group">
                    <label class="form-control-label" for="input-username" style="position:relative; left:30px; font-size:18px; bottom:5px; font-weight: bold; font-family: Arial,Helvetica Neue,Helvetica,sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 700; line-height: 15.4px; ">Η ευχή μου !</label>
                
                <div class='' >
                    <textarea type="text" id="message" name='message' class="form-control form-control-alternative" placeholder=""   ></textarea>
                    <div class="help-block with-errors"></div>
                </div>  </div>  </div></div></div></div></div></div>
        <!-- About Background Pattern -->
        <div class="about-bg-pattern">
            <img src="{{ asset('img/core-img/curve-2.png') }}" alt="">
        </div>
    </section>
    <!-- ***** About Us Area End ***** -->

        <!-- Border -->
        <div class="container">
            <div class="border-line mt-80"></div>
        </div>

        <div id="pageAttr" attr="login" csrf="{{ csrf_token() }}"></div>
 @include('other.footer')
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="{{asset('js/validator.min.js')}}"></script>
    <script src="http://platform.twitter.com/widgets.js"></script>
    <script>
    
    </script>
@endsection