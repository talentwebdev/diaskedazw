<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryModel extends Model
{
    //
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'img_url', 'adv_img'
    ];

    protected $table = "category";

    public function companys()
    {
        return $this->hasMany('App\CompanyModel', 'category_id', 'id');
    }
}
