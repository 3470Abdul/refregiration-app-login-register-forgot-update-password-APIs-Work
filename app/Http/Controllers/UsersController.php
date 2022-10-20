<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function index(){
        $User = User::get();
        // dd($User);
        return view('Admin.Users.Users',compact('User'));
    }
}
