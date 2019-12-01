<div class='sidebar'>  
    <h4 class='product-sidebar-title'>Products in all collaboration</h4>
    <div class='searchbox'>
        <div id="cover">
            <div class="tb">
                <div class="td"><input type="text" id='search' placeholder="Search" required></div>
                <div class="td" id="s-cover">
                    <i class="fas fa-search"></i>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="category-selection">
            <div class='category-container'>
                
            </div>
        </div>
    </div>
</div>
@push('scripts')
<script src="{{ asset('plugins/select-component/select-component.js') }}"></script>
<script src="{{ asset('plugins/sticky-sidebar/sticky-sidebar.js') }}"></script>
<script src="{{ asset('js/user-pages/product/sidebar.js') }}"></script>
@endpush
@push('styles')
<link rel='stylesheet' href="{{ asset('plugins/radiobutton/radiobutton.css') }}">
<link rel='stylesheet' href="{{ asset('plugins/searchbox/searchbox.css') }}">
@endpush