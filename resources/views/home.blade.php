@extends('layouts.frontend.master')

@section('title','Home Page')

@section('css')
	<style>
		.favourite_post{
			color:blue;
		}
	</style>
@endsection

@section('content')
<div class="main-slider">
	<div class="swiper-container position-static" data-slide-effect="slide" data-autoheight="false"
		data-swiper-speed="500" data-swiper-autoplay="10000" data-swiper-margin="0" data-swiper-slides-per-view="4"
		data-swiper-breakpoints="true" data-swiper-loop="true" >
		<div class="swiper-wrapper">
			@foreach($categories as $category)
				<div class="swiper-slide">
					<a class="slider-category" href="{{url('category/'.$category->slug)}}">
						<div class="blog-image">
							<img src="{{asset('storage/category/slider/'.$category->image)}}" alt="{{$category->name}}">
						</div>

						<div class="category">
							<div class="display-table center-text">
								<div class="display-table-cell">
									<h3><b>{{$category->name}}</b></h3>
								</div>
							</div>
						</div>
					</a>
				</div>
			@endforeach
			<!-- swiper-slide -->
		</div>
		<!-- swiper-wrapper -->
	</div>
	<!-- swiper-container -->
</div><!-- slider -->

<section class="blog-area section">
	<div class="container">
		<!-- <h2 class='text-center'>Blog</h2> -->
		<div class="row">
			@foreach($posts as $post)
				<div class="col-lg-4 col-md-6">
					<div class="card h-100">
						<div class="single-post post-style-1">

							<div class="blog-image">
								<img src="{{asset('storage/post/'.$post->image)}}" alt="{{$post->title}}">
							</div>

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
				</div>
			@endforeach
			<!-- col-lg-4 col-md-6 -->
		</div>
		<!-- row -->

		<a class="load-more-btn" href="{{url('posts')}}"><b>LOAD MORE</b></a>
	</div><!-- container -->
</section>
@endsection

@section('js')
@endsection