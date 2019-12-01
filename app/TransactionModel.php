<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TransactionModel extends Model
{
    //
    protected $table = "transaction";

    public function user()
    {
    	return $this->belongsTo("\App\User", "buyer_id", "id");
    }

    public function product()
    {
        return $this->belongsTo("\App\ProductModel", "product_id", "id");
    }    

    public static function addTransaction($seller_id, $buyer_id, $product_id, $product_price)
    {
        $transaction = new TransactionModel;
        $transaction->seller_id = $seller_id;
        $transaction->buyer_id = $buyer_id;
        $transaction->product_id = $product_id;
        $transaction->product_price = $product_price;

        $transaction->save();
        return $transaction;
    }
}
