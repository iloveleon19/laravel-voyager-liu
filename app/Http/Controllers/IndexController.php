<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Banner;

class IndexController extends Controller
{
    public function index(){
        $title = '劉承鑫建築事務所';
        $banners = Banner::select('banners.*')
                        ->where('banners.status', '=', '1')->orderBy('banners.order', 'asc')->get();
        return view('index', ['banners' => $banners, 'title'=>$title]);
    }
}
