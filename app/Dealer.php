<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Eloquent;

class Dealer extends Model
{
	use SoftDeletes;

	protected $connection = 'mysql';
	protected $table = 'dealers';
	protected $guarded = [];
	protected $dates = ['deleted_at'];


	

}
