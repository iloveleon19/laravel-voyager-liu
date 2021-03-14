<?php

namespace App\Observers;

use App\Banner;

class BannerObserver
{
    /**
     * Handle the banner "saving" event.
     *
     * @param  \App\Banner  $banner
     * @return void
     */
    public function saving(Banner $banner)
    {
        //
    }

    /**
     * Listen to the banner updating event.
     *
     * @param  \App\Banner  $banner
     * @return void
     */
    public function updating(Banner $banner)
    {
        $banner->updated_by = auth()->user() ? auth()->user()->id : null;
    }

    /**
     * Listen to the banner creating event.
     *
     * @param  \App\Banner  $banner
     * @return void
     */
    public function creating(Banner $banner)
    {
        $banner->created_by = auth()->user() ? auth()->user()->id : null;
    }
}
