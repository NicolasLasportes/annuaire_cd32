<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Producteur extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('producteur', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nom_entreprise_producteur');
            $table->string('lieu_dit_producteur')->nullable();
            $table->string('numero_producteur')->nullable();
            $table->string('voie_producteur')->nullable();
            $table->string('code_postal_producteur')->nullable();
            $table->string('commune_producteur')->nullable();
            $table->string('nom_gerant_producteur')->nullable();
            $table->string('telephone_un_producteur')->nullable();
            $table->string('telephone_deux_producteur')->nullable();
            $table->string('mail_producteur')->nullable();
            $table->string('site_internet_producteur')->nullable();
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
        Schema::drop('producteur');    
    }
}
