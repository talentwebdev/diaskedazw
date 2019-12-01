

@foreach($discounts as $discount)
<div class="col-md-3 discount-item" discount-id="{{ $discount->id }}">
    <h5>{{ $discount->title }}</h5>
    <div>{{ $discount->description }}</div>
    <div class="row">
        <div class='col-md-6'>
            <button class='btn btn-primary edit-discount form-control' discount-id="{{ $discount->id }}"> Edit </button> 
        </div>
        <div class='col-md-6'>
            <button class='btn btn-danger delete-discount form-control' discount-id="{{ $discount->id }}"> Delete </button>
        </div>
    </div>
</div>
@endforeach


<style>
.discount-item{
    text-align:center;
}
</style>