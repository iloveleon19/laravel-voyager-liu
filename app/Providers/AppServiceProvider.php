<?php

namespace App\Providers;

use App\Observers\BannerObserver;
use App\Observers\ProductObserver;
use App\Observers\BlogObserver;
use App\Observers\OfficeIntroObserver;
use App\Banner;
use App\Product;
use App\Blog;
use App\OfficeIntro;

use Illuminate\Support\ServiceProvider;

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
        Banner::observe(BannerObserver::class);
        Product::observe(ProductObserver::class);
        Blog::observe(BlogObserver::class);
        OfficeIntro::observe(OfficeIntroObserver::class);
    }
}
