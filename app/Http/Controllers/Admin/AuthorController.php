<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Brian2694\Toastr\Facades\Toastr;

class AuthorController extends Controller
{
    public function index(){
        $users = User::User()
                ->withCount('posts')
                ->withCount('comments')
                ->withCount('favourite_post')
                ->get();
        return view('admin.authors',compact('users'));
    }

    public function delete($id){
        $user = User::findOrFail($id);
        $user->delete();

        Toastr::error('Author Successfully Deleted','Success');
        return redirect()->back();
    }
}
