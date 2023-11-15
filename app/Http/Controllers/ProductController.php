<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

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

    public function showSpecific(Request $request) {
        $category_id =  $request->query('category_id') !== null ? $request->query('category_id') : null;
        $product_name = $request->query('product_name') !== null ? $request->query('product_name') : null;
        $minimum_price = $request->query('minimum_price') !== null ? $request->query('minimum_price') : 0.00;
        $maximum_price = $request->query('maximum_price') !== null ? $request->query('maximum_price') : 99999.99;
        $sort_price = $request->query('sort_price') !== null ? $request->query('sort_price') : 'desc';
        $sort_product_name = $request->query('sort_product_name') !== null ? $request->query('sort_product_name') : 'desc';

        // Filtering by category
        $products = Product::all();

        if ($category_id) {
            $products = Product::whereHas('categoryProducts', function(Builder $query) use($category_id) {
                $query->where('category_id', $category_id);
            })->get();
        }

        foreach ($products as $index => $product) {
            // Filtering by product name
            if (stripos($product->name, $product_name) === FALSE) {
                unset($products[$index]);
            }

            // Filtering by price
            if ($product->price < $minimum_price || $product->price > $maximum_price) {
                unset($products[$index]);
            }
        }
        
        // Sorting 
        $sorted_products = $products->sortBy([
            ['name', $sort_product_name],
            ['price', $sort_price], 
        ]);
        
        return $sorted_products;
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