<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{
    public function index(){
        $title =setting('site.title') . ' - 作品';
        $products = Product::select('products.*')
                        ->where('products.status', '=', '1')->orderByRaw('-`products`.`order` desc')->orderBy('id','asc')->get();
        return view('product', ['products' => $products, 'title'=>$title]);
    }
}
