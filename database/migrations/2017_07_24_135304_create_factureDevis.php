<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFactureDevis extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('factureDevis', function (Blueprint $table) {
             $table->increments('id');
            $table->timestamps();
            $table->integer('Client_id');
            $table->integer('Produits_id');
            $table->double('Promotion')->nullable();
            $table->integer('Quantité');
            $table->double('Soustotal');
            $table->double('Prix');
            $table->boolean('Valider');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('factureDevis');
    }
}
