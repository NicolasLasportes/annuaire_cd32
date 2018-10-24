<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Preferer extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
   	public function up()
    {
        Schema::create('preferer', function (Blueprint $table) {
            $table->increments('id_preferer');
            $table->integer('id_producteur');
            $table->integer('id_chef');
            $table->timestamps();
        });      
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('preferer');    
    }
}
