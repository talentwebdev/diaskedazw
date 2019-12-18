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
    
    /**
     * @return Array of Categories
     */
    public static function getAreasFromIDString($IDsz)
    {
        $ids = explode(":", $IDsz);
        $areas = array();
        for($i = 1 ; $i < count($ids) ; $i++)
        {
            $area = self::find(intval($ids[$i]));
            if($area)
            {
                //$category = $category->name;
                array_push($areas, $area);
            }            
        }

        if(count($ids) == 1)
        {
            $area = self::find(intval($IDsz));
            if($area)
                array_push($areas, $area);
        }

        return $areas;
    }
}
