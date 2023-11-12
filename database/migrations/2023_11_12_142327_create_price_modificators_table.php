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
        Schema::create('price_modificators', function (Blueprint $table) {
            $table->id();
            $table->char('name', 50);
            $table->decimal('percentage', $precision=5, $scale=2);
            $table->decimal('activation_price', $precision=18, $scale=2); 
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('price_modificators');
    }
};
