<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VisitStatisticModel extends Model
{
    //
    protected  $table="visit_statistic";

    public function user()
    {
    	return $this->belongsTo("\App\User", "partner_id", "id");
    }

}
