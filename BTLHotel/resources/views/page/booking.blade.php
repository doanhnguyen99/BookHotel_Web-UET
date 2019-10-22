@extends('master')
@section('content')

<div class="container">
        <div class="row" >
            <div class="booking-form col-sm-8 push-sm-4">
                <div class="formheader text-xs-center" style="color: white;">
                    <h1>Your Booking Form</h1>
                </div>
                <form class="form-group" method="post">
                        <div class="form-group">
                            <span style="position: absolute;padding-left: 20px; color: orange;">Name</span>
                            <input type="text" class="form-control" name="exampleInputName2" id="exampleInputName2" placeholder="Jane Doe" style="height: 60px; padding-top: 20px; padding-left: 20px;border-radius: 30px;">
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail2" style="position: absolute;padding-left: 20px; color: orange;">Email</label>
                                    <input type="email" class="form-control" name="exampleInputEmail2" id="exampleInputEmail2" placeholder="abcxyx@gmail.com" style="height: 60px; padding-top: 20px;padding-left: 20px; border-radius: 30px;">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail2" style="position: absolute;padding-left: 20px; color: orange;">Telephone</label>
                                    <input type="number" class="form-control" name="exampleInputEmail2" id="exampleInputEmail2" placeholder="0123456789" style="height: 60px; padding-top: 20px;padding-left: 20px; border-radius: 30px;">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <span style="position: absolute;padding-left: 20px; color: orange;">Address</span>
                            <input type="text" class="form-control" name="exampleInputName2" id="exampleInputName2" placeholder="City,Street" style="height: 60px; padding-top: 20px; padding-left: 20px;border-radius: 30px;">
                        </div>
                        <div class="form-group">
                            <span style="position: absolute;padding-left: 20px; color: orange;">Country</span>
                            <input type="text" class="form-control" name="exampleInputName2" id="exampleInputName2" placeholder="Conntry,City" style="height: 60px; padding-top: 20px; padding-left: 20px;border-radius: 30px;">
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <span style="position: absolute;padding-left: 20px; color: orange;">Room Type</span>
                                    <select class="form-control" style="height: 60px; padding-top: 20px; padding-left: 15px;border-radius: 30px; ">
                                        <option selected value hidden>Select Room Type</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <span style="position: absolute;padding-left: 20px; color: orange;">Occupancy</span>
                                    <select class="form-control" style="height: 60px; padding-top: 20px; padding-left: 15px;border-radius: 30px; ">
                                        <option selected value hidden>Choose Occupancy</option>
                                        <option value="Single">Single</option>
                                        <option value="Twin">Twin</option>
                                        <option value="Dubble">Dubble</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <span style="position: absolute;padding-left: 20px; color: orange;">check In Date</span>
                                    <input type="Date" class="form-control" name="exampleInputName2" id="exampleInputName2" placeholder="Conntry,City" style="height: 60px; padding-top: 20px; padding-left: 20px;border-radius: 30px;">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <span style="position: absolute;padding-left: 20px; color: orange;">Check In Time:</span>
                                    <input type="Time" class="form-control" name="exampleInputName2" id="exampleInputName2" placeholder="Conntry,City" style="height: 60px; padding-top: 20px; padding-left: 20px;border-radius: 30px;">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <span style="position: absolute;padding-left: 20px; color: orange;">Check Out Date :</span>
                                    <input type="Date" class="form-control" name="exampleInputName2" id="exampleInputName2" placeholder="Conntry,City" style="height: 60px; padding-top: 20px; padding-left: 20px;border-radius: 30px;">
                                </div>
                            </div>
                        </div>

                    <button type="submit" class="form-control btn btn-warning">Send invitation</button>
                </form>
            </div>
        </div>
    </div>
@endsection
