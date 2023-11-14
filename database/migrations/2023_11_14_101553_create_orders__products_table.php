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
        Schema::create('orders__products', function (Blueprint $table) {
            $table->foreignId('order_id')->constrained();
            $table->char('product_sku', 8)
                  ->unique();
            $table->foreign('product_sku')
                  ->references('sku')
                  ->on('products')
                  ->onDelete('cascade');
            $table->integer('product_quantity');

            $table->index(['order_id', 'product_sku']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders__products');
    }
};
