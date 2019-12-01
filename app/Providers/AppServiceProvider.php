<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Braintree\Configuration;
use App\Support\Directory;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        Configuration::environment("sandbox");
        Configuration::merchantId("cmpss9trsxsr4538");
        Configuration::publicKey("zy3x5mb5jwkcrxgr");
        Configuration::privateKey("4d63c8b2c340daaa353be453b46f6ac2");


        $modules = Directory::listDirectories(app_path('Modules'));

        foreach ($modules as $module)
        {
            $routesPath = app_path('Modules/' . $module . '/routes.php');
            $viewsPath  = app_path('Modules/' . $module . '/Views');

            if (file_exists($routesPath))
            {
                require $routesPath;
            }

            if (file_exists($viewsPath))
            {
                $this->app->view->addLocation($viewsPath);
            }
        }
    }
}
