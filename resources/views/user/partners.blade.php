@extends("layouts.app")

@section('content')

@include('partner.test.firstpage')
@include('user.component.menudetail')
<!-- partner introduction section -->
<section class='about-section-area'>
	<!-- partner detailed introduction -->
	<div class='row' style='width: 100%; position:relative; margin-left: 0px; margin-right: 0px; '>
		<div class='col-md-8'>
			<div class='row partner-detail-row main-pos'>
				<div class='col-md-3 partner-detail-image-container'>
					<div style="border-bottom:transparent;">
					
						<img src="{{ asset('img/bg-img/chris.png') }}">
					
					</div>
				</div>
				<div class='col-md-9'>
					<div class='partner-detail-info-container' style="border-radius:2em; ">
						<div >	
							<span style='font-size: 16px;' class='partner-detail-info-name'></span>								
							
						</div>
						<hr>
						<div class='partner-detail-info-summary' style="position:relative; top:-15px;">							
						</div>					
						<div>
							<button partner_id='' style='font-size: 12px; left: 100%; transform:translateX(calc(-100% - 10px)); position:relative;'  class='buy-btn btn btn-primary partner-profile-btn'>ΠΡΟΦΙΛ</button>
						</div>
						
						<!--
						<div class='partner-detail-info-say'>
						</div>
						-->
					</div>
				</div>
				<div class='hr'></div>
			</div>
			<div class='row partner-detail-row left-pos'>
				<div class='col-md-3 partner-detail-image-container'>
					<div style="border-bottom:transparent;">
						<img src="{{ asset('img/bg-img/nontaskop.png') }}">
					</div>
				</div>
				<div class='col-md-9'>
					<div class='partner-detail-info-container' style="border-radius:2em; ">
						<div >	
							<span style='font-size: 16px;' class='partner-detail-info-name'></span>								
							
						</div>
						<hr>
						<div class='partner-detail-info-summary' style="position:relative; top:-15px;">
						</div>
						<div>
							<button partner_id='' style='font-size: 12px; left: 100%; transform:translateX(calc(-100% - 10px)); position:relative;'  class='buy-btn btn btn-primary partner-profile-btn'>ΠΡΟΦΙΛ</button>
						</div>
						<!--
						<div class='partner-detail-info-say'>
						</div>
						-->
					</div>
				</div>
				<div class='hr'></div>
			</div>
			<div class='row partner-detail-row right-pos'>
				<div class='col-md-3 partner-detail-image-container'>
					<div style="border-bottom:transparent;">
						<img src="{{ asset('img/bg-img/') }}">
					</div>
				</div>
				<div class='col-md-9'>
					<div class='partner-detail-info-container' style="border-radius:2em; ">
						<div >	
							<span style='font-size: 16px;' class='partner-detail-info-name'></span>								
						</div>
						<hr>
						<div class='partner-detail-info-summary' style="position:relative; top:-15px;">
						</div>	
						<div>
							<button partner_id='' style='font-size: 12px; left: 100%; transform:translateX(calc(-100% - 10px)); position:relative;'  class='buy-btn btn btn-primary partner-profile-btn'>ΠΡΟΦΙΛ</button>
						</div>				
						<!--
						<div class='partner-detail-info-say'>
						</div>
						-->
					</div>
				</div>
				<div class='hr'></div>
			</div>
		</div>
		<div class='col-md-4 package-video-info'>
			<div>
				<video loop="loop" width="100%" id="mainVideo" controls muted>
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
</style>
@endpush

@push('scripts')
<script src="{{ asset('js/user-pages/discount/index.js') }}"></script>
<script> const world_img = '{{ asset("plugins/canvas-map/img/world.png") }}'; </script>
<script src='{{ asset("plugins/canvas-map/three.min.js") }}'></script>
<script src='{{ asset("plugins/canvas-map/tweenmax.min.js") }}'></script>    
<script src='{{ asset("plugins/canvas-map/js_grey.js") }}'></script> 

<script src="{{ asset('js/user-pages/partners/timeline.js') }}"></script>
<script src="{{ asset('js/user-pages/partners/index.js') }}"></script>
@endpush