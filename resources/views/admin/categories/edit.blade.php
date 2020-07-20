@extends('layouts.backend.master')
@section('title','Edit Category')

@section('content')
    <section class="content">
        <div class="row justify-content-center">
            <div class="col-md-8 mt-3">
                <div class="card border-left-success">
                    <div class="card-header">
                        <h3 class="card-title">Edit Category</h3>
                    </div>
                    <div class="card-body">
            
                        <form action="{{route('category.update',$category->id)}}" method='post' enctype="multipart/form-data">
                        @csrf
                        @method("PUT")
                            <div class="form-group">
                                <label for="inputName">Name</label>
                                <input 
                                    type="text" 
                                    class="form-control @error('name') is-invalid @enderror" 
                                    name='name'
                                    placeholder='Enter Your Name'
                                    value="{{$category->name}}"
                                />
                                @if($errors->has('name'))
                                    <span class='invalid-feedback'>Name is Required</span>
                                @endif
                            </div>

                            <div class="form-group">
                                <label for="inputName">Category Image</label>
                                <input 
                                    type="file" 
                                    class="form-control @error('image') is-invalid @enderror" 
                                    name='image'
                                    value="{{$category->image}}"
                                />
                                @if($errors->has('image'))
                                    <span class='invalid-feedback'>Image is Required</span>
                                @endif
                            </div>

                            <button type='submit' class='btn btn-success'>Update</button>
                            <a href="{{route('category.index')}}" class='btn btn-danger'>Back</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection