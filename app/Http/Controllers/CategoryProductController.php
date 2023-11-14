<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\CategoryProduct;

class CategoryProductController extends Controller
{
    public function showCategoryProducts($category_id) {
        $products = CategoryProduct::where('category_id', $category_id)
                                ->paginate(5);
        return $products;
    }
}
