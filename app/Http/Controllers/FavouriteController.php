<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Auth;
use Brian2694\Toastr\Facades\Toastr;

class FavouriteController extends Controller
{
    public function store($post){
        $user = Auth::user();
        $favourite = $user->favourite_post()->where('post_id',$post)->count();
        if($favourite  == 0){
            $user->favourite_post()->attach($post);
            Toastr::success('Successfully added Favourite list ','Success');
            return redirect()->back();
        }else{
            $user->favourite_post()->detach($post);
            Toastr::success('Successfully added Favourite list ','Success');
            return redirect()->back();
        }
    }
}
