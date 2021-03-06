<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;

class JournalController extends Controller
{
    public function index(){
        $title = setting('site.title') . ' - 日誌';
        $blogs = Blog::select('blogs.*')
                        ->where('blogs.status', '=', '1')->orderByRaw('-`blogs`.`order` desc')->orderBy('id','asc')->get();
        return view('journal', ['blogs' => $blogs, 'title'=>$title]);
    }
}
