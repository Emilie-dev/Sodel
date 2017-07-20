<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommandeClient extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('commandeClient', function (Blueprint $table) {
            $table->increments('id');
            $table->string('Refclient');
            $table->string('Refcommande');
            $table->string('Refcommercial');
            $table->string('Livre');
            $table->string('Refcolis');
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
        Schema::dropIfExists('commandeClient');
    }
}
