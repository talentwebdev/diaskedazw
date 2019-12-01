
<div class='sticky-sidebar-container'>
    <div class='sticky-sidebar' style='width: 100%;'>
        <div class='menu'>
            <h4> Μενού </h4>
            <div id='home-menu'> <a href='partnerprofile.home'>Αρχική</a> </div>
            <div id='video-menu'> <a href='partnerprofile.video'>Videos</a> </div>
            <div id='article-menu'> <a href='partnerprofile.article'>Άρθρα</a> </div>
            <div id='gallery-menu'> <a href='partnerprofile.gallery'>Εικόνες</a> </div>
        
        </div>
        <div class='appointment'>
            <div id='calendar'>
            </div>
        </div>
    </div>
</div> 

@include('user.partnerprofile.component.addeventdlg')

@push('scripts')
<script src='{{ asset("plugins/calendar/core/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/interaction/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/daygrid/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/timegrid/main.js") }}'></script>
<script src='{{ asset("plugins/calendar/bootstrap/main.min.js") }}'></script> 
<script src="{{ asset('plugins/sticky-sidebar/sticky-sidebar.js') }}"></script>
<script src="{{ asset('js/user-pages/partnerprofile/stickysidebar.js') }}"></script>
@endpush
@push('styles')
<style>
@media only screen and (max-width:991px){
    #calendar{
        display: none;
    }
}
</style>
<link href='{{ asset("plugins/calendar/core/main.css") }}' rel='stylesheet' />
<link href='{{ asset("plugins/calendar/daygrid/main.css") }}' rel='stylesheet' />
<link href='{{ asset("plugins/calendar/timegrid/main.css") }}' rel='stylesheet' />
<link href='{{ asset("plugins/calendar/calendar/fullcalendar.bundle.css") }}' rel='stylesheet' />
@endpush