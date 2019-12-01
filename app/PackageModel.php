<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PackageModel extends Model
{
    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['created_at', 'updated_at'];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'package';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'img_url', 'cost'];

    /**
     * get users
     */
    public function users()
    {
        return $this->hasMany("\App\User", "active_package", "id");
    }
}
