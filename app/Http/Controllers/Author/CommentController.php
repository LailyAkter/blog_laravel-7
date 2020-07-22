<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Comment;
use Brian2694\Toastr\Facades\Toastr;
use Auth;
class CommentController extends Controller
{
    public function index(){
        $posts = Auth::user()->posts;
        return view('author.comments',compact('posts'));
    }

    public function delete($id)
    {
        $comment = Comment::findOrFail($id);
        if($comment->post->user->id == Auth::id()){
            $comment->delete();
            Toastr::error('Comments Successfully Deleted','Success');
        }else{
            Toastr::error('You Are Not Authorized User','Error');
        }
        
        return redirect()->back();
    }
}
