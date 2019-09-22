<!Doctype html>
<html>
<head>
<title>Delete Faculty
</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</nav>
<div class="container">
<br/>
<div class="alert alert-danger" role="alert">
   <h2 align="center">Delete Faculty</h2>
   </div>
   <br/><div class="container">
<div class="row justify-content-md-center">

<div class="col-md-auto">


<div class="card " style="background-color:#ffffff;" >
<div class="card-header"  align="center">
    <b>Please fill the details correctly..!</b>
  </div>
	<br/>
	<div class="card-body"> <br/>
<form method="post" action="admindeletefaculty.jsp">
    <label>Faculty Name</label> <input type="text" name="facultyname" class="form-control" ><br/>
<input type="submit" name="submit" value="Remove"  class="w3-btn w3-block w3-teal"/>
</form>
</div>
</div>
</div>
</div>
</div>
</div>

</body>
</html>