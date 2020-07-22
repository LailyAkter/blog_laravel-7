<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function user(){
        return $this->belongsTo('App\User');
    }

    public function tags(){
        return $this->belongsToMany('App\Tag');
    }

    public function categories(){
        return $this->belongsToMany('App\Category');
    }

    public function favourite_users(){
        return $this->belongsToMany('App\User');
    }
}
