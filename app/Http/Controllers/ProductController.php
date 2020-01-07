<?php

namespace App\Http\Controllers;

use Illuminate\Http\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

use App\User;
use App\LikeModel;
use App\ProductModel;
use App\TransactionModel;
use App\SubscriptionModel;
use App\NotificationModel;
use App\ProductCategoryModel;

use Mail;
use \App\Mail\SendProductPaymentEmail;
use App\Support\CompanyStatistics;

class ProductController extends Controller
{
    //

    public function addProduct()
    {
        $product = ProductModel::addProduct(Auth::user()->id,
                                request()->product_name,
                                request()->product_img,
                                request()->product_price,
                                request()->product_description,
                                request()->category_id,
                                request()->colors,
                                request()->size,
                                request()->overview);

        return $product;                                
    }

    public function getProductsFromCategory()
    {
        $products = ProductCategoryModel::getProducts(request()->category_id);

        if($products == null) return "failed";
        return ProductModel::getAllLikeCount($products);
    }

    public function getAllCategories()
    {
        $categories = ProductCategoryModel::all();

        return $categories;
    }

    public function fetchProducts()
    {
        $category = request()->category;
        $search = request()->search;
        $user_id = request()->user_id;
        if($user_id != 0){
                
            $result = array();        
    
            if($category == '-1')
            {
                $products = ProductModel::where("user_id", "=", $user_id)->get();
                $productPromotes = ProductModel::where("user_id", "=", $user_id)->orderBy('created_at', 'desc')->take(10)->get();
    
                $result["products"] = ProductModel::getAllLikeCount($products);
                $result["promotes"] = ProductModel::getAllLikeCount($productPromotes);
            }
            else if($search == '' && $category == '')
            {
                $products = ProductModel::where("user_id", "=", $user_id)->get();
                $result["products"] = ProductModel::getAllLikeCount($products);
            }
            else if($search != '')
            {
                $products = ProductModel::where("user_id", "=", $user_id)
                                        ->where('product_name', 'like', "%".$search."%")
                                        ->orWhere('product_description', 'lik', "%".$search."%")
                                        ->get();
    
                $result["products"] = ProductModel::getAllLikeCount($products);
            }
            else if($category != '')
            {
    
                $products = ProductModel::where("user_id", "=", $user_id)
                                ->where("category_id", '=', $category)
                                ->get();
    
                $result["products"] = ProductModel::getAllLikeCount($products);
            }
           
            return $result;
        }

      
        $result = array();        

        if($category == '-1')
        {
            $products = ProductModel::with('user')->get();
            $subscribedUsers = SubscriptionModel::all();
            $productPromotes = array();

            foreach($subscribedUsers as $subscription)
            {
                if($subscription->end_time < now()) continue;

                $userProducts = ProductModel::where("user_id", '=', $subscription->user_id)->with('user')->get();
                if(count($userProducts) == 0) continue;
                
                array_push($productPromotes, $userProducts[rand(0, count($userProducts)-1)]);
            }
            

            $result["products"] = ProductModel::getAllLikeCount($products);
            $result["promotes"] = ProductModel::getAllLikeCount($productPromotes);
        }
        else if($search == '' && $category == '')
        {
            $products = ProductModel::all();
            $result["products"] = ProductModel::getAllLikeCount($products);
        }
        else if($search != '')
        {
            $products = ProductModel::where('product_name', 'like', "%".$search."%")
                                    ->orWhere('product_description', 'like', "%".$search."%")
                                    ->with('user')
                                    ->get();

            $result["products"] = ProductModel::getAllLikeCount($products);
        }
        else if($category != '')
        {

            $products = ProductModel::where("category_id", '=', $category)
                            ->with('user')
                            ->get();

            $result["products"] = ProductModel::getAllLikeCount($products);
        }

        return $result;
    }

    public function saveProductProfile()
    {
        $user_id = request()->user_id;

        request()->session()->put("user_id", $user_id);
        return "success";
    }

