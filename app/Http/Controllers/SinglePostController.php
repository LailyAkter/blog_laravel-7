<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Session;
use App\Category;
use App\Tag;

class SinglePostController extends Controller
{
    public function index($slug)
    {
        $post = Post::where('slug',$slug)->Approved()->Status()->first();
        $blogId = 'blog' .$post->id;
        if(!Session::has($blogId)){
            $post->increment('view_count');
            Session::put($blogId,1);
        }
        $posts = Post::Approved()->Status()->take(3)->inRandomOrder()->get();
        return view('single_post',compact('post','posts'));
    }

    public function post(){
        $posts = Post::latest()->Approved()->Status()->paginate(6);
        return view('posts',compact('posts'));
    }

    public function postByCategory($slug){
        $categories = Category::where('slug',$slug)->first();
        $posts = $categories->posts()->Approved()->Status()->get();
        return view('postByCategory',compact('categories','posts'));
    }

    public function postByTag($slug)
    {
        $tags = Tag::where('slug',$slug)->first();
        $posts = $tags->posts()->Approved()->Status()->get();
        return view('postByTag',compact('tags','posts'));
    }

    
}
