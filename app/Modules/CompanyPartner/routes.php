<?php

Route::group(['middleware' => ['web'], 'prefix'=>'company', 'namespace' => 'App\Modules\CompanyPartner\Controllers'], function()
{
    Route::group(['middleware' => ['auth'], 'prefix' => 'partner'], function()
    {
        Route::get("/", ['uses' => 'PartnerController@index', 'as' => 'company.partner.index']);
        Route::post("/becomepartner", ['uses' => 'PartnerController@becomePartner', 'as' => 'company.partner.becomepartner']);

        Route::group(['middleware' => ['company.partner']], function()
        {
            Route::get("/create", ['uses' => 'PartnerController@create', 'as' => 'company.partner.create']);
            Route::post("/create", ['uses' => 'CompanyCreateController@create', 'as' => 'company.partner.companycreate']);            
            Route::post("/update", ['uses' => 'CompanyCreateController@update', 'as' => 'company.partner.companyupdate']);            
        });        
    });

    Route::group(['middleware' => ['auth'], 'prefix' => 'subscription'], function()
    {
        Route::get('/', ['uses' => 'CompanySubscriptionController@index', 'as' => 'company.subscription.index']);
        Route::post('store', ['uses' => 'CompanySubscriptionController@store', 'as' => 'company.subscription.store']);
    });

    Route::group(['middleware' => ['auth', 'company.partner', 'company.companyexists'], 'prefix' => 'dashboard'], function()
    {
        Route::get("/home", ['uses' => "DashboardController@dashboard", 'as' => 'company.dashboard.home']);
        Route::get("/articles", ['uses' => "DashboardController@articles", 'as' => 'company.dashboard.articles']);
        Route::get("/images", ['uses' => "DashboardController@images", 'as' => 'company.dashboard.images']);
        Route::get("/videos", ['uses' => "DashboardController@videos", 'as' => 'company.dashboard.videos']);
        Route::get("/upload", ['uses' => "DashboardController@upload", 'as' => 'company.dashboard.upload']);
        Route::get("/promote", ['uses' => "DashboardController@promote", 'as' => 'company.dashboard.promote']);
        Route::get('/inbox', ['uses' => 'DashboardController@inbox', 'as' => 'company.dashboard.inbox']);
        Route::get('/companyedit', ['uses' => 'DashboardController@companyedit', 'as' => 'company.dashboard.companyedit']);
    });

    Route::group(['middleware' => ['company.select'], 'prefix' => 'profile'], function(){

        Route::get("/index", ['uses' => "CompanyProfileController@index", 'as' => 'company.profile.index']);
        Route::get('/article', ['uses' => 'CompanyProfileController@article', 'as' => 'company.profile.article']);
        Route::get('/video', ['uses' => 'CompanyProfileController@video', 'as' => 'company.profile.video']);
        Route::get('/image', ['uses' => 'CompanyProfileController@image', 'as' => 'company.profile.image']);
        Route::post("/productservice", ['uses' => "CompanyProfileController@productservice", 'as' => 'company.profile.productservice']);
        Route::post('/articlepartial', ['uses' => 'CompanyProfileController@articlepartial', 'as' => 'company.profile.articlepartial']);
        Route::post('/videopartial', ['uses' => 'CompanyProfileController@videopartial', 'as' => 'company.profile.videopartial']);
        Route::post('/imagepartial', ['uses' => 'CompanyProfileController@imagepartial', 'as' => 'company.profile.imagepartial']);
    });

    Route::group(['middleware' => ['auth'], 'prefix' => 'inbox'], function(){
        Route::post('/store', ['uses' => 'CompanyInboxController@store', 'as' => 'company.inbox.store']);
    });

});
