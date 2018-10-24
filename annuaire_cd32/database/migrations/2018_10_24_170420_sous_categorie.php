<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class SousCategorie extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
   	public function up()
    {
        Schema::create('sous_categorie', function (Blueprint $table) {
            $table->increments('id_sous_categorie');
            $table->string('nom_sous_categorie');
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
        Schema::drop('sous_categorie');    
    }
}
