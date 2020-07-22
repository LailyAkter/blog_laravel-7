<header>
    <div class="container-fluid position-relative no-side-padding">
    
        <div class="menu-nav-icon" data-nav-menu="#main-menu"><i class="ion-navicon"></i></div>
        <div class="container">
            <ul class="main-menu visible-on-click" id="main-menu">
                <li><a href="{{url('/')}}">Home</a></li>
                <li><a href="{{url('posts')}}">Posts</a></li>
                @guest
                    <li><a href="{{route('login')}}">Login</a></li>
                @else
                    @if(Auth::user()->role_id == 1)
                        <li><a href="{{url('admin/dashboard')}}">Admin Dashboard</a></li>
                    @endif
                     @if(Auth::user()->role_id == 2)
                        <li><a href="{{url('author/dashboard')}}">Author Dashboard</a></li>
                    @endif
                @endguest
            </ul>
            <!-- main-menu -->
            <div class="src-area">
                <form>
                    <button class="src-btn" type="submit"><i class="ion-ios-search-strong"></i></button>
                    <input class="src-input" type="text" placeholder="Type of search">
                </form>
            </div>
        </div>
    </div>
    <!-- conatiner -->
</header>