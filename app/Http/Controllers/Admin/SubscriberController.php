<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Subscriber;
use Brian2694\Toastr\Facades\Toastr;
class SubscriberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $subscribers = Subscriber::latest()->get();
        return view('admin.subscribers',compact('subscribers'));
    }

    public function delete($id)
    {
        $subscriber = Subscriber::findOrFail($id);
        $subscriber->delete();

        Toastr::error('Subscriber Successfully Deleted','Success');
        return redirect()->back();
    }

}
