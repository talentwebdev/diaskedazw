@extends("layouts.app")

@section('content')

@include('partner.test.firstpage')
@include('user.component.menudetail')

<!-- partner introduction section -->
<section class='about-section-area'>
	<!-- partner detailed introduction -->
	<div class='row'>
	<div class='col-md-8' style='/*width: 100%;*/ position:relative; '>
		<div class='row partner-detail-row main-pos'>
			<div class='col-md-3 partner-detail-image-container'>
				<div style="border-bottom:transparent;">
					<img src="{{ asset('img/bg-img/ellinas.png') }}" >
				</div>
			</div>
			<div class='col-md-9' >
				<div class='partner-detail-info-container' >
					<div class='partner-detail-info-name' style='font-size: 18px; font-weight: bold;'>									
					Επαγγελματική Ευκαιρία 
					</div>
					<hr>
					<div class='partner-detail-info-summary'>
Επιπλέον μπορείς να δημιουργήσεις τη δική σου επιχείρηση, σε παγκόσμιο επίπεδο, χωρίς κεφάλαιο, δουλεύοντας απο το δικό σου χώρο, στο δικό σου χρόνο στον τομέα του Social Marketing. 
<p>
    
</p>
					</div>
					
					<!--
					<div class='partner-detail-info-say'>
					</div>
					-->
				</div>
			</div>

		</div>
		<!--
		<div class='row partner-detail-row left-pos'>
			<div class='col-md-3 partner-detail-image-container'>
				<div>
					<img src="{{ asset('img/bg-img/layer-125.png') }}">
				</div>
			</div>
			<div class='col-md-9'>
				<div class='partner-detail-info-container'>
					<div class='partner-detail-info-name' style='font-size: 18px; font-weight: bold;'>								
					</div>
					<hr>
					<div class='partner-detail-info-summary'>
					</div>
					
				</div>
			</div>
			<div class='hr'></div>
		</div>
		<div class='row partner-detail-row right-pos'>
			<div class='col-md-3 partner-detail-image-container'>
				<div>
					<img src="{{ asset('img/bg-img/layer-125.png') }}">
				</div>
			</div>
			<div class='col-md-9'>
				<div class='partner-detail-info-container'>
					<div class='partner-detail-info-name' style='font-size: 18px; font-weight: bold;'>						
					</div>
					<hr>
					<div class='partner-detail-info-summary'>
					</div>	
				</div>
			</div>
			<div class='hr'></div>
		</div>
		-->
	</div>
	<div class='col-md-4 package-video-info'>
		<div>
			<video loop="loop" width="100%" poster="{{ asset('plugins/canvas-map/img/partnerwwss.png') }}" id="mainVideo" controls muted>
				<source src="{{ asset('videos/upload/protasi.mp4') }}" type="video/mp4">                        
			</video>
			
		</div>
	</div>
	</div>
	<!-- partner detailed introduction end -->

	<!-- partner list section -->
	<div class='row partner-list-row'>
		<div class='partner-list-container'>
			<div class='owl-carousel owl-theme partner-list' id='partner-list'>
				
			</div>	
		</div>
	</div>
	<!-- partner list section end -->
</section>
<!-- partner introduction section end -->
@include('other.footer')
@endsection

@push('styles')
<link rel='stylesheet' type='text/css' href="{{ asset('css/user-pages/login/style.css') }}">
<link rel='stylesheet' type='text/css' href="{{ asset('css/user-pages/about/style.css') }}">
<style>
.my-odd .user-description{
	padding-right:45px !important;
}
.my-even .user-description{
	padding-left: 45px !important;
}
.my-odd .user-image{
	padding-left: 45px !important;
}
.my-even .user-image{
	padding-right: 45px !important;
}
.partner-detail-row{
	width: 100% !important;
	padding-left: 50px;
}
.partner-list-row{
	height: auto !important;
	padding-top: 20px;
	padding-bottom: 10px;
}
.partner-list-container{
	transform: translateY(0) !important;
}
.about-section-area > div.row{
	margin-left: 0px !important;
	margin-right: 0px !important;
}
@media only screen and (max-width: 767px){
	.partner-detail-row{
		padding-left: 0px !important;
	}
}
</style>
@endpush

@push('scripts')
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js.js") }}'></script> 

<script src="{{ asset('js/user-pages/about/timeline.js') }}"></script>
<script src="{{ asset('js/user-pages/about/index.js') }}"></script>
@endpush