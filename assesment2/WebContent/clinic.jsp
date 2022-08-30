<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>clinic</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	.banner-backgrround{
clip-path: polygon(30% 0%, 100% 0, 100% 88%, 75% 84%, 53% 91%, 28% 95%, 0 90%, 0 0);	}
	
	</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed">
  <a class="navbar-brand" href="#">Clinic Managment System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="#">Login</a>
      <a class="nav-item nav-link" href="#"></a>
     
    </div>
  </div>
</nav>
<div class="container-fluid m-0 p-0">
		<div class="jumbotron primary-baground text-white bg-primary banner-backgrround">
			<div class="container">
				<h1 class="display-3 ">Welcome to Clinic Managment</h1>
				<p>Programming is the process of creating a set 
				of instructions that tell a computer how to perform a 
				task. Programming can be done using a variety of computer programming languages, such as JavaScript, Python, and C++. Created by Pamela Fox</p>
			
			<p>If you’re a newbie to the world of coding and thinking about learning how to code? Are you looking for the best programming blogs to sharpen your coding skills? You’re in the right place.
             Here’s a list of some of the best programming and web development blogs that you can follow to improve your coding skills or learn better programming. Are you curious to find them out? Let’ find out the list of all the best programming blogs for 2022.</p>
			<button class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span>Start it,s</button>
						<a href="login.jsp"class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle-o fa-spin"></span>Login</a>
			
			</div>
		</div>
	</div>
<div class="container">
<div class="row">
<div class="col-md-3">
<div class="card">
  <div class="card-body">
    <img class="card-img-top" src="add.png" alt="Card image cap">
    <h5 class="card-title">Add Petiont</h5>
  
    <a href="" class=" btn bg-primary text-white"data-toggle="modal" data-target="#exampleModal">Add Petiont</a>
  </div>
</div>
</div>
<div class="col-md-3">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Update Petiont</h5>
   <img class="card-img-top" src="update.png" alt="Card image cap">
    <a href="#" class="btn bg-primary text-white">Update Petiont</a>
  </div>
</div>
</div>
<div class="col-md-3">
<div class="card">
  <div class="card-body">
   <img class="card-img-top" src="view.png" alt="Card image cap">
    <h5 class="card-title">View Petionts</h5>
    
    <a href="view.jsp" class=" btn bg-primary text-white">View Petionts</a>
  </div>
</div>
</div>

</div>
</div>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add petiont</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="form_submit" action="PetiontServlet"method="POST">
         <div id="error_msg" ></div>
         <table class="table">
                                  
         <tr>
         <td>Petiont ID</td>
         <td><input type="text"class="form-control" name="p_id" required></td>
         </tr>
          <tr>
         <td>Petiont Name</td>
         <td><input type="text"class="form-control" name="p_name" required></td>
         </tr>
          <tr>
         <td>Blood Group</td>
         <td><input type="text"class="form-control" name="p_date" required></td>
         </tr>
          <tr>
          <tr>
         <td>Petiont Age</td>
         <td><input type="number"form-control" name="p_age" required></td>
         </tr>
         </table>
          <div class="modal-footer">
         <button  id="form_button" type="submit" class="btn btn-primary">Save</button>
          <button type="button"  class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </div>
          </form>
      </div>
      
    </div>
  </div>
</div>



<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
 
         $(document).ready(function(){
        	 console.log("done");
        	 $("#form_submit").on("submit",function(event){
        		 
        		 event.preventDefault();
        		 $('#error_msg').html('     ');
        		 console.log("click buton");
        		 	var f=$(this).serialize(); 
        		 	console.log(f);
        		 $.ajax({
        			 url:'PetiontServlet',
        			type:'POST',
        			data: f,
        			 
        			 success:function(data,textStatus,jqXHR){
        				 
        				 console.log("Submited buton");
        				 console.log(data);
        				
        				 if(data==1)
     			 		{
     			 			     			 			 
     			 			$('#form_submit').trigger("reset");
     			 			$('#refresh-section').load (location.href + "#refresh-section");
     			 			$('#exampleModal').modal('hide'); 
     			 		}
     			 		else if (data==2)
    			 			{
    			 			
     			 			$('#error_msg').html('DUPLICATE Petiont ');
     			 	
     			 			$("#error_msg").addClass('bg-danger text-white');
    			 			}
     			 		else if(data==3)
    			 			{
    			 				$('#error_msg').html('DB ERROR , TRY AGAIN');
    			 				$('#error_msg').addClass('bg-danger text-white');
    			 				
    			 			}
        			 },
        			 
        		 error:function(jqXHR,textStatus,errorThrown){
        			 
        			 console.log("not Submited buton");
        			 
        		 },
        			
        		 })
        		
        		 
        	 }) 
        	 
        	 
         })
        	 $("#text").click(function(){
        		 $('#error_msg').html('  ');
        		 $('#error_msg').addClass('text-white');
        		 $('#form_submit').trigger("reset");
        	 })
        	 
        	 
        	 
         
              </script>


</body>
</html>