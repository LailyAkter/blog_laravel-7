<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable implements MustVerifyEmail
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','user_name','image','about','facebook_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function role(){
        return $this->belongsTo('App\Role');
    }

    public function posts(){
        return $this->hasMany('App\Post');
    }

    public function favourite_post(){
        return $this->belongsToMany('App\Post');
    }

    public function comments(){
        return $this->hasMany('App\Comment');
    }

    public function scopeUser($query)
    {
        return $query->where('role_id',2);
    }

    public function socials(){
        return $this->hasMany('App\Social');
    }

}
