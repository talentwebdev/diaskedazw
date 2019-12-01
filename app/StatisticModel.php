<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StatisticModel extends Model
{
    //
    protected $table = 'statistic';

    protected $fillable = ['partner_id', 'user_id', 'type', 'points', 'time'];

    public function user()
    {
        return $this->belongsTo("\App\User", "partner_id", "id");
    }
}
