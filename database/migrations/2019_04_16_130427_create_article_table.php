<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('article'))
        {
            Schema::create('article', function (Blueprint $table) {
                $table->increments('id');
                $table->unsignedInteger('partner_id');
                $table->string('title');
                $table->text('content');
                $table->unsignedInteger('popular');
                $table->string('poster_img');
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
        Schema::dropIfExists('article');
    }
}
