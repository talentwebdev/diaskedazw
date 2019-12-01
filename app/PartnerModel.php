<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PartnerModel extends Model
{
    //
    protected $table = "partner";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'partner_id', 'fullimg_url', 'say', 'category_id', 'category_name', 'video_url'
    ];

    /**
     * get user
     */
    public function user()
    {
        $this->hasOne('\App\User', "partner_id", "id");
    }
}
