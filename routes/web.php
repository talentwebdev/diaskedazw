<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('/');
Route::get('login', 'HomeController@index')->name('login');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/homepage', "HomeController@firstpage")->name('homepage');

// video url
    // not authenticated
Route::get("/latestvideo", "VideoController@getLatestVideo")->name('latestvideo');
    // authenticated
Route::get("/getvideos", "VideoController@getVideosFromPartner" )->name( "getvideos" );
Route::get("/likevideo", "VideoController@likeVideo")->name("likevideo");
Route::get("/likegallery", "GalleryController@likeGallery")->name("likegallery");
Route::get("/getannounce", "AnnounceController@getAnnounce" )->name( "getannounce" );
Route::get("/getpublicannounce", "AnnounceController@getPublicAnnounce")->name("getpublicannounce");
Route::get("/getarticles", "ArticleController@getArticlesFromPartner" )->name( "getarticles" );
Route::get("/likearticle", "ArticleController@likeArticle")->name("likearticle");
Route::get("/likecompany", "CompanyController@likeCompany")->name("likecompany");
Route::get('/getarticlecontent', "ArticleController@getArticleContent")->name('getarticlecontent');
Route::get('/searcharticle', "ArticleController@searchArticle")->name('searcharticle');

// fetch notifications
Route::get("/fetchnotifications", ['uses' =>"NotificationController@fetchNotifications", 'as' => 'fetchnotifications'])->name("fetchnotifications");
//Route::get('/fetchnotifications', "NotificationController@fetchNotifications")->name('fetchnotifications');

Route::get("/fetchaddpointsnotifications", ['uses' =>"NotificationController@fetchAddpointsNotifications", 'as' => 'fetchaddpointsnotifications'])->name("fetchaddpointsnotifications");

// article url
    // not authenticated
Route::get("/latestarticle", "ArticleController@getLatestArticle");
Route::get('/partnerinfo', "UserController@getPartnerInfo")->name('partnerinfo');
    // authenticated

// profile url
Route::get('/profile', 'HomeController@profile')->name('profile');
// about url
Route::get('/about', 'HomeController@about')->name('about');

// partners url
Route::get('/partners', function() {
    //
    return view('user.partners');
})->name('partners');
// services page url
Route::get('/packages', 'HomeController@packages')->name('packages');

// partner profile page url
Route::get( "/partnerprofile.{type}", "PartnerProfileController@index" )->name( "partnerprofile" );
Route::get("/shopprofile", "ProductController@shopprofile")->name('shopprofile');

// upload user image
Route::post("/uploadUserImage", "HomeController@imageUploadPost")->name("uploadUserImage");
Route::get('/image-upload', 'HomeController@imageUpload')->name('image.upload');
Route::post('image-upload', 'HomeController@imageUploadPost')->name('image.upload.post');

// save user
Route::post("/saveUser", "HomeController@saveUser")->name("saveUser");

// session
Route::get('/setpartner', "HomeController@setPartner")->name('setpartner');

/**
 * *********************************************
 * *********** Package Routes Start ************
 * *********************************************
 */

Route::middleware('auth')->group( function() {

});

Route::get( "/fetchPackages", "PackageController@fetchPackages" )->name( 'fetchPackages' );

/*************** Package Routes End ************/

/**
 * *********************************************
 * *********** Payment Routes Start ************
 * *********************************************
 */
Route::get('/payment.process', 'PaymentsController@process')->name('payment.process');
Route::post( '/payment.done', 'PaymentsController@done' )->name( 'payment.done' );
Route::post('/payment.active.process', "PaymentsController@activateUser")->name('payment.active.process');

/*************** Payment Routes End ************/


/**
 * *********************************************
 * *********** Gallery Routes Start ************
 * *********************************************
 */
Route::get( '/fetchgallery', "GalleryController@fetchgallery" )->name( 'fetchgallery' );
Route::get('/latestimages', "GalleryController@latestImages")->name('latestimages');

/*************** Gallery Routes End ************/

/**
 * *********************************************
 * *********** Events Routes Start ************
 * *********************************************
 */
