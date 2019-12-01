<?php

Route::group(['middleware' => ['web', 'admin'], 'prefix'=>'admin', 'namespace' => 'App\Modules\Admin\Controllers'], function()
{
    Route::get('index', ['uses' => 'AdminController@index', 'as' => 'admin.index']);
    Route::get('videos', ['uses' => 'AdminController@video', 'as' => 'admin.videos']);
    Route::get('images', ['uses' => 'AdminController@image', 'as' => 'admin.images']);
    Route::get('checkvideos', ['uses' => 'AdminController@checkVideos', 'as' => 'admin.checkvideos']);
    Route::get('checkarticles', ['uses' => 'AdminController@checkArticles', 'as' => 'admin.checkarticles']);
    Route::get('checkimages', ['uses' => 'AdminController@checkImages', 'as' => 'admin.checkimages']);
    
    Route::group(['prefix' => 'video'], function()
    {
        Route::post('store', ['uses' => 'VideoUploadController@store', 'as' => 'admin.video.store']);
        Route::post('promote.store', ['uses' => 'VideoUploadController@promotestore', 'as' => 'admin.video.promote.store']);
        Route::post('delete', ['uses' => 'VideoUploadController@delete', 'as' => 'admin.video.delete']);
        Route::post('accept', ['uses' => 'VideoUploadController@accept', 'as' => 'admin.video.accept']);
        Route::post('deny', ['uses' => 'VideoUploadController@deny', 'as' => 'admin.video.deny']);
    });

    Route::group(['prefix' => 'images'], function()
    {
        Route::post('store', ['uses' => 'ImageUploadController@store', 'as' => 'admin.images.store']);
        Route::post('delete', ['uses' => 'ImageUploadController@delete', 'as' => 'admin.images.delete']);
        Route::post('accept', ['uses' => 'ImageUploadController@accept', 'as' => 'admin.images.accept']);
        Route::post('deny', ['uses' => 'ImageUploadController@deny', 'as' => 'admin.images.deny']);
    });

    Route::group(['prefix' => 'article'], function()
    {
        Route::post('accept', ['uses' => 'AdminArticleController@accept', 'as' => 'admin.article.accept']);
        Route::post('deny', ['uses' => 'AdminArticleController@deny', 'as' => 'admin.article.deny']);
    });
});