@extends("layouts.app")

@section('content')

<div class="container">
    <div class="card">
        <div class="card-header">
            <h4> Become a Company Partner </h4>
        </div>
        <div class="card-body">
            @foreach($errors->all() as $message)
                <div class="error-message" >
                    {{ $message }}
                </div>
            @endforeach
            <form action="{{ route('company.partner.companycreate') }}" method="post" enctype="multipart/form-data">
                @csrf
                
                <input type="hidden" id="latitude" name="latitude" value="{{ old('latitude') }}" />
                <input type="hidden" id="longitude" name="longitude" value="{{ old('longitude') }}" />


                <div class="row">
                    <div class="col-md-12">
                        <h5> Company Name: </h5>
                        <input type="text" class="form-control" value='{{ old('company_name') }}' name="company_name" id='companyName' />
                    </div>
                    

                    <div class="col-md-12">
                        <h5> Company Logo: </h5>
                        <input type="file" name="company_logo" id="companyLogoFile" />
                        <img src="" id="logoPreview" width='80' height='80' />
                    </div>
                    <div class="col-md-12">
                        <h5> Company Video: </h5>
                        <!-- upload user eshop promote video part -->
                        <div>
                            <div id='preview-video-container'>
                                <video id="preview-video" loop="loop" width="100%" height='100%' controls>
                                    <source src="" type="video/mp4">
                                </video>
                            </div>  
                            <div class="upload-drop-zone" id="drop-zone">            
                                <div class="form-group">
                                    <h2> <i class="fas fa-upload" style='color: rgb(0, 173, 239); font-size:50px;'></i> </h2> 
                                    <h4> Drag and drop anywhere to upload </h4> 
                                    <input type="file" name="video" id="video" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple="">
                                    <label for="video"><svg xmlns="#" width="20"  viewBox="0 0 20 17">
                                        <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
                                        </svg> <span>Choose a file…</span></label>
                                </div>                      
                            </div>
                            <div class="progress" style='height:1px;'>
                                <div class="progress-bar" role="progressbar" id='video-progress' style="height:100%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <!-- upload user eshop promote video part end -->
                        <input type="text" style="display: none;" name="company_video" />
                    </div>
                    <div class="col-md-12">
                        <h5> Link url: </h5>
                        <input type="text" class="form-control" value="{{ old('link_url') }}" name="link_url" />
                    </div>



                    <div class="col-md-12">
                        <h5> Area: </h5>
     
                        <div class="wrapper-dropdown-3" style="border:none !important;">
                            <select class="js-example-basic-single" style="width:100%; " id="company_area" name="company_area[]" multiple="multiple">
                                <option > </option>                                                                                    
                            </select>
                        </div>
                                            
                    </div>
                    

                        
                    <!-- <div class="col-md-12">
                        <h5> Area: </h5>

                        <div id="areaDropdown" class="wrapper-dropdown-3">
                            <span>Select Area...</span>
                            <ul class="dropdown" id='areaList'>						
                            </ul>
                        </div>
                        <input type="text" value="{{ old('company_area') }}" name="company_area" style="display:none;" />

                    </div> -->

                    <!-- <div class="col-md-12">
                        <h5> Category: </h5>
                        <div id="categoryDropdown" class="wrapper-dropdown-3">
                            <span>Select Category...</span>
                            <ul class="dropdown" id='categoryList'>						
                            </ul>
                        </div>
                        <input type="text" value="{{ old('company_category') }}" name="company_category" style="display: none;" />
                    </div> -->

                    <div class="col-md-12">
                        <h5> Area: </h5>
     
                        <div class="wrapper-dropdown-3" style="border:none !important;">
                            <select class="js-example-basic-single2" style="width:100%; " id="company_category" name="company_category[]" multiple="multiple">
                                <option > </option>                                                                                    
                            </select>
                        </div>
                                            
                    </div>


                    <div class="col-md-12">
                        <h5> Company Email: </h5>
                        <input type="email" class="form-control" value="{{ old('email')}}"  name="email" required/>
                    </div>

                    <div class="col-md-12">
                        <h5> Discount Count: </h5>
                        <input type="number" class="form-control" value="{{ old('discount_cnt')}}"  name="discount_cnt" />
                    </div>
                    <div class="col-md-12">
                        <h5> Discount Info: </h5>
                        <textarea class="form-control" rows='3' value='{{ old('discount_info') }}'  name="discount_info">{{ old('discount_info') }}</textarea>
                    </div>
                    <div class="col-md-12">
                        <h5> Description: </h5>
                        <textarea class="form-control" rows='4' value='{{ old('company_description')}}' name="company_description">{{ old('discount_info') }}</textarea>
                    </div>
                    <div class="col-md-12">
                        <h5> Company Communication: </h5>
                        <textarea class="form-control" rows='2' value='{{ old('company_communication')}}' name="company_communication">{{ old('discount_info') }}</textarea>
                    </div>
                    <div class="col-md-12">
                        <h5> Slogan: </h5>
                        <textarea class="form-control" rows='2'  value='{{ old('company_slogan')}}' name="company_slogan">{{ old('company_slogan') }}</textarea>
                    </div>
                    
                    <div class="col-md-4">
                        <h5> Facebook: </h5>
                        <input type="text" id='facebook' name='facebook' class='form-control' value="{{ old('facebook') }}" />
                    </div>
                    <div class="col-md-4">
                        <h5> Youtube: </h5>
                        <input type="text" id="youtube" name="youtube" class="form-control" value="{{ old('youtube') }}" />
                    </div>
                    <div class="col-md-4">
                        <h5> Twitter: </h5>
                        <input type="text" id="twitter" name="twitter" class="form-control" value="{{ old('twitter') }}" />
                    </div>

                    <div class="col-md-6">
                        <h5> Instagram: </h5>
                        <input type="text" id="instagram" name="instagram" class="form-control" value="{{ old('instagram') }}" />
                    </div>

                    <div class="col-md-6">
                        <h5> Linkedin: </h5>
                        <input type="text" id="linkedin" name="linkedin" class="form-control" value="{{ old('linkedin') }}" />
                    </div>

                    

                    <div class="col-md-12">                    
                        <h5> Input Address: </h5>
                        <input id="autocomplete"
                            placeholder="Enter your address"
                            class="form-control"
                         
                            type="text"/>
                    </div>

                    <div class="col-md-12">
                        <h5> Company Address: </h5>
                        <input type="text" class="form-control" value='{{ old('address') }}' name="address" id='address' />                        
                    </div>
                    
                

                    <div class="col-md-12">
                        <div class="embed-responsive embed-responsive-16by9 z-depth-1-half mt-2" id="map">

                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary" style="float:right;"> Save </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<form action="{{ route('uploadvideo.file') }}" method='post' enctype='multipart/form-data' id='js-upload-form'>
    @csrf