Route::get( '/appointment', "EventController@index" )->name( 'appointment' );
Route::get( '/fetchevents', "EventController@fetchEvents" )->name( 'fetchevents' );
Route::get( '/fetchtodayevents', "EventController@fetchTodayEvents")->name('fetchtodayevents');
Route::post( '/addevent', "EventController@addEvent" )->name( 'addevent' );
Route::post('acceptevent', "EventController@acceptEvent")->name("acceptevent");
Route::post('denyevent', "EventController@denyEvent")->name("denyevent");

/*************** Gallery Routes End ************/

/*************** Send Email ************* */
Route::post('/sendemail', "SendEmailController@sendEmail")->name('sendemail');
Route::post('/sendcontactemail', "SendEmailController@sendContactEmail")->name('sendcontactemail');
Route::post('/sendcompanyemail', "SendEmailController@sendCompanyEmail")->name('sendcompanyemail');
Route::post("/sendpaymentdocemail", "SendEmailController@sendPaymentDocEmail")->name("sendpaymentdocemail");
Route::post("/sendexistinginfoemail", "SendEmailController@sendExistingInfoEmail")->name("sendexistinginfoemail");
Route::post("/sendnewshipcardemail", "SendEmailController@sendNewShipCardEmail")->name("sendnewshipcardemail");

/* ********* Discount ************ */
Route::get('/discount', function() {
    //
    return view('user.discount.discount');
})->name('discount');

Route::get('/fetchcompanies', 'CompanyController@fetchCompanies')->name('fetchcompanies');
Route::get('/fetchpromotecompanies', 'CompanyController@fetchPromoteCompanies')->name('fetchpromotecompanies');
Route::get('/fetchareacategory', 'CompanyController@fetchAreaCategory')->name('fetchareacategory');

/********* Product *************** */
Route::get('/products', function(){
    return view("user.product.product")->with('user_id', '0');
})->name("products");

Route::get("/product", "ProductController@showProducts")->name("product");
Route::post("/product", "ProductController@showProducts")->name("product");
Route::get("/fetchproductcategory", "ProductController@getAllCategories")->name("fetchproductcategory");
Route::post("/addproduct", "ProductController@addProduct")->name("addproduct");
Route::post("/deleteimage", "ProductController@deleteProductImage")->name("deleteimage");
Route::post("/deleteproduct", "ProductController@deleteProduct")->name("deleteproduct");
Route::post("/editproduct", "ProductController@editProduct")->name("editproduct");
Route::get("/fetchproducts", "ProductController@fetchProducts")->name("fetchproducts");
Route::post('/productprofile', "ProductController@saveProductProfile")->name('productprofile');
Route::get("/fetchuserproducts", "ProductController@fetchUserProducts")->name("fetchuserproducts");
Route::get("/fetchuserpromoteproducts", "ProductController@fetchUserPromoteProducts")->name("fetchuserpromoteproducts");
Route::get("/favoriteproducts", "ProductController@favoriteProducts")->name("favoriteproducts");
Route::post("/buyproduct", "ProductController@buyProduct")->name("buyproduct");
Route::post("/likeproduct", "ProductController@likeProduct")->name("likeproduct");

Route::post("/subscribe", "ProductController@subscribeForSeller")->name("subscribe");
Route::get("/fetchtransaction", "TransactionController@fetchTransaction")->name("fetchtransaction");
Route::get("/productcategory", "ProductController@getProductsFromCategory")->name("productcategory");

Route::get("/userproducts", "ProductController@userProductsPage")->name("userproducts");
Route::get("/addproduct", "ProductController@addProductPage")->name("addproduct");
Route::post("/productedit", "ProductController@editProductPage")->name("productedit");
Route::get("/subscription", "ProductController@subscriptionPage")->name("subscription");
Route::get("/report", function(){
    return view("eshop.reportsales");
})->name("report");
Route::get("/favorite", function(){
    return view("user.shopprofile.favoriteproduct");
})->name("favorite");

// discount
Route::group(['middleware' => ['web', 'auth', 'company.partner'], 'prefix' => 'discount'], function(){
    Route::post("/list", ['uses' => "DiscountController@list", 'as' => 'discount.list']);
    Route::post("/edit", ['uses' => "DiscountController@edit", 'as' => 'discount.edit']);
    Route::post("/store", ['uses' => "DiscountController@store", 'as' => 'discount.store']);
    Route::get("/add", ['uses' => "DiscountController@add", 'as' => 'discount.add']);
    Route::post("/delete", ['uses' => "DiscountController@delete", 'as' => 'discount.delete']);
});
// contact us
Route::get('/contactus', function(){
    return view('user.contactus.contactus');
})->name('contactus');

