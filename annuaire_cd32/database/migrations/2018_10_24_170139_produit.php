<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Produit extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('produit', function (Blueprint $table) {
            $table->increments('id_produit');
            $table->string('nom_produit')->nullable();
            $table->string('id_siqo')->nullable();
            $table->string('id_marque')->nullable();
            $table->string('id_categorie')->nullable();
            $table->string('id_sous_categorie')->nullable();
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
        Schema::drop('produit');
    }
}
