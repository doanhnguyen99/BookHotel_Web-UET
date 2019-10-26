<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
class UserController extends Controller
{
	//user login
     public function login(Request $request){
    	$usename=$request['username'];
    	$password=$request['password'];
        $pass=DB::table('create_account')->where('name',$usename)->value('password');
        if($pass==$password){
            if(!Session::has('login')) Session::put('login','user');
            return redirect()->route('/user/profile');
        }else return redirect('login');
    }

}
