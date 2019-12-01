<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductCategoryModel extends Model
{
    //
    protected $table = "product_category";

    public function products()
    {
        return $this->hasMany("\App\ProductModel", "category_id", "id");
    }

    public static function getProducts($categoryid)
    {
        $category = ProductCategoryModel::find($categoryid);

        if($category == null) return null;

        return $category->products()->get();
    }
}
