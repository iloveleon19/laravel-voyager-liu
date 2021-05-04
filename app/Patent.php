<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Patent extends Model
{
    protected $table = 'patents';

    public function scopeActive($query)
    {
        return $query->where('status',1);
    }
}
