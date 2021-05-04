<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Blog;

class JournalItemController extends Controller
{
    public function index($slug){
        $title = setting('site.title') . ' - 作品';
        $blog = Blog::select('blogs.*')
                        ->where('blogs.status', '=', '1')
                        ->where('blogs.slug', '=', $slug)->first();
        return view('journal-item', ['blog' => $blog, 'title'=>$title.'-'.$blog->title]);
    }
}
