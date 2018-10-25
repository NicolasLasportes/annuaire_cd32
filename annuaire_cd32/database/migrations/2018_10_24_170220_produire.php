<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Produire extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
   	public function up()
    {
        Schema::create('produire', function (Blueprint $table) {
            $table->integer('id');
            $table->unsignedInteger('id_produit');
            $table->unsignedInteger('id_producteur');

            $table->foreign('id_produit')->references('id')->on('produit')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_producteur')->references('id')->on('producteur')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::drop('produire');    
    }
}
