@extends('layouts.frontend.master')

@section('title','Tags Posts')

@section('css')
    <link href="{{asset('frontend/category/css/styles.css')}}" rel="stylesheet">
	<link href="{{asset('frontend/category/css/responsive.css')}}" rel="stylesheet">
    <style>
    .favourite_post{
        color:blue;
    }
    
    </style>
@endsection

@section('content')

	<div class="slider display-table center-text">
		<h1 class="title display-table-cell"><b>{{$tags->name}}</b></h1>
	</div><!-- slider -->

	<section class="blog-area section">
		<div class="container">

			<div class="row">
                @if($posts->count() > 0)
                    @foreach($posts as $post)
                    <div class="col-lg-4 col-md-6">
                        <div class="card h-100">
                            <div class="single-post post-style-1">

                                <div class="blog-image"><img src="{{asset('storage/post/'.$post->image)}}" alt="{{$post->title}}"></div>

                                <a class="avatar" href="{{url('profile/'.$post->user->user_name)}}"><img src="images/icons8-team-355979.jpg" alt="Profile Image"></a>

                                <div class="blog-info">

                                    <h4 class="title"><a href="{{url('single/post/'.$post->slug)}}"><b>{{$post->title}}</b></a></h4>

                                    <ul class="post-footer">
                                        <li>
                                            @guest
                                                <a href="#" 
                                                    onclick="toastr.info('Favourite List add to login first','Info',{
                                                    closeButton:true,progressBar:true})"
                                                >
                                                    <i class="ion-heart"></i>
                                                    {{$post->favourite_users->count()}}
                                                </a>
                                            @else
                                                <a href="#" 
                                                    onclick="document.getElementById('favourite-form-{{$post->id}}').submit();"
                                                    class={{!Auth::user()->favourite_post->where('pivot.post_id',$post->id)->count() == 0 ? 'favourite_post' : ''}}
                                                >
                                                    <i class="ion-heart"></i>
                                                    {{$post->favourite_users->count()}}
                                                </a>
                                                <form id='favourite-form-{{$post->id}}' action="{{url('favourite/'.$post->id.'/create')}}" method='post' style='display:none'>
                                                    @csrf
                                                </form>
                                            @endguest
                                            
                                        </li>
                                        <li><a href="#"><i class="ion-chatbubble"></i>{{$post->comments->count()}}</a></li>
                                        <li><a href="#"><i class="ion-eye"></i>{{$post->view_count}}</a></li>
                                    </ul>

                                </div><!-- blog-info -->
                            </div><!-- single-post -->
                        </div><!-- card -->
                    </div><!-- col-lg-4 col-md-6 -->
                    @endforeach
                @else
                   <div class="col-lg-4 col-md-6">
                        <div class="card h-100">
                            <div class="single-post post-style-1">
                                <div class="blog-info">

                                    <h4 class="title"><strong>Sorry. No Post Found.</strong></h4>

                                </div><!-- blog-info -->
                            </div><!-- single-post -->
                        </div><!-- card -->
                    </div><!-- col-lg-4 col-md-6 -->                                     
                @endif
			</div><!-- row -->

		</div><!-- container -->
	</section><!-- section -->
@endsection

@section('js')
@endsection