<div class="advertise-section">
    <div class="row" style='width:80%; margin:auto;'>    
        
                <!-- Welcome Thumbnail -->
        <div class="col-md-8 info-area">
            <div class='advertise-text'>
                 {{ $company->description }}

            </div>
        </div>
        <div class="col-md-4 video-area">
            <div>
                <video loop="loop" width="100%" id="mainVideo" controls>
                    <source src="{{ asset($company->company_video) }}" type="video/mp4">
                    <source src="video.ogg" type="video/ogg">
                    <source src="video.webm" type="video/webm">
                    <object data="{{ asset('video/diaskedazo.mp4') }}" width="100%" height="380">
                    <embed src="video.swf" width="100%" height="380">
                    </object>
                </video>
            </div>
        </div>
    </div>
</div>

@push("styles")
<style>
.advertise-title{
    border-radius: 15px 15px 0 0 ;
    transform: translateX(-50%) translateY(-100%);
    background-color:rgba(0, 0, 0, 0.6);
}
</style>
@endpush