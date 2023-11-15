<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Product;
use Faker\Factory as Faker;

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

    public function createProducts(Request $request) {

        $faker = Faker::create();

        foreach($request->products as $product) {
            Product::create([
                'name' => $product['name'],
                'description' => $product['description'],
                'price' => $product['price']
            ]);
        }
    }
}
