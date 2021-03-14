<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $table = 'members';

    public function scopeActive($query)
    {
        return $query->where('status',1);
    }
}
