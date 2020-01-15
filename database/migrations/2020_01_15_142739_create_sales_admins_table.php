<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalesAdminsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sales_admins', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nik', 12);
            $table->string('kode_akses', 13)->default('salescpf_adm1');
            $table->datetime('last_login')->default(DB::raw('CURRENT_TIMESTAMP'));
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
        Schema::dropIfExists('sales_admins');
    }
}
