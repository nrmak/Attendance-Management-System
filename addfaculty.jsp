<!Doctype html>
<html>
<head>
<title>Add New Faculty
</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance Management System</title>
          <link rel="stylesheet" href="stylesheet.css"  type="text/css" >
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
                      <style>
body {
  background-image: url("idea3.jpg");
    background-size: auto;
}
</style>   
    </head>
<body style="background-color:#f0f5f5;">
<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Attendance Management System</a>

  <div>
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item">
        <a class="nav-link" href="adminfaculty.jsp">Back</a>
      </li>
      </ul>
      </div>
</nav><br/>
<div class="container">
   <div class="alert alert-primary" role="alert">
   <h2 align="center">Add new faculty details</h2>
   </div>
   <br/>
<div class="row justify-content-md-center">

<div class="col-md-auto">


<div class="card " style="background-color:#ffffff;" >
<div class="card-header"  align="center">
    <b>Register</b>
  </div>
	
	<div class="card-body">
  <h3><i>Faculty Registration</i></h3> 
  <form method="post" action="adminaddfaculty.jsp">
  <i>Please Enter Unique/Valid Faculty ID Only</i><br/><br/><br/>
  <label>Faculty Name</label> <input type="text" name="facultyname" class="form-control"><br/>
  <label>Faculty Password </label> <input type="password" name="fpassword"  class="form-control"><br/>
 
<input type="submit" name="submit" value="Submit"   class="w3-btn w3-block w3-teal"> 

</form>
</div>
</div>
</div>
</div>
</div></body>
</html>