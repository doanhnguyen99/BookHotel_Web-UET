@extends('master')
@section('content')
<div class="container-fluid"id="primary"><!--Primary Id-->
  <center><h1 style="background-color:#ed2553;border-radius:50px;font-family: 'Baloo Bhai', cursive;box-shadow:5px 5px 9px blue;text-shadow:2px 2px#000;display:inline-block;">@yield('title')</h1></center><br>
  <div class="container">
    @yield('option')
 </div>
</div>
@endsection
