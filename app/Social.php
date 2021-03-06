<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Social extends Model
{
    protected  $fillable  = ['provider_id','provider'];
    public function user(){
        return $this->belongsTo('App\User');
    }
}
