<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AreaModel extends Model
{
    //
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name'
    ];

    protected $table = "area";
    
    public function companys()
    {
        return $this->hasMany('App\CompanyModel', 'area_id', 'id');
    }
}
