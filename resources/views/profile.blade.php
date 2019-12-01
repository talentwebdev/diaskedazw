@extends('layouts.app')

@section('content')
  <!-- ***** Breadcrumb Area Start ***** -->
  <div class="breadcrumb-area">
      <div class="container h-100">
          <div class="row h-100 align-items-end">
              <div class="col-12">
                  <div class="breadcumb--con">
                      <h2 class="title">Προφίλ</h2>
                      <nav aria-label="breadcrumb">
                          <ol class="breadcrumb">
                              <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Αρχική</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Προφίλ</li>
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
  <div class="container" style='margin-top: 30px;'>
    <div class="row">
      @if( Auth::user() != null && Auth::user()->isActivated() && !Auth::user()->isActiveEshop())
      <div class="col-md-6">
        <button class="btn btn-primary form-control" style="background-color:#DB831F !important; border-color:#DB831F !important;" id="becomeSellerBtn">Το δικο σου E-Shop!</button>    
      </div>
      @endif
      @if(Auth::user() != null && Auth::user()->type != "company_partner")
      <div class="col-md-6">
        <button class="btn btn-primary form-control" style="background-color:#464847 !important; border-color:#464847 !important;" id='become-company-partner-btn'>Η δική σου επιχείρηση!</button>
      </div>      
      @endif
    </div>
  </div>
  <!-- ***** Breadcrumb Area End ***** -->

  <!-- ***** About Us Area Start ***** -->

  <section class="uza-about-us-area section-padding-80">
        <div class="container">
          <div class="row">
            <div class="col-md-8" style='padding: 10px;'>
              <div class="card">
                <div class="card-header" style='background-color: rgb(0, 162, 232);'>
                  <h3 class="mb-0" style="color: #fff;">Ο λογαριασμός μου</h3>
                </div>
                <div class="card-body">
                  <form action='' id='user-form' data-toggle="validator" novalidate="true">
                    <h6 class="heading-small text-muted mb-4">Πληροφορίες χρήστη</h6>
                    <div class="pl-lg-4">
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-username">Username</label>
                            <input type="text" id="username" class="form-control form-control-alternative" placeholder="Username" value="{{ Auth::user()->name }}" required />
                            <div class="help-block with-errors"></div>
                          </div>
                        </div>
                        <!--
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-email">Email address</label>
                            <input type="email" id="email" class="form-control form-control-alternative" placeholder="jesse@example.com" value="{{ Auth::user()->email }}" required />
                            <div class="help-block with-errors"></div>
                          </div>
                        </div>
                        -->
                      </div>
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-first-name">Όνομα</label>
                            <input type="text" id="first-name" class="form-control form-control-alternative" placeholder="First name" value="{{ Auth::user()->first_name }}" required />
                            <div class="help-block with-errors"></div>
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-last-name">Επίθετο</label>
                            <input type="text" id="last-name" class="form-control form-control-alternative" placeholder="Last name" value="{{ Auth::user()->last_name }}" required/>
                            <div class="help-block with-errors"></div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-mobile">Mobile</label>
                            <input type="text" id="mobile" class="form-control form-control-alternative" placeholder="Mobile" value="{{ Auth::user()->mobile }}" required />
                            <div class="help-block with-errors"></div>
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-phone">Τηλέφωνο</label>
                            <input type="text" id="phone" class="form-control form-control-alternative" placeholder="Phone" value="{{ Auth::user()->telephone }}" required/>
                            <div class="help-block with-errors"></div>
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
                            <input id="address" class="form-control form-control-alternative" placeholder="Home Address" value="{{ Auth::user()->address }}" type="text" required/>
                            <div class="help-block with-errors"></div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-4">
                          <div class="form-group">
                            <label class="form-control-label" for="input-city">Πόλη</label>
                            <input type="text" id="city" class="form-control form-control-alternative" placeholder="City" value="{{ Auth::user()->city }}" required/>
                            <div class="help-block with-errors"></div>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="form-group">
                            <label class="form-control-label" for="input-country">Χώρα</label>
                            <input type="text" id="country" class="form-control form-control-alternative" placeholder="Country" value="{{ Auth::user()->country }}" required />

                            <div class="help-block with-errors"></div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="form-group">
                            <label class="form-control-label" for="input-email"> Κωδικός</label>
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
                    </div>
                    <hr class="my-4" />
                    <!-- Description -->
                    <h6 class="heading-small text-muted mb-4">Υπενθυμίζω στον εαυτό μου το ποιος είμαι</h6>
                    <div class="pl-lg-4">
                      <div class="form-group">
                        <label>Λίγα λόγια για μένα</label>
                        <textarea rows="4" class="form-control form-control-alternative" id="summary">
                          {{Auth::user()->summary}}
                        </textarea>
                      </div>
                    </div>
                    <div class="text-right">
                      <button type='submit' id="saveBtn" class="btn btn-sm btn-primary">ΑΠΟΘΗΚΕΥΣΗ</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-4" style='padding: 10px;'>
              <!-- card -->
              <div class="card">
                <div class='card-header justify-content-center' style='background-color: rgb(0, 162, 232);'>
                  <center>
                    <img src="{{ asset(Auth::user()->img_url) }}" width='60' class="rounded-circle">
                  </center>
                </div>
                <!-- card body -->
                <div class="card-body">
                  <div class="row">
                    <form action="{{ route('image.upload.post') }}" style='width:100%; margin-right: 15px;' method="POST" id="imgupload" enctype="multipart/form-data">
                      @csrf
                      <span class="btn btn-success fileinput-button" style='width: 100%;'>
                        <i class="glyphicon glyphicon-plus"></i>
                        <span>Εικονα προφιλ</span>
                        <!-- The file input field used as target for the file upload widget -->
                        <input type="file" name="image" id="imgInp" class="custom-file-input form-control">
                      </span>
                    </form>
                  </div>

                  <div class="text-center" style='margin-top: 30px;'>
                    <h2>
                      {{ Auth::user()->name }}
                    </h2>
                    <div class="h5 font-weight-300">
                      <i class="ni location_pin mr-2"></i>{{ Auth::user()->city }}, {{ Auth::user()->country }}
                    </div>
                    <div class="h5 mt-4">
                      <i class="ni business_briefcase-24 mr-2"></i>{{ Auth::user()->summary }}
                    </div>
                  </div>
                </div>
                <!-- card body end -->
              </div>
              <!-- card end -->
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

  <div id="pageAttr" attr="profile" csrf="{{ csrf_token() }}"></div>
  <form action="{{ route('profile') }}" method="GET" id='thispage' style="display:none;">
  </form>

  

  @include('other.sellerpaydlg')
  @include("company.partner.partials._modal_pay_companypartner")
