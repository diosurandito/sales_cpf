<?php

use Illuminate\Database\Seeder;

class SalesRekapsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	DB::table('sales_rekaps')->insert(array(
    		[ 
    			'nik' => '201901150857',
    			'id_dealer' => 'DLRJKI0001',
    			'lat' => '-6.177243',
    			'lng' => '106.766304',
                'nm_tempat' => null,
                'alamat' => null,
            ],
            [ 
             'nik' => '201909020880',
             'id_dealer' => 'DLRJKI0002',
             'lat' => '-6.177243',
             'lng' => '106.766304',
             'nm_tempat' => null,
             'alamat' => null,
         ],
         [ 
             'nik' => '201901150857',
             'id_dealer' => 'DLRJKI0003',
             'lat' => '-6.177243',
             'lng' => '106.766304',
             'nm_tempat' => null,
             'alamat' => null,
         ],
         [ 
             'nik' => '201909020880',
             'id_dealer' => 'DLRJKI0004',
             'lat' => '-6.177243',
             'lng' => '106.766304',
             'nm_tempat' => null,
             'alamat' => null,
         ],
         [ 
             'nik' => '201901150857',
             'id_dealer' => 'DLRJKI0005',
             'lat' => '-6.177243',
             'lng' => '106.766304',
             'nm_tempat' => null,
             'alamat' => null,
         ],
         [ 
             'nik' => '201909020880',
             'id_dealer' => 'DLRJKI0006',
             'lat' => '-6.177243',
             'lng' => '106.766304',
             'nm_tempat' => null,
             'alamat' => null,
         ],
         [ 
            'nik' => '201909020880',
            'id_dealer' => 'DLRJKI0000',
            'lat' => '-6.177243',
            'lng' => '106.766304',
            'nm_tempat' => 'Jl. U No.45, Kemanggisan',
            'alamat' => 'Kemanggisan, Palmerah, Jakarta Barat, DKI Jakarta',
        ]

    ));
    }
}
