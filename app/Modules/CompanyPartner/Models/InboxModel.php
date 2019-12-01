<?php

namespace App\Modules\CompanyPartner\Models;

use Illuminate\Database\Eloquent\Model;

class InboxModel extends Model 
{
    protected $table = 'inbox';

    protected $fillable = [
        'name', 'partner_id', 'email', 'message'
    ];

}