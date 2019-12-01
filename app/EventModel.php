<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EventModel extends Model
{
    //
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['user_id', 'partner_id', 'event_start', 'event_end', 'title'];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'event';
}
