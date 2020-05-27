<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Blog extends Model
{
    protected $table = 'blogs';

    public function categories()
    {
        return $this->belongsToMany('TCG\Voyager\Models\Category', 'blog_categories');
    }
}