/************************************************************************** partner URL ********************************************************************************************* */
Route::post("uploaddoc.file", "UploadController@uploadDocFile")->name("uploaddoc.file");
Route::post( '/uploadimage', "UploadController@uploadImage")->name('uploadimage');
Route::post("/uploadMultipleImage", "UploadController@uploadMultipleImage")->name("uploadMultipleImage");
Route::post("uploadvideo.file", "UploadController@uploadVideoFile")->name("uploadvideo.file");

Route::get('/firstpage', "HomeController@firstpage")->name('firstpage');

Route::middleware(['auth'])->group( function() { 
        
    Route::get('/fetchreports', "StatisticController@fetchReports")->name('fetchreports');
    
    Route::get('/partner.dashboard', function() {
        //
        return view('partner.dashboard');
    })->name('partner.dashboard');

  

    Route::get('/partner.promote', function() {
        //
        return view('partner.promote');
    })->name('partner.promote');

    Route::get("/partner.livestream", function(){
        return view('partner.livestream');
    })->name('partner.livestream');


    Route::get('/partner.upload', function() {
        //
        return view('partner.upload');
    })->name('partner.upload');


    Route::get('/partner.partnerappoint', function() {
        //
        return view('partner.partnerappoint');
    })->name('partner.partnerappoint');


    Route::get('/partner.articles', function() {
        //
        return view('partner.articles');
    })->name('partner.articles');


    Route::get('/partner.videos', function() {
        //
        return view('partner.videos');
    })->name('partner.videos');


    Route::get('/partner.images', function() {
        //
        return view('partner.images');
    })->name('partner.images');    

    // upload controller
        
    
    
    // save video into database.
    Route::post( '/addvideo', "VideoController@addVideo" )->name('addvideo');
    Route::post("/deletevideo", "VideoController@deleteVideo")->name("deletevideo");
    // save article into database
    Route::post( '/addarticle', 'ArticleController@addArticle')->name('addarticle');
    Route::post("deletearticle", "ArticleController@deleteArticle")->name("deletearticle");
    // save annoucne into database
    Route::post( '/addannounce', 'AnnounceController@addAnnounce')->name('addannounce');

    // save gallery into database
    Route::post( '/addgallery', 'GalleryController@addGallery')->name('addgallery');
    Route::post("/deletegallery", "GalleryController@deleteGallery")->name("deletegallery");
    // remove
    Route::post( '/removeevent', "EventController@removeEvent")->name('removeevent');

    
    // Test 
    Route::get('/chats', function() {
        //
        return view("partner.test.chat");
    })->name('chats');
});
Route::get('/firstpage', function(){
    return view('partner.test.bubble');
})->name('firstpage');

// chatting group
Route::post('/sendmessage', "ChatsController@sendMessage")->name('sendmessage');
Route::post('/message.looked', "ChatsController@messageLooked")->name('message.looked');
Route::get( '/fetchmessages', "ChatsController@fetchMessages")->name('fetchmessages');
Route::get("/fetchconnectedusers", "ChatsController@fetchConnectedUsers")->name('fetchconnectedusers');
Route::post("/paychat", "ChatsController@payChat")->name("paychat");
Route::get("/checkmessage", "ChatsController@checkMessageRight")->name("checkmessage");

Route::get('people/{name}/{surname?}', function ($name, $surname) {
    return 'Hello ' . $name . ' ' . $surname;
});

Route::name('admin.')->group(function () {
    Route::resource('photos', 'HomeController');
  });


Route::get('/checkuser', "UserController@checkUserActivated")->name('checkuser');
Route::post("/becomeseller", "UserController@becomeSeller")->name("becomeseller");

Route::get("/addvisit", "VisitStatisticController@addNewVisit")->name('addvisit');
Route::get("/getvisitinfo", "VisitStatisticController@getVisitInfo")->name("getvisitinfo");

Route::get("/social/facebook", "UserController@facebook")->name("facebook");
Route::get("/social/facebook_callback", "UserController@facebook_callback")->name("facebook_callback");

Route::get("/social/google", "UserController@google")->name("google");
Route::get("/social/google_callback", "UserController@google_callback")->name("google_callback");