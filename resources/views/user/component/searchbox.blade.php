<form action="" class='search-form'>
    <div class='searchbox' style='float:right; margin-bottom: 0px;'>
        <div id="cover">
            <div class="tb">
                <div class="td"><input type="text" id='search' placeholder="Search" required></div>
                <div class="td" id="s-cover">
                    <i class="fas fa-search"></i>
                </div>
            </div>
        </div>
    </div>
</form>

@push('styles')
<link rel='stylesheet' href="{{ asset('plugins/searchbox/searchbox.css') }}">
@endpush
@push('scripts')
<script src="{{ asset('js/user-pages/component/searchbox.js') }}"></script>
@endpush