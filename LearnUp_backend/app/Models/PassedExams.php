<?php

namespace App\Models;

use App\Models\Scopes\UserScope;
use Illuminate\Database\Eloquent\Attributes\ScopedBy;
use Illuminate\Database\Eloquent\Model;

#[ScopedBy([UserScope::class])]
class PassedExams extends Model
{
    protected $fillable = ['user_id', 'exam_id', 'score'];

    public function student()
    {
        return $this->belongsTo(User::class);
    }

    public function exam()
    {
        return $this->belongsTo(Exams::class);
    }

    public function userAnswer()
    {
        return $this->hasMany(UserAnswer::class);
    }
}
