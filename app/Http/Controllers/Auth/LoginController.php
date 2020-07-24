<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;
use App\User;
use App\Social;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        if(Auth::check() && Auth::user()->role_id == 1){
            $this->redirectTo ='admin/dashboard';
        }else{
            $this->redirectTo = 'author/dashboard';
        }
        $this->middleware('guest')->except('logout');
    }

    /**
     * Redirect the user to the Facebook authentication page.
     *
     * @return \Illuminate\Http\Response
     */
    public function redirectToProvider($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

    /**
     * Obtain the user information from GitHub.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleProviderCallback($provider)
    {
        try{
            $social_user = Socialite::driver($provider)->user();
        }catch(\Exception $e){
            return redirect('author/dashboard');
        }
       
        $social_provider = Social::where('provider_id',$social_user->getId())->first();

        if(!$social_provider){
            $user = User::firstOrCreate([
                'email' => $social_user->getEmail(),
                'name' => $social_user->getName(),
            ]);

            $user->socials()->create([
                'provider_id' => $social_user->getId(),
                'provider' => $provider
            ]);
            Auth::login($user,true);
            return redirect('author/dashboard');
        }else{
            $user = $social_provider->user;
            Auth::login($user,true);
            return redirect('author/dashboard');
        }

        // return $user->getEmail();
    }
    
}
