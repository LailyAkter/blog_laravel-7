<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use Brian2694\Toastr\Facades\Toastr;
use Auth;

class CommentController extends Controller
{
    public function store(Request $request,$post){
        $data = $request->validate([
            'comment' => 'required',
        ]);

        $comment = new Comment();
        $comment->user_id = Auth::id();
        $comment->post_id = $post;
        $comment->comment = $request->comment;
        $comment->save();

        Toastr::success('Successfully Comment Added ','Success');
        return redirect()->back();

   }
}
