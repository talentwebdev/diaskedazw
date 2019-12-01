<div class='circle-component-container' style='margin:auto;'>
    <div id='circle-component' style='' class='circle-container'>
        <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
    </div>
    <div id='sub-component-1' style='display: none; margin: auto;' class="circle-container sub">
        <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
    </div>
    <div id='sub-component-2' style='display: none; margin: auto;' class="circle-container sub">
        <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
    </div>
    <div id='sub-component-3' style='display: none; margin: auto;' class="circle-container sub">
        <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
    </div>
    <div id='sub-component-4' style='display: none; margin: auto;' class="circle-container sub">
        <div style='width: 100%; height:100%;' class='circle-border border-thick border-dashed over-lay'></div>
    </div>
    <div id='adv-service' style='position: absolute; width:30%; left: 50%; transform: translateX(-50%) translateY(-50%); top: 50%; display: block;  margin: auto;' class="circle-container sub">
        <img src='{{ asset("img/services/service_ad/mall.jpg") }}' style='width:100%;' />
    </div>    
</div>

@push('styles')
<link type="text/css" href="{{ asset( 'css/circle-component/circle-component.css') }}" rel='stylesheet' >
@endpush

@push('scripts')
<script src="{{ asset( 'js/circle-component/circle-component.js') }}" ></script>
<script src="{{ asset('js/user-pages/component/circle.js') }}"></script>
@endpush