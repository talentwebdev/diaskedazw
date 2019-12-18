<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CompanyModel extends Model
{
    //
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'logo_url', 'email', 'link_url', 'area_id', 'category_id', 'discount_cnt', 
        'discount_info', 'description', 'slogan', 'user_id', 'company_video', 'communication', 'facebook', 'youtube', 'twitter','instagram','linkedin', 'address'
        , 'latitude', 'longitude'
    ];

    protected $table = "company";

    public function user()
    {
        return $this->hasOne('App\User', 'user_id', 'id');
    }

    /* static */
    public static function isValidId($id)
    {
        return self::find($id) != null;
    }

}
