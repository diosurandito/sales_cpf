<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class SalesRekap extends Model
{
	protected $table = 'sales_rekaps';
	protected $guarded = [];
	protected $dates = ['deleted_at'];

}
