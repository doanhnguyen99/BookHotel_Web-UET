@extends('master')
@section('content')
     <center><h1 style="background-color:#ed2553;border-radius:50px;font-family: 'Baloo Bhai', cursive;box-shadow:5px 5px 9px blue;text-shadow:2px 2px#000;display:inline-block; margin-top: 50px;">ADMIN</h1></center><br>
      <div class="container-fluid" style="margin-top: 50px;">
        <div class="navbar-header">
         {{--  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> --}}
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
{{--           <a class="navbar-brand" href="#">Welcome</a> --}}
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="dashboard.php?option=admin_profile">Profile</a></li>
            <li><a href="logout.php">Logout</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3 sidebar" style="border-right-color: red;">
          <ul class="nav nav-sidebar" style="display: block; background-color: #80808029;">
            <li><a href="dashboard.php?option=update_password">Update Password</a></li>
            <li><a href="dashboard.php?option=feedback">Feedback</a></li>
            <li><a href="dashboard.php?option=rooms">Room</a></li>
            <li><a href="dashboard.php?option=booking_details">Booking Details</a></li>
      <li><a href="dashboard.php?option=user_registration">User Registration</a></li>
            <li><a href="dashboard.php?option=slider">Slider</a></li>
      {{-- <li><a href="#">Payment</a></li> --}}
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Setting <span class="caret"></span></a>
              <ul class="dropdown-menu">
                  <li><a href="#">Logo Update</a></li>
                  <li><a href="#">Address Update</a></li>
              </ul>
            </li>
          </div>
          <div class="col-md-9">
            <table class="table table-responsive table-inverse">
              <thead>
                <tr>
                  <th>Data</th>
                  <th><input type="text" class="form-control"></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Data</td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>Data</td>
                  <td><input type="text" class="form-control"></td>
                </tr>
                <tr>
                  <td>Data</td>
                  <td><input type="text" class="form-control"></td>
                </tr>
              </tbody>
            </table>
          </div>
          </div>
          </div>
          @endsection
