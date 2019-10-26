@extends('master')
@section('content')
<div class="box">
        <div class="box-in-box">
            <form action="{{route('dangnhap')}}" id="formlogin" method="post">
                {{csrf_field()}}
                <h2>Login</h2>
                <div class="inputBox">
                    <input type="text" name="username" required>
                    <label for="">Username</label>
                </div>
                <div class="inputBox">
                    <input type="password" name="password" required>
                    <label for="">Pasword</label>
                </div>
                <button type="submit">Login</button>
                <a class="btn btn-block" id="forgetpass" onclick="changeForgetPass()" >Forget your accout</a>
                <div>
                    <span>Don't have account? </span>
                    <a href="register">Sign Up</a>
                </div>
            </form>
            <form action="" id="formforgetpass" hidden="">
                <h2>Forget Password</h2>
                <div class="inputBox">
                    <input type="email" name="email" required>
                    <label for="">Email</label>
                </div>
                <button type="submit">Get Password</button>
            </form>
        </div>
    </div>

@endsection
