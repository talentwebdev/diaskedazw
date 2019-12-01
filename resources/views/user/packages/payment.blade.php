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
                        <h2 class="title">Εγγραφή</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Αρχική</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Εγγραφή</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- Background Curve -->
        <div class="breadcrumb-bg-curve">
            <img src="{{ asset('img/core-img/curve-5.png') }}" alt="">
        </div>
    </div>
    <!-- ***** Breadcrumb Area End ***** -->

    <!-- ***** About Us Area Start ***** -->
    <section class="uza-about-us-area section-padding-80">
        
        <div class="container">
            <div class="row">
                <div class="col-xl-12 order-xl-1">
                    <div class="card shadow">
                    <div class="card-header border-0" style='background-color: #eee'>
                      <div class="row align-items-center">
                        <div class="col-8">
                          <h3 class="mb-0">Ο λογαριασμός μου</h3>
                        </div>
                        
                      </div>
                    </div>
                    <div class="card-body">
                      <form method="POST" data-toggle="validator" novalidate="true" action="{{ route('register') }}">
                       @csrf
                        <h6 class="heading-small text-muted mb-4">User information</h6>
                        <div class="pl-lg-4">
                          <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-username">Username</label>
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
                                <label class="form-control-label" for="input-email">Email address</label>
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
                                <label class="form-control-label" for="input-email">Κωδικός</label>
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
                                <label class="form-control-label" for="input-email">Επιβεβαίωση κωδικού</label>
                                <input id="repassword" type="password" class="form-control" name="password_confirmation" data-match="#password" data-match-error="this doesn't match" required>
                                <div class="help-block with-errors"></div>
                              </div>
                            </div>
                            

                          </div>
                          
                          <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-first-name">Όνομα</label>
                                <input type="text" id="first_name" name="first_name" class="form-control form-control-alternative" placeholder="First name" required />
                              </div>
                            </div>
                            <div class="col-lg-6">
                              <div class="form-group">
                                <label class="form-control-label" for="input-last-name">Επώνυμο</label>
                                <input type="text" id="last_name" name="last_name" class="form-control form-control-alternative" placeholder="Last name" required  />
                              </div>
                            </div>
                          </div>
                        </div>
                        <hr class="my-4" />
                        <!-- Address -->
                        <h6 class="heading-small text-muted mb-4">Στοιχεία επικοινωνίας</h6>
                        <div class="pl-lg-4">
                          <div class="row">
                            <div class="col-md-12">
                              <div class="form-group">
                                <label class="form-control-label" for="input-address">Διεύθυνση</label>
                                <input id="address" name="address" class="form-control form-control-alternative" placeholder="Home Address" type="text" required />
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-lg-4">
                              <div class="form-group">
                                <label class="form-control-label" for="input-city">Πόλη</label>
                                <input type="text" id="city" name="city" class="form-control form-control-alternative" placeholder="City" required />
                              </div>
                            </div>
                            <div class="col-lg-4">
                              <div class="form-group">
                                <label class="form-control-label" for="input-country">Χώρα</label>
                                <input type="text" id="country" name="country" class="form-control form-control-alternative" placeholder="Country" required />
                              </div>
                            </div>
                           
                          </div>
                          <div class="row">
                             <div class="col-md-6">
                              <div class="form-group">
                                <button type="submit" class="btn btn-sm btn-primary" required >Αποθήκευση</button>
                              </div>
                            </div>
                          </div>
                        </div>
                        <hr class="my-4" />

                        <input   type="hidden" name='points' value="1000" />
                        
                        </form>  
                    </div>
                  </div>
                </div>
            </div>
        </div>
              
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

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="{{asset('js/validator.min.js')}}"></script>
    <script src="http://platform.twitter.com/widgets.js"></script>
    <script>
    
    </script>
@endsection