@extends("layouts.app")

@section("content")
<div class="container" id="edit-discount-container">
    <div class="card">
        <div class="card-header">
            <h5> Edit Discount </h5>
        </div>
        <div class="card-body">
            <form action="{{ route('discount.store') }}" method="post">
                @csrf
                <input type="text" name="id" style="display:none;" value="{{ $discount->id }}" />
                <div class="row">
                    <div class="col-md-12">
                        <h6> Title: </h6>
                        <input type="text" name='title' class="form-control" value="{{ $discount->title }}" />
                    </div>
                    <div class="col-md-12">
                        <h6> Description: </h6>
                        <textarea name="description" class="form-control">{{ $discount->description }}</textarea>
                    </div>
                    <div class="col-md-12">
                        <button class="btn btn-primary" style="float:right;"> save </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@push("styles")
<style>
#edit-discount-container{
    padding-top: 60px;
}
</style>
@endpush