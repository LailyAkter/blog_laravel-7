<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Post;
use App\User;
use Carbon\Carbon;
use App\Category;
use App\Tag;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth','verified');
    }
    public function index()
    {
        $posts = Post::all();
        $popular_posts = Post::withCount('comments')
                                ->withCount('favourite_users')
                                ->orderBy('view_count','desc')
                                ->orderBy('comments_count','desc')
                                ->orderBy('favourite_users_count','desc')
                                ->take(6)
                                ->get();
        $total_pending_posts = Post::where('is_approved',false)->count();
        $all_views = Post::sum('view_count');
        $user_count = User::where('role_id',2)->count();
        $new_user_today = User::where('role_id',2)
                                ->whereDate('created_at',Carbon::today())
                                ->count();
        $active_users = User::where('role_id',2)
                             ->withCount('posts')
                             ->withCount('comments')
                             ->withCount('favourite_post')
                             ->orderBy('posts_count','desc')
                             ->orderBy('comments_count','desc')
                             ->orderBy('favourite_post_count','desc')
                             ->take(8)
                             ->get();
        $category_counts = Category::all()->count();
        $tag_counts = Tag::all()->count();

        return view('admin.dashboard',compact([
            'posts','popular_posts','total_pending_posts','all_views','user_count','new_user_today','active_users',
            'category_counts','tag_counts'
        ]));
    }
}
