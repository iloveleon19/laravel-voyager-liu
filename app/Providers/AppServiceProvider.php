<?php

namespace App\Providers;

use App\Observers\BannerObserver;
use App\Observers\ProductObserver;
use App\Observers\JournalObserver;
use App\Observers\OfficeIntroObserver;
use App\Banner;
use App\Product;
use App\Journal;
use App\OfficeIntro;
use App\FormFields\YearFormField;
use App\FormFields\MonthFormField;

use TCG\Voyager\Facades\Voyager;
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
        Voyager::addFormField(YearFormField::class);
        Voyager::addFormField(MonthFormField::class);
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
        Journal::observe(JournalObserver::class);
        OfficeIntro::observe(OfficeIntroObserver::class);
    }
}
