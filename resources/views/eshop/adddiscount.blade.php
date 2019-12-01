@extends("layouts.app")

@section("content")
<div class="container" id="add-discount-container">
    <div class="card">
        <div class="card-header">
            <h5> Προσφορά / Έκπτωση </h5>
        </div>
        <div class="card-body">
            <form action="{{ route('discount.store') }}" method="post">
                @csrf
                <div class="row">
                    <div class="col-md-12">
                        <h6> Τίτλος: </h6>
                        <input type="text" name='title' class="form-control" />
                    </div>
                    <div class="col-md-12">
                        <h6> Περιγραφή: </h6>
                        <textarea name="description" class="form-control"></textarea>
                    </div>
                    <div class="col-md-12">
                        <button class="btn btn-primary" style="float:right;"> Αποθήκευση </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@push("styles")
<style>
#add-discount-container{
    padding-top: 60px;
}
</style>
@endpush