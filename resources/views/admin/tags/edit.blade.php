@extends('layouts.backend.master')
@section('title','Edit Tag')

@section('content')
    <section class="content">
        <div class="row justify-content-center">
            <div class="col-md-8 mt-3">
                <div class="card border-left-success">
                    <div class="card-header">
                        <h3 class="card-title">Edit Tag</h3>
                    </div>
                    <div class="card-body">
            
                        <form action="{{route('tag.update',$tag->id)}}" method='post'>
                        @csrf
                        @method('PUT')
                            <div class="form-group">
                                <label for="inputName">Name</label>
                                <input 
                                    type="text" 
                                    class="form-control @error('name') is-invalid @enderror" 
                                    name='name'
                                    placeholder='Enter Your Name'
                                    value="{{$tag->name}}"
                                />
                                @if($errors->has('name'))
                                    <span class='invalid-feedback'>Name is Required</span>
                                @endif
                            </div>

                            <button type='submit' class='btn btn-success'>Update</button>
                            <a href="{{route('tag.index')}}" class='btn btn-danger'>Back</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection