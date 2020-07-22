<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use Auth;
use Hash;
use App\User;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Str;

class SettingController extends Controller
{
    public function index()
    {
        return view('admin.settings.profile');
    }

    public function update(Request $request){
        $user = $request->validate([
            'name' => 'required',
            'email' => 'required',
        ]);

        if($request->hasFile('image')){
            $avatar = $request->file('image');
			$filename  = time() . '.' . $avatar->getClientOriginalExtension();
            $path = public_path('uploads/avatars/' . $filename);
            Image::make($avatar->getRealPath())->resize(468, 249)->save($path);
            $user = Auth::user();
            $user->avatar = 'uploads/avatars/'.$filename;
            $user->name = $request->name;
            $user->user_name = $request->user_name;
            $user->about = $request->about;
            $user->email = $request->email;
            $user->save();
        }

        
        Toastr::success('Profile Updated Successfully','Success');

        return redirect('admin/dashboard');
    }

    public function password()
    {
        return view('admin.settings.password');
    }

    public function password_update(Request $request)
    {
         $request->validate([
            'old_password' => 'required',
            'password' => 'required|confirmed:password_confirmation'
        ]);

        $hasedPassword = Auth::user()->password;

        if(Hash::check($request->old_password,$hasedPassword)){
            if(!Hash::check($request->password,$hasedPassword)){
                $user = User::findOrFail(Auth::id());
                $user->password = Hash::make($request->password);
                $user->save();

                Toastr::success('Password Updated Successfully','Success');
                Auth::logout();
            }else{
                Toastr::error('New Password Can not be Same as Old Password','Error');
            }
        }else{
            Toastr::error('Current Password Not Match','Error');
        }
        return redirect()->back();
    }
}
