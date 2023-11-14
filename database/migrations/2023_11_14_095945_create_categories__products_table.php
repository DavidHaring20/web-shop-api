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
        Schema::create('categories__products', function (Blueprint $table) {
            $table->foreignId('category_id')
                  ->constrained();
            $table->char('product_sku', 8)->unique();
            $table->foreign('product_sku')
                  ->references('sku')
                  ->on('products')
                  ->onDelete('cascade');

            $table->index(['category_id', 'product_sku']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('categories__products');
    }
};
