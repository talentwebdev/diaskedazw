<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMessageTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('message'))
        {
            Schema::create('message', function (Blueprint $table) {
                $table->increments('id');
                $table->unsignedInteger('sender_id');
                $table->string('channel');
                $table->string('message');
                $table->tinyInteger('looked')->default(false);
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
        Schema::dropIfExists('message');
    }
}
