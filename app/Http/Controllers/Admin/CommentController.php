<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Comment;
use Brian2694\Toastr\Facades\Toastr;

class CommentController extends Controller
{
    public function index(){
        $comments = Comment::latest()->get();
        return view('admin.comments',compact('comments'));
    }

    public function delete($id)
    {
        $comment = Comment::findOrFail($id);
        $comment->delete();
        Toastr::error('Comments Successfully Deleted','Success');
        return redirect()->back();
    }
}
