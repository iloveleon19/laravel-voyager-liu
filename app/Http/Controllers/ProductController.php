<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;

class ProductController extends Controller
{
    public function index(){
        $title = '劉承鑫建築事務所 - 作品';
        $posts = Post::select('posts.*', 'categories.name', 'posts.id as post_id')
                        ->join('categories', 'categories.id', '=', 'posts.category_id')
                        ->where('posts.status', '=', 'PUBLISHED')->orderBy('posts.id', 'desc')->get();

        $posts = Post::select('posts.*')->get();

        // dd($posts);

        return view('product', ['posts' => $posts,'title'=>$title]);
    }
}
