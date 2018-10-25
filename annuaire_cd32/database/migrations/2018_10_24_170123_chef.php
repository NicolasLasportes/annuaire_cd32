<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Chef extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chef', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nom_chef');
            $table->string('prenom_chef');
            $table->string('identifiant_chef');
            $table->string('mot_de_passe_chef');
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
        Schema::drop('chef');
    }
}
