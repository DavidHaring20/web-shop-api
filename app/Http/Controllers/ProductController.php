<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Models\Product;

class ProductController extends Controller
{
    public function show() {
        $products = Product::paginate(20);

        return $products;
    }

    public function showBySKU($sku) {
        $product = Product::where('sku', 'like', '%'.$sku.'%')
                        ->first();
        return $product;
    }
}
