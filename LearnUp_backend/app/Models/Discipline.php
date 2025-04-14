<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Discipline extends Model
{
    protected $guarded = ['id'];

    public function specialities(): HasMany
    {
        return $this->hasMany(Speciality::class);
    }
}
