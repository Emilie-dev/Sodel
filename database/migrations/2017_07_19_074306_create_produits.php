<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProduits extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('produits', function (Blueprint $table) {
            $table->increments('id');
            $table->string('Nom');
            $table->string('Reference');
            $table->text('Description');
            $table->string('Impedance');
            $table->string('Sensibilite_aux_entrees');
            $table->string('Source_de_courant');
            $table->string('Dimensions');
            $table->string('Poids');
            $table->double('Prix');            
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
        Schema::dropIfExists('produits');
    }
}