@endsection

@push('styles')
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
  .inputfile {
    width: 0.1px;
    height: 0.1px;
    opacity: 0;
    overflow: hidden;
    position: absolute;
    z-index: -1;
  }
  .inputfile + label {
    width: 200px;
    font-size: 1.25rem;
    font-weight: 700;
    text-overflow: ellipsis;
    white-space: nowrap;
    cursor: pointer;
    display: inline-block;
    overflow: hidden;
    padding: 0.625rem 1.25rem;
  }
  .inputfile-1 + label {
    color: #ffffff;
    background-color: #32c5d2;
  }
.upload-drop-zone {
  height: 200px;
  border-width: 2px;
  margin-bottom: 50px;
  margin-top:20px;
}

/* skin.css Style*/
.upload-drop-zone {
  color: #ccc;
  border-style: dashed;
  border-color: #ccc;
  text-align: center
}
.upload-drop-zone.drop {
  color: #222;
  border-color: #222;
}
  #img-upload{
      width: 100%;
  }
</style>
@endpush

@push('scripts')
<script src="{{asset('js/validator.min.js')}}"></script>
<script src="http://platform.twitter.com/widgets.js"></script>
<script src="{{ asset('plugins/select-component/select-component.js') }}"></script>
<script src="{{ asset('js/jquery.form.min.js') }}"></script>
<script src="{{ asset('js/default-assets/profile.js') }}"></script>
@endpush
@push("styles")
<link rel='stylesheet' href="{{ asset('plugins/select-component/select-component.css') }}" />
<link rel="stylesheet" href="{{ asset('css/profile.css') }}" />
@endpush