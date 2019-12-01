<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVideoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('video'))
        {
            Schema::create('video', function (Blueprint $table) {
                $table->increments('id');
                $table->unsignedInteger('partner_id');  
                $table->string('video_url', 100);
                $table->string('title', 100);
                $table->string('adimg_url', 100);
                $table->unsignedInteger('popular');
                $table->string('description', 200);
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
        Schema::dropIfExists('video');
    }
}
