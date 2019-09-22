<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <a class="nav-link" href="Home.jsp">Home</a>
      </li>
      </ul>
      </div>
</nav><br/>
<div class="container">
<div class="row justify-content-md-center">

<div class="col-md-auto">


<div class="card " style="background-color:#ffffff;" >
<div class="card-header"  align="center">
    <b>Login</b>
  </div>
	<br/><br/>
	<div class="card-body">
    <form  method="post" action="faculty-check.jsp">
     <div class="form-group">
    <label>Username </label> <input type="text" name="facultyname" class="form-control"  placeholder="Enter username"required>
    <small id="emailHelp" class="form-text text-muted">We'll never share your details with anyone else.</small>
  </div>
   <div class="form-group">
    <label>Password </label> <input type="password" name="fpassword"  class="form-control" id="exampleInputPassword1" placeholder="Password" required>
  	 </div>
          <input type="submit" name="submit" value="Submit" class="w3-btn w3-block w3-teal"/>
    </form>
    </div>
    <br/>
    </div>
    <div class="col "></div>
    </div>
</div>
</div>
 </body>
</html>
