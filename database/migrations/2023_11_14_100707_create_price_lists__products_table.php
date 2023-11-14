<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('price_lists__products', function (Blueprint $table) {
            $table->unsignedBigInteger('priceList_id');
            $table->foreign('priceList_id')
                  ->references('id')
                  ->on('price_lists')
                  ->onDelete('cascade');
            $table->char('product_sku', 8)->unique();
            $table->foreign('product_sku')
                  ->references('sku')
                  ->on('products')
                  ->onDelete('cascade');

            $table->index(['priceList_id', 'product_sku']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('price_lists__products');
    }
};
