<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class SalesAdmin extends Authenticatable
{
	use Notifiable;

	protected $guarded = [];
	protected $connection = 'mysql2';
	protected $table = 'master_karyawan';
	protected $primaryKey = 'no';

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    	'password',
    ];

    
}
