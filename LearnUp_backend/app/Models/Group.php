<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $fillable = ['name', 'cour_id', 'start_date', 'end_date', 'creator_id', 'description', 'image', 'price', 'max_students'];

    public function users()
    {
        return $this->belongsToMany(User::class, 'user_groups', 'group_id', 'user_id');
    }

    public function course()
    {
        return $this->belongsTo(Cours::class);
    }
}
