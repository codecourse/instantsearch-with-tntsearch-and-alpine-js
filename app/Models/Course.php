<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Capsule\Manager;
use Illuminate\Database\Eloquent\Builder;

class Course extends Model
{
    public function scopeFromIds(Builder $builder, array $ids)
    {
        if (count($ids)) {
            $builder->whereIn('id', $ids)->orderBy(
                Manager::connection()->raw('FIELD(id, ' . implode(',', $ids) . ')')
            );
        }
    }
}