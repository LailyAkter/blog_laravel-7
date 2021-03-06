<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Post;

class HomeController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        $posts = Post::latest()->Approved()->Status()->take(6)->get();
        return view('home',compact('categories','posts'));
    }
}
