<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GalleryModel extends Model
{
    //
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['partner_id', 'img_url', 'title', 'promote'];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'gallery';
}
