<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Cours extends Model
{
    protected $fillable = ['name', 'speciality_id', 'creator_id'];

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

    public function scopeBySpecialityId($query, $specialityId)
    {
        return $query->where('speciality_id', $specialityId);
    }

    public function scopeByDisciplineId($query, $disciplineId)
    {
        return $query->whereHas('speciality', function ($q) use ($disciplineId) {
            $q->where('discipline_id', $disciplineId);
        });
    }
}
