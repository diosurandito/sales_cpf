<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalesRekapsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sales_rekaps', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nik', 12);
            $table->string('id_dealer', 10)->nullable()->default('DLRJKI0000');
            $table->datetime('tgl_kunjungan')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->decimal('lat', 10, 8);
            $table->decimal('lng', 11, 8);
            $table->string('nm_tempat', 120)->nullable();
            $table->string('alamat', 160)->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sales_rekaps');
    }
}
