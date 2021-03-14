<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    protected $table = 'products';

    public function categories()
    {
        return $this->belongsToMany('TCG\Voyager\Models\Category', 'product_categories');
    }
}
