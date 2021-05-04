<?php

namespace App\Observers;

use App\Product;

class ProductObserver
{
    /**
     * Handle the product "saving" event.
     *
     * @param  \App\Product  $product
     * @return void
     */
    public function saving(Product $product)
    {
        //
    }

    /**
     * Listen to the product updating event.
     *
     * @param  \App\Product  $product
     * @return void
     */
    public function updating(Product $product)
    {
        $product->updated_by = auth()->user() ? auth()->user()->id : null;
    }

    /**
     * Listen to the product creating event.
     *
     * @param  \App\Product  $product
     * @return void
     */
    public function creating(Product $product)
    {
        $product->created_by = auth()->user() ? auth()->user()->id : null;
    }
}
