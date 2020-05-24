<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{
    public function index(){
        $title = '劉承鑫建築事務所 - 作品';
        $products = Product::select('products.*')
                        ->where('products.status', '=', '1')->orderBy('products.order', 'asc')->get();
        return view('product', ['products' => $products, 'title'=>$title]);
    }
}