    public function shopprofile()
    {
        $user_id = request()->session()->get('user_id');
        $user = User::find($user_id);

        if($user != null)
        {
            return view('user.shopprofile.shopprofile', ["partner"=>$user]);
        }

        return redirect("/home");
    }

    public function showProducts(){

        $user_id  = request()->user_id;
        return view("user.product.product")
            ->with('user_id',$user_id);
    }
    

    public function fetchUserProducts()
    {
        $category = request()->category;
        $search = request()->search;
        $user_id = request()->user_id;

        $result = array();        

        if($category == '-1')
        {
            $products = ProductModel::where("user_id", "=", $user_id)->get();
            $productPromotes = ProductModel::where("user_id", "=", $user_id)->orderBy('created_at', 'desc')->take(10)->get();

            $result["products"] = ProductModel::getAllLikeCount($products);
            $result["promotes"] = ProductModel::getAllLikeCount($productPromotes);
        }
        else if($search == '' && $category == '')
        {
            $products = ProductModel::where("user_id", "=", $user_id)->get();
            $result["products"] = ProductModel::getAllLikeCount($products);
        }
        else if($search != '')
        {
            $products = ProductModel::where("user_id", "=", $user_id)
                                    ->where('product_name', 'like', "%".$search."%")
                                    ->orWhere('product_description', 'lik', "%".$search."%")
                                    ->get();

            $result["products"] = ProductModel::getAllLikeCount($products);
        }
        else if($category != '')
        {

            $products = ProductModel::where("user_id", "=", $user_id)
                            ->where("category_id", '=', $category)
                            ->get();

            $result["products"] = ProductModel::getAllLikeCount($products);
        }

        return $result;
    }

    public function fetchUserPromoteProducts()
    {
        $user_id = request()->user_id;

        return ProductModel::getAllLikeCount(ProductModel::where("user_id", "=", $user_id)->orderBy('created_at', 'desc')->take(10)->get());
    }

    public function buyProduct()
    {
        $product_id = request()->product_id;
        $color = request()->color;
        $size = request()->size;

        $product = ProductModel::find($product_id);
        if($product == null) return "failed";
        if(Auth::user() == null) return "failed";
        if(Auth::user()->points < $product->product_price) return "failed";

        Auth::user()->points -= $product->product_price;
        Auth::user()->save();

        $seller = User::find($product->user_id);
        $seller->points += $product->product_price;
        $seller->save();

        NotificationModel::addNotification(Auth::user()->id, 
                                            $product->user_id, 
                                            $product->id,
                                            Auth::user()->name . " Bought product",
                                            $product->product_name,
                                            "buy_product",
                                            1);
        NotificationModel::addNotification($product->user_id, 
                                            Auth::user()->id,
                                            $product->id,
                                            "Paid product",
                                            "Bought " . $product->product_name . "(" . $product->product_price . ")",
                                            "buy_product",
                                            1);
                                            
        TransactionModel::addTransaction($product->user_id, Auth::user()->id, $product->id, $product->product_price);

        $messages = array();
        $messages["productname"] = $product->name;
        $messages["productdescription"] = $product->description;
        $messages["productprice"] = $product->product_price;
        $messages["productcolor"] = $color;
        $messages["productsize"] = $size;
        $messages["productimg"] = $product->product_img;

        $messages["useremail"] = Auth::user()->email;
        $messages["username"] = Auth::user()->name;

        $messages['firstname'] = Auth::user()->first_name;
        $messages['lastname'] = Auth::user()->last_name;
        $messages['address'] = Auth::user()->address;
        $messages['city'] = Auth::user()->city;
        $messages['country'] = Auth::user()->country;
        $messages['telephone'] = Auth::user()->telephone;
        $messages['mobile'] = Auth::user()->mobile;
        $messages['email'] = Auth::user()->email;
        $messages['po'] = Auth::user()->po;
        $messages['message'] = "";
        Mail::to($seller->email)->send(new SendProductPaymentEmail($messages));

        return "success";
    }

