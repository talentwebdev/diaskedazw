<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnnounceModel extends Model
{
    //
    protected $table='announce';

    protected $fillable = [
        'partner_id', 'title'
    ];

    public function user(){
        return $this->belongsTo("\App\User", "partner_id", "id");
    }
}
