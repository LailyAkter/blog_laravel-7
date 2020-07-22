<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Session;

class SinglePostController extends Controller
{
    public function index($slug)
    {
        $post = Post::where('slug',$slug)->first();
        $blogId = 'blog' .$post->id;
        if(!Session::has($blogId)){
            $post->increment('view_count');
            Session::put($blogId,1);
        }
        $posts = Post::all()->random(3);
        return view('single_post',compact('post','posts'));
    }

    public function post(){
        $posts = Post::latest()->paginate(6);
        return view('posts',compact('posts'));
    }

    
}
