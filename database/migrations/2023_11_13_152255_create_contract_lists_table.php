<?php

use App\Models\Product;
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
        Schema::create('contract_lists', function (Blueprint $table) {
            $table->id();
            $table->foreignId('customer_id')
                  ->constrained()
                  ->onDelete('cascade');
            $table->char('product_sku',8)->unique();
            $table->foreign('product_sku')
                  ->references('sku')
                  ->on('products')
                  ->onDelete('cascade'); 
            $table->decimal('original_price', $precision=7, $scale=2);

            $table->index(['customer_id', 'product_sku']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('contract_lists');
    }
};
