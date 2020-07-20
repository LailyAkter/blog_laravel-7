@extends('layouts.backend.master')

@section('title','Category')

@push('css')

@endpush

@section('content')
    <div class="container-fluid">
        <!-- Vertical Layout | With Floating Label -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                           ADD NEW CATEGORY
                        </h2>
                    </div>
                    <div class="body">
                        <form action="{{ route('category.store') }}" method="POST"  enctype="multipart/form-data">
                            @csrf
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <input 
                                        type="text" 
                                        id="name" 
                                        class="form-control" 
                                        name="name"
                                        value="{{old('name')}}"
                                    />
                                    <label class="form-label">Category  Name</label>
                                </div>
                            </div>

                            <div class="form-group form-float">
                                <div class="form-line">
                                    <label>Category Image</label>
                                    <input 
                                        type="file" 
                                        id="image" 
                                        class="form-control" 
                                        name="image"
                                        value="{{old('image')}}"
                                    />
                                </div>
                            </div>

                            <a  class="btn btn-danger m-t-15 waves-effect" href="{{ route('category.index') }}">BACK</a>
                            <button type="submit" class="btn btn-primary m-t-15 waves-effect">SAVE</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')

@endpush