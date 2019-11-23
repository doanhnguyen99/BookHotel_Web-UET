<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class publicPage extends Controller
{
    public function about(){
    	return view('page.about');
    }
    public function login() {
    	return view('page.login');
	}
	public function booking() {
    	return view('page.booking');
	}
	public function register() {
    	return view('page.register');
	}
	public function index() {
    	return view('page.index');
	}
	public function blog() {
    	return view('page.blog');
	}
	public function room() {
    	return view('page.room');
	}

}
