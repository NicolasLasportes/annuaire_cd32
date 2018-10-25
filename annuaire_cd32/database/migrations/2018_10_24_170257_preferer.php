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
            $table->increments('id');
            $table->unsignedInteger('id_producteur');
            $table->unsignedInteger('id_chef');

            $table->foreign('id_producteur')->references('id')->on('producteur')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_chef')->references('id')->on('chef')->onDelete('cascade')->onUpdate('cascade');
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
