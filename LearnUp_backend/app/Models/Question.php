<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Question extends Model
{
    protected $fillable = ['exam_id', 'question', 'type'];

    public function exam(): BelongsTo
    {
        return $this->belongsTo(Exams::class);
    }

    public function answers(): HasMany
    {
        return $this->hasMany(Answer::class);
    }
}
