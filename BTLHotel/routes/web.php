<?php
//public route
Route::get('/','publicPage@index');
Route::get('/about','publicPage@about');
Route::get('/booking_form','publicPage@booking');
Route::get('/login','publicPage@login')->name('login');
Route::get('/register','publicPage@register');
Route::get('/blog','publicPage@blog');
Route::get('/room','publicPage@room');
//route admin
Route::group(['prefix'=>'quanly','middleware'=>'adminLogin'],function(){
    Route::get('/', function() {
        return view('admin.dashboard');
    });
});
//route user
Route::group(['prefix'=>'user','middleware'=>'userLogin'],function(){
    Route::get('/profile', function() {
        return view('user.profileuser');
    });
});
//login hander,when login success, session setted with variable 'login'
Route::post('dangnhap','UserController@login')->name('dangnhap');
