<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>@yield('title')</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">


	<!-- Font -->

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="{{asset('frontend/common-css/bootstrap.css')}}" rel="stylesheet">

	<link href="{{asset('frontend/common-css/swiper.css')}}" rel="stylesheet">

	<link href="{{asset('frontend/common-css/ionicons.css')}}" rel="stylesheet">


	<link href="{{asset('frontend/css/styles.css')}}" rel="stylesheet">

	<link href="{{asset('frontend/css/responsive.css')}}" rel="stylesheet">

	<!-- toastr -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

    @yield('css')

</head>
<body >

	<!-- Navbar -->
    @include('layouts.frontend.partials.navbar')

    <!-- section -->
    @yield("content")


	<!-- footer  -->
    @include('layouts.frontend.partials.footer')


	<!-- SCIPTS -->
	<script src="{{asset('frontend/common-js/jquery-3.1.1.min.js')}}"></script>

	<script src="{{asset('frontend/common-js/tether.min.js')}}"></script>

	<script src="{{asset('frontend/common-js/bootstrap.js')}}"></script>

	<script src="{{asset('frontend/common-js/swiper.js')}}"></script>

	<script src="{{asset('frontend/common-js/scripts.js')}}"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	{!! Toastr::message() !!}
	<script>
		@if($errors->any())
			@foreach($errors->all() as $error)
				toastr.error('{{ $error }}','Error',{
					closeButton:true,
					progressBar:true,
				});
			@endforeach
		@endif
	</script>

    @yield('js')

</body>
</html>
