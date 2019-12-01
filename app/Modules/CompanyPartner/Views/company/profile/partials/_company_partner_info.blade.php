<div class="row">
    <div class="col-md-4">
        <div class='communication-tip-container'>
            <span class='tip-box' style="color:white;">Σημείωση</span>
            <div class='communication-info-tip'>{{ $company->communication }} </div>
        </div>
        <div>
            <i class="fas fa-map-marker-alt"></i> &nbsp; <label> {{ $partner->address }} </label>
        </div>
        <div>
            <i class="fas fa-at"></i> &nbsp; <label> {{ $company->email }} </label>
        </div>
        <div>
            <i class="fas fa-phone-volume"></i> &nbsp; <label> {{ $partner->telephone }} </label>
        </div>
        <div>
            <i class="fas fa-mobile-alt"></i> &nbsp; <label> {{ $partner->mobile }} </label>
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <span class='tip-box' style="color:white;">Στείλτε μας μύνημα!</span>
            <form id="inbox-info-form">
                @csrf
                <input type="hidden" value="{{ $partner->id }}" name='partner_id' id='partner_id' />
                <div class="inbox-container" style="padding: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label> Ονοματεπώνυμο: </label>
                            <input type="text" name="name" id="name" class="form-control" />
                        </div>
                        <div class="col-md-6">
                            <label> Ηλεκτρονική Διεύθυνση: </label>
                            <input type="text" name="email" id="email" class="form-control" />
                        </div>
                        <div class="col-md-12">
                            <label> Μύνημα: </label>
                            <textarea rows='4' name="message" id="message" class="form-control"></textarea>
                        </div>
                        <div class="col-md-12">
                            <button class="btn btn-primary" id='submit-inbox-btn' style="float:right;"> ΑΠΟΣΤΟΛΗ </button>
                        </div>
                    </div>   
                </div>
            </form>
        </div>
    </div>
    <div class="col-md-4">

        <input type="hidden" value="{{$company->latitude}}"  id="latitude"/>
        <input type="hidden" value="{{$company->longitude}}" id="longitude"/>
        <div class="embed-responsive embed-responsive-16by9 z-depth-1-half" id="map">            
        </div>
    </div>
</div>

@push("styles")
<style>
.inbox-container,
.communication-info-tip{
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #AAA;
}
</style>
@endpush

@push("scripts")
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIbjiGQiPevElJqdNkF1QZQPD84DOYMZ4"></script>
<script>
$(document).ready(e => {
    $("#submit-inbox-btn").click(e => {
        $.post("{{ route('company.inbox.store') }}", $("#inbox-info-form").serializeToJSON())
            .done(data => {
                $("#name").val("");
                $("#email").val("");
                $("#message").val("");
            })
            .fail(err => {

            });    
        e.preventDefault();
        return false;    
    });      
    
    initMap();
});

function initMap(){
    var lat = $("#latitude").val();
    var lng = $("#longitude").val();
    var map = new google.maps.Map(document.getElementById('map'), {
        center: new google.maps.LatLng(lat, lng), 
        zoom: 10,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        disableDefaultUI: true,
        zoomControl: true,
        zoomControlOptions: {
            position: google.maps.ControlPosition.LEFT_TOP
        }
    });
        
    //  center company location 
    var marker2 = new google.maps.Marker({
        position: map.getCenter(),
        icon: {
            path: google.maps.SymbolPath.CIRCLE,
            scale: 20,
            strokeColor: '#1484ff',
            strokeOpacity: 0.3,    
            strokeWeight: 20           
        },
        draggable: false,
        map: map
    });
    
    var marker = new google.maps.Marker({
        position: map.getCenter(),
        icon: {
            path: google.maps.SymbolPath.CIRCLE,
            scale: 12,
            fillColor: '#1484ff',
            fillOpacity: 1,
            strokeColor: 'white',
            strokeWeight: 5
      
        },
        draggable: false,
        map: map
    });

    // custom controller
    var centerControlDiv = document.createElement('div');
    var centerControl = new CenterControl(centerControlDiv, map, lat ,lng);

    centerControlDiv.index = 1;
    map.controls[google.maps.ControlPosition.TOP_RIGHT].push(centerControlDiv);

    
}


function CenterControl(controlDiv, map, lat , lng) {

    // Set CSS for the control border.
    var controlUI = document.createElement('div');
    controlUI.style.backgroundColor = '#f7f8f2';
    controlUI.style.border = '2px solid #f7f8f2';
    controlUI.style.borderRadius = '5px';
    controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
    controlUI.style.cursor = 'pointer';
    controlUI.style.marginBottom = '22px';
    controlUI.style.paddingTop = '2px';
    controlUI.style.paddingBottom = '2px';
    controlUI.style.marginTop = '5px';
    controlUI.style.marginRight = '5px';

   // controlUI.style.textAlign = 'right';
    controlUI.title = '';
    controlDiv.appendChild(controlUI);

    // Set CSS for the control interior.
    var controlText = document.createElement('div');
    controlText.style.color = 'rgb(25,25,25)';
    controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
    controlText.style.fontSize = '16px';
    controlText.style.lineHeight = '38px';
    controlText.style.paddingLeft = '5px';
    controlText.style.paddingRight = '5px';
    //controlText.innerHTML = '<img src="' + window.location.origin + '/vscode/images/navigation.png"> ' ; //<br> <div style="height:1px;width:100%;background-color:"#eee"> </div>  <img src="' +  window.location.origin + '/vscode/images/navigation.png">
    controlText.innerHTML = '<img src="' + window.location.origin + '/images/navigation.png"> ' ;
    controlUI.appendChild(controlText);

    // Setup the click event listeners: simply set the map to Chicago.
    controlUI.addEventListener('click', function() {
        coordinates = "@"+ lat + "," + lng;
        url = "https://www.google.com.sa/maps/search/"+ coordinates +",12.21z?hl=en";
        window.open(url, '_blank');
    });

}

</script>
@endpush