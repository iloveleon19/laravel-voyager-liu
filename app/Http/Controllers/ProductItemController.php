<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductItemController extends Controller
{
    public function index($slug){
        $title = setting('site.title') . ' - 作品';
        $product = Product::select('products.*')
                        ->where('products.status', '=', '1')
                        ->where('products.slug', '=', $slug)->first();

        if(empty($product)){
            return abort(404);
        }

        return view('product-item', ['product' => $product, 'title'=>$title.'-'.$product->title]);
    }
}
