<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Speciality extends Model
{
    protected $fillable = ['name', 'discipline_id'];

    public function discipline(): BelongsTo
    {
        return $this->belongsTo(Discipline::class);
    }
}
