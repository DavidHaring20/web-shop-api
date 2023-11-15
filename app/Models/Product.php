<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Ramsey\Uuid\Uuid;

class Product extends Model
{
    use HasFactory;
    use HasUuids;

    const CREATED_AT = 'published_date';
    const UPDATED_AT = null;
    protected $primaryKey = 'sku';
    protected $keyType = 'string';
    protected $fillable =  ['name', 'description', 'price'];
    public $incrementing = false;

    public function newUniqueId(): string 
    {
        return (string) substr(Uuid::uuid4(), 0, 8);
    }

    public function uniqueIds(): array 
    {
        return ['sku'];
    }

    public function categoryProduct(): hasMany {
        return $this->hasMany(CategoryProduct::class);
    }
}
