@extends('doctor.layout.main')


@section('Name')
   Prescription/EditPrescription
@endsection

@section('Iteams')
               


<!-- Add Department -->
                  <div class="col-lg-6" style="margin-left: 260px;">
                      <form method="post" enctype="multipart/form-data">
                        @csrf
                        <h2  class="text-center">Update Prescription Information</h2>
                        <hr>
                        
                        <label>Patient Name</label>
   								        <h5>{{$user['name']}}</h5>        
   							<br>		

                        <label>Problem Details</label>
                        <textarea class="form-control" rows="4" cols="100" name="problem" placeholder="Enter You Problem Details">{{$user['problem']}}</textarea>
                         <br>                      
                           
                        <label>Prescription</label>
                        <textarea class="form-control" rows="4" cols="100" name="prescrip">{{$user['prescrip']}}</textarea>
                         <br>     

                         <input type="submit" class="btn btn-primary" name="submit" value="Submit">
   						 						    
   							      
   							    
                      </form>

                      <br>
								<br>
                         <div style="color: green;">
                           {{session('msg')}}
                         </div>
                        
                          <div style="color: red;">
                           {{session('msg2')}}
                         </div>
                  
								<div style="color: red;">

                                   @foreach($errors->all() as $err)
									{{$err}} <br>
								   @endforeach
                                </div>

                  </div>  
@endsection