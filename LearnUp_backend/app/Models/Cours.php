<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Cours extends Model
{
    protected $guarded = ['id'];

    public function speciality()
    {
        return $this->belongsTo(Speciality::class);
    }

    public function exam(): HasOne
    {
        return $this->hasOne(Exams::class);
    }

    public function exams(): HasMany
    {
        return $this->hasMany(Exams::class);
    }
}
