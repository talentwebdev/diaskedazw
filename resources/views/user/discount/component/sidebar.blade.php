<div class='sidebar'>  
    <h4 class='company-sidebar-title'>Συμβεβλημένες Επιχειρήσεις</h4>
    <div class='searchbox'>
        <div id="cover">
            <div class="tb">
                <div class="td" style="color:white;"><input type="text" id='search' placeholder="Αναζήτηση" required></div>
                <div class="td" id="s-cover">
                    <i class="fas fa-search"></i>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class='area-selection'>
            <h4 class='company-area-title'>Επαρχία</h4>
            <div class='area-container'>
                
            </div>
        </div>
        <div class='category-selection'>
            <h4 class='company-category-title'>Κατηγορία</h4>
            <div class='category-container'>
                
            </div>
        </div>
    </div>
</div>
@push('scripts')
<script src="{{ asset('plugins/select-component/select-component.js') }}"></script>
<script src="{{ asset('plugins/sticky-sidebar/sticky-sidebar.js') }}"></script>
<script src="{{ asset('js/user-pages/discount/sidebar.js') }}"></script>
@endpush
@push('styles')
<link rel='stylesheet' href="{{ asset('plugins/radiobutton/radiobutton.css') }}">
<link rel='stylesheet' href="{{ asset('plugins/searchbox/searchbox.css') }}">
@endpush