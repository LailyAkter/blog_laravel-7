<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('verified');
    }

    public function index()
    {
        $user = Auth::user();
        $posts = $user->posts;
        $popular_posts = $user->posts()
                        ->withCount('comments')
                        ->withCount('favourite_users')
                        ->orderBy('view_count','desc')
                        ->orderBy('comments_count')
                        ->orderBy('favourite_users_count')
                        ->take(6)
                        ->get();
        $total_pending_posts = $posts->where('is_approved',false)->count();
        $all_views = $posts->sum('view_count');
        return view('author.dashboard',compact('popular_posts','posts','total_pending_posts','all_views'));
    }
}
