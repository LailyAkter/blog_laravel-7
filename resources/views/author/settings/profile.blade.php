@extends('layouts.backend.master')
@section('title','Profile Update')

@section('content')
    <section class="container-fluid">
        <div class="row clearfix">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        <h2>Profile Update</h2>
                    </div>
                    <div class="body">
                        <form action="{{url('author/profile/update')}}" method='post' enctype="multipart/form-data">
                        @csrf
                            <div class="form-group form-float">
                                <div class='form-line'>
                                    <input 
                                        type="text" 
                                        id="inputName" 
                                        class="form-control" 
                                        name='name'
                                        placeholder='Enter Your Name'
                                        value="{{Auth::user()->name}}"
                                    />
                                    <label class="form-label"> Name</label>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class='form-line'>
                                    <input 
                                        type="text" 
                                        id="inputName" 
                                        class="form-control" 
                                        name='user_name'
                                        placeholder='Enter Your User Name'
                                        value="{{Auth::user()->user_name}}"
                                    />
                                    <label class="form-label">User Name</label>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class='form-line'>
                                    <label>Image</label>
                                    <input 
                                        type="file" 
                                        id="inputName" 
                                        class="form-control" 
                                        name='image'
                                    />
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class='form-line'>
                                    <input 
                                        type="email" 
                                        id="inputName" 
                                        class="form-control" 
                                        name='email'
                                        placeholder='Enter Your Email'
                                        value="{{Auth::user()->email}}"
                                    />
                                    <label class="form-label">Email</label>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class='form-line'>
                                    <textarea name="about" class='form-control'>{{Auth::user()->about}}</textarea>
                                    <label class="form-label">About</label>
                                </div>
                            </div>
                            <button type='submit' class='btn btn-success'>Update Profile</button>
                            <a href="{{url('author/dashboard')}}" class='btn btn-danger'>Back</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection