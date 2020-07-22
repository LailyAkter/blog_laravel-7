<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class AuthorController extends Controller
{
    public function profile($username)
    {
        $user = User::where('user_name',$username)->first();
        $posts = $user->posts()->Approved()->Status()->get();

        return view('profile',compact('user','posts'));
    }
}