    public function userProductsPage()
    {
        if(Auth::user() == null)
            return redirect("/home");
        return view('eshop.productview');
    }

    public function addProductPage()
    {
        if(Auth::user())
            return redirect("/home");
        return view("eshop.addproduct");    
    }

    public function editProductPage(){

        if(Auth::user())
            return redirect("/home");
        
        $product_id = request()->product_id;
        $product = ProductModel::find($product_id);

        if($product == null)    
            return redirect("/home");
        
        //return json_encode($product);
        return view("eshop.editproduct", ['product'=>$product]);
    }

    public function subscriptionPage()
    {
        if(Auth::user() == null)
            return redirect("/home");
        return view("eshop.subscription");
    }

    public function deleteProduct(){
        
       $product_id = request()->product_id;
       $product = ProductModel::find($product_id);
       
       if($product == null) return "failed";
       $colors = json_decode($product->colors);
       foreach($colors as $color)
       {
            if(\file_exists(public_path($color->colorImg)))
                unlink(public_path($color->colorImg));
       }
       $overviews = json_decode($product->overview);
       foreach($overviews as $overview)
       {
           if(\file_exists(public_path($overview)))
            unlink(public_path($overview));
       }
       if(\file_exists(public_path($product->product_img)))
            unlink(public_path($product->product_img));

       $product->delete();
       return "success";
       
    }

    public function deleteProductImage(){
        $imgurl = request()->imgurl;

        if(\file_exists(public_path($imgurl)))
            unlink(public_path($imgurl));
        return "success";
    }

    public function editProduct()
    {
        $product = ProductModel::editProduct(request()->id,
                                request()->product_name,
                                request()->product_img,
                                request()->product_price,
                                request()->product_description,
                                request()->category_id,
                                request()->colors,
                                request()->size,
                                request()->overview);

        return $product;
    }

    public function subscribeForSeller()
    {
        $type = request()->type;

        $notificationTitle = "";
        
        if($type == 1)
        {
            if(Auth::user()->points < 100) return "failed";
            Auth::user()->points -= 100;    
            $notificationTitle = "You subscribed to daily product advertise.";
        }
        else if($type == 2)
        {
            if(Auth::user()->points < 1000) return "failed";
            Auth::user()->points -= 1000;
            $notificationTitle = "You subscribed to monthly product advertise.";
        }
        else if($type == 3)
        {
            if(Auth::user()->points < 10000) return "failed";
            Auth::user()->points -= 10000;
            $notificationTitle = "You subscribed to annual product advertise.";
        }
        Auth::user()->save();

        $subscription = SubscriptionModel::where('user_id', '=', Auth::user()->id)->get();
        if(count($subscription) == 0)
            SubscriptionModel::addSubscription($type);
        else
            SubscriptionModel::editSubscription($subscription->first()->id, $type);

        

        NotificationModel::addNotification(Auth::user()->id, 
                                            Auth::user()->id,
                                            0,
                                            "Subscribe with Advertise",
                                            $notificationTitle,
                                            "seller_subscription",
                                            1);
        return "success";
    }

    public function likeProduct()
    {
        $product_id = request()->product_id;

        $product = ProductModel::find($product_id);
        
        if($product == null) return "failed";

        LikeModel::addStatus(Auth::user()->id, $product->id, "product", "star");
        return LikeModel::getLikeCount($product->id, "product")["star"];
    }

    public function favoriteProducts()
    {
        $likes = LikeModel::where("user_id", "=", Auth::user()->id)
                ->where("content_type", "product")
                ->get();
        
        $products = array();
        foreach($likes as $like)
        {
            $product = ProductModel::find($like->content_id);
            if($product == null) continue;
            $product = $product->getLikeCount();
            array_push($products, $product);
        }

        return $products;
    }
}
