@extends('company.dashboard.layouts.app')


@section('content')

<div class="container">
    <div class="card">
        <div class="card-header">
            <h4> Επεξεργασία Προφίλ Ιστοσελίδας </h4>
        </div>
        <div class="card-body">
            @foreach($errors->all() as $message)
                <div class="error-message" >
                    {{ $message }}
                </div>
            @endforeach
            <form action="{{ route('company.partner.companyupdate') }}" method="post" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id" value="{{ $company->id }}" />

                

                <div class="row">
                    <div class="col-md-12">
                        <h5> Όνομα Επιχείρησης: </h5>
                        <input type="text" class="form-control" value='{{ $company->name }}' name="company_name" id='companyName' />
                    </div>
                    <div class="col-md-12">
                        <h5> Διαφημιστικό Βίντεο (κεντρική προβολή): </h5>
                        <!-- upload user eshop promote video part -->
                        <div>
                            <div id='preview-video-container'>
                                <video id="preview-video" loop="loop" width="100%" height='100%' controls>
                                    <source src="{{ asset($company->company_video) }}" type="video/mp4">
                                </video>
                            </div>  
                            <div class="upload-drop-zone" id="drop-zone">            
                                <div class="form-group">
                                    <h2> <i class="fas fa-upload" style='color: rgb(0, 173, 239); font-size:50px;'></i> </h2> 
                                    <h4> Τοποθετήστε το βίντεο εδώ </h4> 
                                    <input type="file" name="video" id="video" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple="">
                                    <label for="video"><svg xmlns="#" width="20"  viewBox="0 0 20 17">
                                        <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
                                        </svg> <span>Αναζήτηση…</span></label>
                                </div>                      
                            </div>
                            <div class="progress" style='height:1px;'>
                                <div class="progress-bar" role="progressbar" id='video-progress' style="height:100%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <!-- upload user eshop promote video part end -->
                        <input type="text" value="{{ $company->company_video }}" style="display: none;" name="company_video" />
                    </div>
                    
                    <div class="col-md-12">
                        <h5> Email επικοινωνίας πελατών: </h5>
                        <input type="text" class="form-control" value="{{ $company->email }}" name="email" />
                    </div>

                    <div class="col-md-12">
                        <h5> Link url ιστοσελίδας: </h5>
                        <input type="text" class="form-control" value="{{ $company->link_url }}" name="link_url" />
                    </div>
                    <div class="col-md-12">
                        <h5> Έκπτωση κατόχων κάρτας Diaskedazw: </h5>
                        <input type="number" class="form-control" value="{{ $company->discount_cnt }}"  name="discount_cnt" />
                    </div>
                    <div class="col-md-12">
                        <h5> Λεπτομέριες έκπτωσης: </h5>
                        <textarea class="form-control" rows='3' value='{{ $company->discount_info }}'  name="discount_info">{{ $company->discount_info }}</textarea>
                    </div>
                    <div class="col-md-12">
                        <h5> Κεντρικό Λεκτικό (δίπλα από το διαφημιστικό βίντεο): </h5>
                        <textarea class="form-control" rows='4' value='{{ $company->description }}' name="company_description">{{ $company->description }}</textarea>
                    </div>
                    <div class="col-md-12">
                        <h5> Επιπλέον σημείωση (πάνω από τα στοιχεία επικοινωνίας): </h5>
                        <textarea class="form-control" rows='2' value='{{ $company->communication }}' name="company_communication">{{ $company->communication }}</textarea>
                    </div>
                    <div class="col-md-12">
                        <h5> Slogan: </h5>
                        <textarea class="form-control" rows='2'  value='{{ $company->slogan }}' name="company_slogan">{{ $company->slogan }}</textarea>
                    </div>
                    <div class="col-md-4">
                        <h5> Σύνδεσμος για το Facebook: </h5>
                        <input type="text" id='facebook' name='facebook' class='form-control' value="{{ $company->facebook }}" />
                    </div>
                    <div class="col-md-4">
                        <h5> Σύνδεσμος για το Youtube: </h5>
                        <input type="text" id="youtube" name="youtube" class="form-control" value="{{ $company->youtube }}" />
                    </div>
                    <div class="col-md-4">
                        <h5> Σύνδεσμος για το Twitter: </h5>
                        <input type="text" id="twitter" name="twitter" class="form-control" value="{{ $company->twitter }}" />
                    </div>
                    
                    <div class="col-md-12">                    
                        <h5> Διεύθυνση Επιχείρησης (χάρτης): </h5>
                        <input id="autocomplete"
                            placeholder="Enter your address"
                            class="form-control"                         
                            type="text"/>
                    </div>

                    <input type="hidden" name="latitude" id="latitudeID" value="{{ $company->latitude }}" />
                    <input type="hidden" name="longitude" id="longitude" value="{{ $company->longitude }}" />

                    <div class="col-md-12">
                        <h5> Διεύθυνση Επιχείρησης </h5>
                        <input type="text" class="form-control" value="{{ $company->address }}" name="address" id='address' />                        
                    </div>


                    <div class="col-md-12">
                        <div class="embed-responsive embed-responsive-16by9 z-depth-1-half mt-2" id="map">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" id='save-btn' class="btn btn-primary" style="float:right;"> Αποθηκευση </button>
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
<style>
.card{
    margin-top: 60px;
}
</style>
@endpush

@push("scripts")
<!-- AIzaSyDIbjiGQiPevElJqdNkF1QZQPD84DOYMZ4 -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDXw9pt9rMAK6V2dMCaTMytkouhzPKsdUU&sensor=false&libraries=places&callback=initialize" async defer></script>
    <script src="{{ asset('plugins/select-component/select-component.js') }}"></script>
    @include("company.dashboard.js_partials.__js_companyedit")
    <script>
        var geocoder;
        var map;
        $(document).ready(function(){                        
            $('#autocomplete').keypress(function(e){
                if ( e.which == 13 ) return false;
                //or...
                if ( e.which == 13 ) e.preventDefault();
            });

        });
        
        function initialize() {
           var lat = $("#latitudeID").val();
            var lng = $("#longitude").val();            
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
                    map.setZoom(13); // Why 17? Because it looks good.
                }
              
                marker.setPosition(place.geometry.location);
                $("#address").val($("#autocomplete").val());
                $("#latitudeID").val(place.geometry.location.lat());
                $("#longitude").val(place.geometry.location.lng());

                //document.getElementById('latitude').value = ; //latitude
                //document.getElementById('longitude').value = place.geometry.location.lng(); //longitude

                var address = '';
                if (place.address_components) {
                    address = [(place.address_components[0] && place.address_components[0].short_name || ''), (place.address_components[1] && place.address_components[1].short_name || ''), (place.address_components[2] && place.address_components[2].short_name || '')].join(' ');
                }
                //updateTextFields(place.geometry.location.lat(),place.geometry.location.lng());               
            });

          
      }
      

    

    function markerLocation(marker){
        //Get location.
        var currentLocation = marker.getPosition();
        //Add lat and lng values to a field that we can save.
        $("#latitudeID").val(place.geometry.location.lat());
        $("#longitude").val(place.geometry.location.lng());
        // document.getElementById('latitude').value = currentLocation.lat(); //latitude
        // document.getElementById('longitude').value = currentLocation.lng(); //longitude

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