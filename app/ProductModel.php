<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\LikeModel;
use App\User;
use Illuminate\Support\Facades\Auth;

class ProductModel extends Model
{
    //
    protected $table="product";

    public function user()
    {
    	return $this->belongsTo("\App\User", "user_id", "id");
    }

    public function category()
    {
    	return $this->belongsTo("\App\ProductCategoryModel", "category_id", "id");
    }

    public function transactions()
    {
        return $this->hasMany("\App\TransactionModel", "product_id", "id");
    }

    

    public function getLikeCount()
    {
        $this->likeCnt = LikeModel::getLikeCount($this->id, "product")["star"];
        if(Auth::user() == null)
            $this->isLike = false;
        else{
            $status = LikeModel::getStatus(Auth::user()->id, $this->id, "product");
            if($status == null)
                $this->isLike = false;
            else
                $this->isLike = true;
        }
        return $this;
    }

    /* static */
    /**
     * @param user_id
     * @param product_name
     * @param product_img
     * @param product_price
     * @param product_description
     * @param category_id
     * @param colors
     * @param size
     * @param overview
     */
    public static function addProduct($user_id, $product_name, $product_img, $product_price, $product_description, $category_id, $colors, $size, $overview)
    {
        $product = new ProductModel;
        $product->user_id = $user_id;
        $product->product_name = $product_name;
        $product->product_img = $product_img;
        $product->product_price = $product_price;
        $product->product_description = $product_description;
        $product->category_id = $category_id;
        $product->colors = $colors;
        $product->size = $size;
        $product->overview = $overview;

        //$product->timestamps = false;
        $product->save();

        return $product;
    }

    public static function getCategory($productid)
    {
        $product = ProductModel::find($productid);

        if($product == null) return null;

        return $product->category();
    }

    public static function editProduct($id, $product_name, $product_img, $product_price, $product_description, $category_id, $colors, $size, $overview)
    {
        $product = ProductModel::find($id);

        $product->product_name = $product_name;
        $product->product_img = $product_img;
        $product->product_price = $product_price;
        $product->product_description = $product_description;
        $product->category_id = $category_id;
        $product->colors = $colors;
        $product->size = $size;
        $product->overview = $overview;

        //$product->timestamps = false;
        $product->save();
        return $product;
    }

    public static function getAllLikeCount($products)
    {
        foreach($products as $product)
        {
            $product = $product->getLikeCount();
        }

        return $products;
    }

    public static function getLatestProducts($count = -1, $user = -1)
    {
        if($count == -1)
        {
            if($user == -1)
                $products = self::orderBy("created_at", "desc")
                    ->get();
            else 
                $products = self::orderBy("created_at", "desc")
                    ->where("user_id", $user)
                    ->get();
                    
        }
        else
        {
            if($user == -1)
                $products = self::orderBy("created_at", "desc")
                    ->take($count)
                    ->get();
            else 
                $products = self::orderBy("created_at", "desc")
                    ->where("user_id", $user)
                    ->take($count)
                    ->get();
                
        }

        $products = self::getAllLikeCount($products);

        return $products;
    }

    public static function getProductsFromUser($user)
    {
        $products = array();

        if($user)
        {
            $products = ProductModel::where("user_id", "=", $user->id)->get();       
        }

        return $products;
    }
}
