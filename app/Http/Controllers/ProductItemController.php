<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductItemController extends Controller
{
    public function index($slug){
        $title = '劉承鑫建築事務所 - 作品';
        $product = Product::select('products.*')
                        ->where('products.status', '=', '1')
                        ->where('products.slug', '=', $slug)->first();
        return view('product-item', ['product' => $product, 'title'=>$title.'-'.$product->title]);
    }
}
