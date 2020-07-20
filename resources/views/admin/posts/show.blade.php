@extends('layouts.backend.master')

@section('title','Post')

@push('css')
@endpush
@section('content')

<div class="container-fluid">
    <a href="{{ route('post.index',) }}" class="btn btn-primary waves-effect" style='margin-bottom:10px'>Back</a>

    @if($post->is_approved == false)
        <button type='button' class="btn btn-success btn-sm pull-right"  style='margin-bottom:10px'>
            <i class="material-icons">done</i>
            <span>Approve</span>
        </button>
    @else
        <button type='button' class="btn btn-success btn-sm pull-right disable"  style='margin-bottom:10px'>
            <i class="material-icons">done</i>
            <span>Approved</span>
        </button>
    @endif
    <div class="row clearfix">
        <div class="col-lg-7 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                        {{$post->title}}
                        <small>Posted By <strong><a href="">{{$post->user->name}}</a></strong> on <strong>{{$post->created_at->toFormattedDateString()}}</strong></small>
                    </h2>
                </div>
                <div class="body">
                    <p>{!! $post->body !!}</p>
                </div>
            </div>
        </div>
        <div class="col-lg-5 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header bg-green">
                    <h2>Tags</h2>
                </div>
                <div class="body">
                   @foreach($tags as $tag)
                     <span class='label bg-green'>{{$tag->name}}</span>
                   @endforeach
                </div>
            </div>

            <div class="card">
                <div class="header bg-orange">
                    <h2>Categories </h2>
                </div>
                <div class="body">
                   @foreach($categories as $category)
                     <span class='label bg-orange'>{{$category->name}}</span>
                   @endforeach
                </div>
            </div>

            <div class="card">
                <div class="header bg-cyan">
                    <h2>Featured Image</h2>
                </div>
                <div class="body">
                   <img class='img-responsive thumbnail' src="{{asset('storage/post/'.$post->image)}}" alt="{{$post->title}}">
                </div>
            </div>
        </div>
        
    </div>
</div>
@endsection

@push('js')
   
@endpush