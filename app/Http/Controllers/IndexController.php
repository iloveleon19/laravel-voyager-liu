<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Banner;

class IndexController extends Controller
{
    public function index()
    {
        $title = setting('site.title');
        $banners = Banner::select('banners.*')
            ->where('banners.status', '=', '1')->orderByRaw('-`banners`.`order` desc')->orderBy('id', 'asc')->get();
        return view('index', ['banners' => $banners, 'title' => $title]);
    }
}
