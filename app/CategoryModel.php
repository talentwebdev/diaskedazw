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

    /**
     * @return Array of Categories
     */
    public static function getCategoriesFromIDString($IDsz)
    {
        $ids = explode(":", $IDsz);
        $categories = array();
        for($i = 1 ; $i < count($ids) ; $i++)
        {
            $category = self::find(intval($ids[$i]));
            if($category)
            {
                //$category = $category->name;
                array_push($categories, $category);
            }            
        }

        if(count($ids) == 1)
        {
            
            $category = self::find(intval($IDsz));
            if($category)
                array_push($categories, $category);
        }

        return $categories;
    }
}
