<?php

namespace App\Observers;

use App\Blog;

class BlogObserver
{
    /**
     * Handle the blog "saving" event.
     *
     * @param  \App\Blog  $blog
     * @return void
     */
    public function saving(Blog $blog)
    {
        //
    }

    /**
     * Listen to the blog updating event.
     *
     * @param  \App\Blog  $blog
     * @return void
     */
    public function updating(Blog $blog)
    {
        $blog->updated_by = auth()->user() ? auth()->user()->id : null;
    }

    /**
     * Listen to the blog creating event.
     *
     * @param  \App\Blog  $blog
     * @return void
     */
    public function creating(Blog $blog)
    {
        $blog->created_by = auth()->user() ? auth()->user()->id : null;
    }
}
