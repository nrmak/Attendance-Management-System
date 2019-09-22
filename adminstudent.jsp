<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add student</title>
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
        <a class="nav-link" href="admin.jsp">Home</a>
      </li>
      </ul>
      </div>
</nav>
<div class="container">
<br/>
<div class="alert alert-success" role="alert">
   <h2 align="center">Student Panel</h2>
   </div>
   <br/>

 <div class="row justify-content-md-center">

<div class="col-md-auto">
	<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups" >
	 <div class="btn-group mr-2" role="group" aria-label="First group">
        <a href="addstudent.jsp"  class="btn btn-info btn-lg active" role="button" aria-pressed="true">Add Student</a>
        <a href="deletestudentpage.jsp"  class="btn btn-info btn-lg active" role="button" aria-pressed="true">Delete Student</a>
        <a href="viewstudentpage.jsp"  class="btn btn-info btn-lg active" role="button" aria-pressed="true">View Student</a>
        
    </div>
    </div>
    </div>
    </div>
    

<br/><br/><br/>

</div>
</body>
</html>