<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;

class JournalController extends Controller
{
    public function index(){
        $title = '劉承鑫建築事務所 - 日誌';
        $blogs = Blog::select('blogs.*')
                        ->where('blogs.status', '=', '1')->orderBy('blogs.order', 'asc')->get();
        return view('journal', ['blogs' => $blogs, 'title'=>$title]);
    }
}
