<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    const CREATED_AT = 'published_date';
    const UPDATED_AT = null;
    protected $primaryKey = 'sku';
    protected $keyType = 'string';
    public $incrementing = false;
}