</form>
@endsection




@push("styles")
<link rel='stylesheet' href="{{ asset('plugins/select-component/select-component.css') }}" />
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/css/select2.min.css" rel="stylesheet" />
<style>
.card{
    margin-top: 60px;
}
</style>
@endpush

@push("scripts")
<!-- AIzaSyDIbjiGQiPevElJqdNkF1QZQPD84DOYMZ4 -->

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDXw9pt9rMAK6V2dMCaTMytkouhzPKsdUU&sensor=false&libraries=places&callback=initialize" async defer></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/js/select2.min.js"></script>
    <script src="{{ asset('plugins/select-component/select-component.js') }}"></script>
    <!-- <script src="{{ asset('plugins/select2/select2.min.js') }}"></script> -->
    @include("company.partner.js_partials.__js_create")
    <script>
        var geocoder;
        var map;
        $(document).ready(function(){            
            $(".js-example-basic-single").select2({
                placeholder:"Choose Area"
            });
            $(".js-example-basic-single2").select2({
                placeholder:"Choose Category"
            });
                       
        });


    function initialize() {
           var lat = 35.095192;
            var lng = 33.20343;
            document.getElementById('latitude').value = lat;
            document.getElementById('longitude').value = lng;
            geocoder = new google.maps.Geocoder();

            map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng(lat, lng), 
                zoom: 14,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                disableDefaultUI: true,
                zoomControl: true,
                zoomControlOptions: {
                    position: google.maps.ControlPosition.LEFT_TOP
                }
            });

            //  center company location 
            var marker = new google.maps.Marker({
                position: map.getCenter(),
                icon: {
                    path: google.maps.SymbolPath.CIRCLE,
                    scale: 15,
                    strokeColor: '#1484ff',
                    strokeOpacity: 0.3,    
                    strokeWeight: 15,
                    fillColor: '#1484ff',   
                    fillOpacity: 1    
                },
                draggable: true,
                map: map
            });
                            
            google.maps.event.addListener(marker, 'dragend', function(event){
                markerLocation(marker);
                geocodePosition(marker.getPosition());
            });


            var input = document.getElementById('autocomplete');
            var autocomplete = new google.maps.places.Autocomplete(input);

            autocomplete.bindTo('bounds', map);

            google.maps.event.addListener(autocomplete, 'place_changed', function () {
            
                var place = autocomplete.getPlace();
                if (place.geometry.viewport) {
                    map.fitBounds(place.geometry.viewport);
                } else {
                    map.setCenter(place.geometry.location);
                    map.setZoom(17); // Why 17? Because it looks good.
                }
              
                marker.setPosition(place.geometry.location);
                $("#address").val($("#autocomplete").val());

                var address = '';
                if (place.address_components) {
                    address = [(place.address_components[0] && place.address_components[0].short_name || ''), (place.address_components[1] && place.address_components[1].short_name || ''), (place.address_components[2] && place.address_components[2].short_name || '')].join(' ');
                }

                //updateTextFields(place.geometry.location.lat(),place.geometry.location.lng());
                document.getElementById('latitude').value = place.geometry.location.lat(); //latitude
                document.getElementById('longitude').value = place.geometry.location.lng(); //longitude

            });

          
      }
      

    

    function markerLocation(marker){
        //Get location.
        var currentLocation = marker.getPosition();
        //Add lat and lng values to a field that we can save.
        document.getElementById('latitude').value = currentLocation.lat(); //latitude
        document.getElementById('longitude').value = currentLocation.lng(); //longitude

    }

    function geocodePosition(pos) {
        geocoder.geocode({
            latLng: pos
        }, function(responses) {
            if (responses && responses.length > 0) {
                $("#address").val(responses[0].formatted_address);
            } else {
                $("#address").val("");                
            }
        });
    }
        

        
        



    </script>
@endpush