<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRDV extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('RDV', function (Blueprint $table) {
            $table->increments('id');
            $table->string('Commercial');
            $table->string('Client');
            $table->string('Info');
            $table->string('Date');
            $table->string('Heure');
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
        Schema::dropIfExists('RDV');
    }
}
