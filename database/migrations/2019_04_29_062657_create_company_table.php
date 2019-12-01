<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompanyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('company'))
        {
            Schema::create('company', function (Blueprint $table) {
                $table->increments('id');
                $table->string('name', 100);
                $table->string('logo_url', 100);
                $table->string('link_url', 100)->default('#');
                $table->integer('area_id');
                $table->integer('category_id');
                $table->timestamps();
            });
        }
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('company');
    }
}
