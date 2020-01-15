<?php

use Illuminate\Database\Seeder;

class DealersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	DB::table('dealers')->insert(array(
    		[ 
    			'id_dealer' => 'DLRJKI0001',
    			'nama_dealer' => 'Dealer Satu'
    			'alamat' => 'Jl. Satu Dua No.1, Palmerah, Jakarta Barat',
    			'kota' => 'Jakarta Barat',
    			'provinsi' => 'DKI Jakarta',
    			'kontak_person' => 'Bpk Satu',
    			'no_telp' => '0877 1234 0001'

    		],
    		[ 
    			'id_dealer' => 'DLRJKI0002',
    			'nama_dealer' => 'Dealer Dua'
    			'alamat' => 'Jl. Satu Dua No.2, Palmerah, Jakarta Barat',
    			'kota' => 'Jakarta Barat',
    			'provinsi' => 'DKI Jakarta',
    			'kontak_person' => 'Bpk Dua',
    			'no_telp' => '0877 1234 0002'

    		],
    		[ 
    			'id_dealer' => 'DLRJKI0003',
    			'nama_dealer' => 'Dealer Tiga'
    			'alamat' => 'Jl. Satu Dua No.3, Palmerah, Jakarta Barat',
    			'kota' => 'Jakarta Barat',
    			'provinsi' => 'DKI Jakarta',
    			'kontak_person' => 'Bpk Tiga',
    			'no_telp' => '0877 1234 0003'

    		],
    		[ 
    			'id_dealer' => 'DLRJKI0004',
    			'nama_dealer' => 'Dealer Empat'
    			'alamat' => 'Jl. Satu Dua No.4, Palmerah, Jakarta Barat',
    			'kota' => 'Jakarta Barat',
    			'provinsi' => 'DKI Jakarta',
    			'kontak_person' => 'Bpk Empat',
    			'no_telp' => '0877 1234 0004'

    		],
    		[ 
    			'id_dealer' => 'DLRJKI0005',
    			'nama_dealer' => 'Dealer Lima'
    			'alamat' => 'Jl. Satu Dua No.5, Palmerah, Jakarta Barat',
    			'kota' => 'Jakarta Barat',
    			'provinsi' => 'DKI Jakarta',
    			'kontak_person' => 'Bpk Lima',
    			'no_telp' => '0877 1234 0005'

    		]

    	));
    }
}
