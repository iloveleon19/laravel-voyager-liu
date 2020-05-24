<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class OfficeIntro extends Model
{
    protected $table = 'office_intros';

    public function boss()
    {
        return $this->belongsTo('App\Member','boss_id','id');
    }

    public function partner()
    {
        // sort ???
        return $this->belongsToMany('App\Member','office_intro_members','office_intro_id','member_id');
    }
}
