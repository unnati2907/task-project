<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RentDetail extends Model
{
    use HasFactory;


    protected $fillable = [
        'user_id',
        'book_id',
        'returned_date',
        'status',
        'rented_date',
    ];
}
