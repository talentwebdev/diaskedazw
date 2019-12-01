<?php 

namespace App\Modules\CompanyPartner\Controllers;

use App\Http\Controllers\Controller;
use App\Modules\CompanyPartner\Models\InboxModel;

class InboxCreateController extends Controller 
{
    public function store()
    {
        $input = request()->all();

        $inbox = InboxModel::create($input);
        return $inbox;
    }
}