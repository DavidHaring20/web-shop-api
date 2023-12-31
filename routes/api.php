<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryProductController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::get('/greeting', function () {
//     return 'Hello world!';
// });

Route::get('/products', [ProductController::class, 'show']);    
Route::get('/products/{sku}', [ProductController::class, 'showBySku']);
Route::get('/productsSpecific',  [ProductController::class, 'showSpecific']);
Route::get('/categoryProducts/{category_id}', [CategoryProductController::class, 'showCategoryProducts']);

Route::post('/products', [ProductController::class, 'createProducts']);