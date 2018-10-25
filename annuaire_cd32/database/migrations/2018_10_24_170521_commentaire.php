<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Commentaire extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('commentaire', function (Blueprint $table) {
            $table->increments('id');
            $table->string('texte_commentaire');
            $table->unsignedInteger('id_chef');
            $table->unsignedInteger('id_producteur');

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
        Schema::drop('commentaire');
    }
}
