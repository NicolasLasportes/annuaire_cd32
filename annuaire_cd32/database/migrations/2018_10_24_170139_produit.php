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
            $table->increments('id');
            $table->string('nom_produit')->nullable();
            $table->integer('id_siqo')->unsigned()->nullable();
            $table->unsignedInteger('id_marque')->nullable();
            $table->unsignedInteger('id_categorie')->nullable();
            $table->unsignedInteger('id_sous_categorie')->nullable();

            $table->foreign('id_siqo')->references('id')->on('siqo')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_marque')->references('id')->on('marque')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_categorie')->references('id')->on('categorie')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_sous_categorie')->references('id')->on('sous_categorie')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
        });      
        /*
        Schema::table('produit', function($table) {
       		$table->foreign('id_siqo')->references('id')->on('siqo')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_marque')->references('id')->on('marque')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_categorie')->references('id')->on('categorie')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('id_sous_categorie')->references('id')->on('sous_categorie')->onDelete('cascade')->onUpdate('cascade');
 		});
 		*/
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
