<?php

use Illuminate\Database\Seeder;

class SalesAdminsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	DB::table('sales_admins')->insert(array(
    		[ 
    			'nik' => '201901150857',
    			'kode_akses' => 'salescpf_adm1',
    		],

    		[ 
    			'nik' => '201909020880',
    			'kode_akses' => 'salescpf_adm1',
    		],

    	));
    }
}
