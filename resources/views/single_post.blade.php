@extends('layouts.frontend.master')
@section('title')
    {{$post->title}}
@endsection

@section('css')
    <link href="{{asset('frontend/single-post/css/styles.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/single-post/css/responsive.css')}}" rel="stylesheet">
    <style>
		.favourite_post{
			color:blue;
		}
        .bg-slider{
            height:500px;
            width:100%;
            background-size:cover;
            background-image : url('{{asset('storage/post/'.$post->image)}}')
        }
	</style>
@endsection

@section('content')
	<div class="bg-slider">
		<div class="display-table  center-text">
			<!-- <h1 class="title display-table-cell"><b>{{$post->title}}</b></h1> -->
		</div>
	</div><!-- slider -->

	<section class="post-area section">
		<div class="container">

			<div class="row">

				<div class="col-lg-8 col-md-12 no-right-padding">

					<div class="main-post">

						<div class="blog-post-inner">

							<div class="post-info">

								<div class="left-area">
									<a class="avatar" href="#"><img src="images/avatar-1-120x120.jpg" alt="Profile Image"></a>
								</div>

								<div class="middle-area">
									<a class="name" href="#"><b>{{$post->user->name}}</b></a>
									<h6 class="date">On {{$post->created_at->diffForHumans()}}</h6>
								</div>

							</div><!-- post-info -->

							<h3 class="title"><a href="#"><b>{{$post->title}}</b></a></h3>

							<p class="para">{!!$post->body!!}</p>

							<ul class="tags">
                                @foreach($post->tags as $tag)
								<li><a href="#">{{$tag->name}}</a></li>
                                @endforeach
							</ul>
						</div><!-- blog-post-inner -->

						<div class="post-icons-area">
							<ul class="post-icons">
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

							<ul class="icons">
								<li>SHARE : </li>
								<li><a href="#"><i class="ion-social-facebook"></i></a></li>
								<li><a href="#"><i class="ion-social-twitter"></i></a></li>
								<li><a href="#"><i class="ion-social-pinterest"></i></a></li>
							</ul>
						</div>
					</div><!-- main-post -->
				</div><!-- col-lg-8 col-md-12 -->

				<div class="col-lg-4 col-md-12 no-left-padding">

					<div class="single-post info-area">

						<div class="sidebar-area about-area">
							<h4 class="title"><b>ABOUT AUTHOR</b></h4>
							<p>{{$post->user->about}}</p>
						</div>

						<div class="sidebar-area subscribe-area">

							<h4 class="title"><b>SUBSCRIBE</b></h4>
							<div class="input-area">
                                <form action='{{url("subscriber")}}' method='post'>
                                    @csrf
                                    <input class="email-input"  name='email' type="email" placeholder="Enter your email">
                                    <button class="submit-btn" type="submit"><i class="icon ion-ios-email-outline"></i></button>
                                </form>
                            </div>

						</div><!-- subscribe-area -->

						<div class="tag-area">

							<h4 class="title"><b>CATEGORIES</b></h4>
							<ul>
                                @foreach($post->categories as $category)
								<li><a href="#">{{$category->name}}</a></li>
                                @endforeach
							</ul>

						</div><!-- subscribe-area -->

					</div><!-- info-area -->

				</div><!-- col-lg-4 col-md-12 -->

			</div><!-- row -->

		</div><!-- container -->
	</section><!-- post-area -->


	<section class="recomended-area section">
		<div class="container">
			<div class="row">
                @foreach($posts as $post)                                      
                    <div class="col-lg-4 col-md-6">
                        <div class="card h-100">
                            <div class="single-post post-style-1">

                                <div class="blog-image"><img src="{{asset('storage/post/'.$post->image)}}" alt="{{$post->title}}"></div>

                                <a class="avatar" href="#"><img src="images/icons8-team-355979.jpg" alt="Profile Image"></a>

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
                    </div><!-- col-md-6 col-sm-12 -->
                @endforeach                                    
			</div><!-- row -->

		</div><!-- container -->
	</section>

	<section class="comment-section">
		<div class="container">
			<h4><b>POST COMMENT</b></h4>
			<div class="row">

				<div class="col-lg-8 col-md-12">
					<div class="comment-form">
						@guest		
							<p>New Post Comment For login first .<a href="{{route('login')}}">Login</a></p>							
						@else				
						<form method="post" action="{{url('comment/'.$post->id)}}">
						@csrf
							<div class="row">
								<div class="col-sm-12">
									<textarea name="comment" rows="2" class="text-area-messge form-control"
										placeholder="Enter your comment" aria-required="true" aria-invalid="false"></textarea >
								</div><!-- col-sm-12 -->
								<div class="col-sm-12">
									<button class="submit-btn" type="submit" id="form-submit"><b>POST COMMENT</b></button>
								</div><!-- col-sm-12 -->

							</div><!-- row -->
						</form>
						@endguest
					</div><!-- comment-form -->

					<h4><b>COMMENTS({{$post->comments->count()}})</b></h4>

					@if($post->comments->count() > 0)									
						@foreach($post->comments as $comment)
							<div class="commnets-area ">

								<div class="comment">

									<div class="post-info">

										<div class="left-area">
											<a class="avatar" href="#"><img src="images/avatar-1-120x120.jpg" alt="Profile Image"></a>
										</div>

										<div class="middle-area">
											<a class="name" href="#"><b>{{$comment->user->name}}</b></a>
											<h6 class="date">on {{$comment->created_at->diffForHumans()}}</h6>
										</div>

										<div class="right-area">
											<h5 class="reply-btn" ><a href="#"><b>REPLY</b></a></h5>
										</div>

									</div><!-- post-info -->

									<p>{{$comment->comment}}</p>

								</div>

							</div><!-- commnets-area -->
						@endforeach
					@else
						<div class="commnets-area ">
							<div class="comment">
								<p>No Comment Found</p>
							</div>
						</div><!-- commnets-area -->								
					@endif									
				</div><!-- col-lg-8 col-md-12 -->

			</div><!-- row -->

		</div><!-- container -->
	</section>
@endsection

@section('js')
@endsection