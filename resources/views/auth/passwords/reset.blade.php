@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card o-hidden border-0 shadow-lg" style='margin:8rem 0px;'>
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">{{ __('Reset Password') }}</h1>
                        </div>
                        <form class="user" method="POST" action="{{ route('password.update') }}">
                            @csrf
                            <input type="hidden" name="token" value="{{ $token }}">

                            <div class="form-group">
                                <input 
                                    type="email" 
                                    class="form-control form-control-user @error('email') is-invalid @enderror" name="email" value="{{ $email ?? old('email') }}" 
                                    id="exampleInputEmail" 
                                    placeholder="Email Address"
                                    required autocomplete="email" 
                                    autofocus
                                />
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input 
                                    type="password" 
                                    class="form-control form-control-user @error('password') is-invalid @enderror" 
                                    id="exampleRepeatPassword" 
                                    placeholder="Repeat Password"
                                    name="password" 
                                    required autocomplete="new-password"
                                />
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input 
                                    type="password" 
                                    class="form-control form-control-user" 
                                    id="exampleRepeatPassword" 
                                    placeholder="Repeat Password"
                                    name="password_confirmation" 
                                    required autocomplete="new-password"

                                />
                            </div>
                            <button type="submit" class="btn btn-primary">
                                {{ __('Reset Password') }}
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
