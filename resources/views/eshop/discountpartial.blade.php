<section class='section-padding-80'>
    <div class="container">
        <h2> Εκπτώσεις </h2>
        <div class="row">
            <div class='searchbox col-md-8'>
                <div id="cover">
                    <div class="tb">
                        <div class="td"><input type="text" id='discount-search' placeholder="Search" required></div>
                        <div class="td" id="s-cover">
                            <i class="fas fa-search"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <a href="{{ route('discount.add') }}"><button class="btn btn-primary form-control" id="add-discount-btn"> Προσθήκη έκπτωσης </button></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row" id="discount-list">
        </div>
    </div>
</section>

<form action="{{ route('discount.edit') }}" method='post' id='edit-discount-form' style="display:none;">
    @csrf
    <input type="text" name='discount_id' />
</form>

@push("scripts")
@include("eshop.js_partials.__js_discount")
@endpush
