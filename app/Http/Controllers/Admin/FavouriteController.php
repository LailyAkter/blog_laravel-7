<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class FavouriteController extends Controller
{
    public function index()
    {
        $posts = Auth::user()->favourite_post;
        return view('admin.favourite',compact('posts'));
    }
   
}
