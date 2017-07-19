<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStocks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stocks', function (Blueprint $table) {
            $table->increments('id');
            $table->string('Reference');
            $table->string('Stock_Allemagne');
            $table->string('Stock_France');
            $table->string('Stock_Pays Bas');
            $table->string('Reappro_Allemagne');
            $table->string('Reappro_Allemagne_d');
            $table->string('Reappro_France');
            $table->string('Reappro_France_d');
            $table->string('Reappro_Pays_Bas');
            $table->string('Reappro_Pays_Bas_d');
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
        Schema::dropIfExists('stocks');
    }
}
