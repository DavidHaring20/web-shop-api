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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('customer_id')
                  ->constrained(
                      table: 'customers', indexName: 'orders_customer_id')
                  ->onUpdate('cascade')
                  ->onDelete('cascade');
            $table->foreignId('price_modificator_id')
                  ->constrained()
                  ->onDelete('cascade');
            $table->decimal('order_price', $precision=18, $scale=2);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
