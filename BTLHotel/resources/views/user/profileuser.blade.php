
@extends('master')
@section('content')
<div class="container-fluid"id="primary"><!--Primary Id-->
  <center><h1 style="background-color:#ed2553;border-radius:50px;font-family: 'Baloo Bhai', cursive;box-shadow:5px 5px 9px blue;text-shadow:2px 2px#000;display:inline-block;">User Profile</h1></center><br>
  <div class="container">
    <div class="row" style="display: block;">
     <form class="form-group" method="post">
       <div class="col-sm-6">
          <div class="form-group">
           <div class="row">
              <div class="control-label col-sm-4"><h4> Name :</h4></div>
                <div class="col-sm-8">
                 <input type="text" name="name" value=""class="form-control"/>
          </div>
        </div>
      </div>

      <div class="form-group">
           <div class="row">
              <div class="control-label col-sm-4"><h4>Email</h4></div>
                <div class="col-sm-8">
                 <input type="text" value=""class="form-control">
          </div>
        </div>
      </div>
      <div class="form-group">
           <div class="row">
              <div class="control-label col-sm-4"><h4>Password:</h4></div>
                <div class="col-sm-8">
                 <input type="text" name="pass" value=""class="form-control"/>
          </div>
        </div>
      </div>
      <div class="form-group">
           <div class="row">
              <div class="control-label col-sm-4"><h4>Mobile:</h4></div>
                <div class="col-sm-8">
                 <input type="text" name="mob" value=""class="form-control"/>
          </div>
        </div>
      </div>
      <div class="form-group">
           <div class="row">
              <div class="control-label col-sm-4"><h4>Address:</h4></div>
                <div class="col-sm-8">
                 <input type="text" name="add" value=""class="form-control"/>
          </div>
        </div>
      </div>
      <div class="form-group">
           <div class="row">
              <div class="control-label col-sm-4"><h4>Gender:</h4></div>
                <div class="col-sm-8" style="display: flex;">
                    <div class="radio">
                        <label>
                            <input type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                            Nam
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="exampleRadios" id="exampleRadios1" value="option1">
                            Nu
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="exampleRadios" id="exampleRadios1" value="option1" disabled>
                            Khac
                        </label>
                    </div>
             </div>
        </div>
      </div>

      <div class="form-group">
           <div class="row">
              <div class="control-label col-sm-5"></div>
                <div class="col-sm-7	">
                 <input type="submit" value="Update Profile" name="update" class="btn btn-primary"/>
          </div>
        </div>
      </div>

    </div>
<!--User Profile Update Query-->
        </form>
      </div>
   </div>
 </div>
@endsection
