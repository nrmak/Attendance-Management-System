
<!DOCTYPE html >
<html>
<head>
<title>Admin Page...</title>
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
<body>
<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Attendance Management System</a>
  <div>
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item">
        <a class="nav-link" href="adminlogout.jsp">Logout</a>
      </li>
      </ul>
      </div>
</nav>
<div class="container">
<br/>
  <div class="alert alert-success" role="alert">
 <h3 align="center">Welcome Admin!</h3>
 </div>

 		
<div>

<%
   // out.println("You Are Welcome");
   /// out.print("<br/>");
     String admin= (String) session.getAttribute("facultyname");
    //out.println(admin);
%>
	<br/><br/>
	<div class="container">
<div class="row justify-content-md-center">

<div class="col-md-auto">
	<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups" >
	 <div class="btn-group mr-2" role="group" aria-label="First group">
		   <a href="adminfaculty.jsp" class="btn btn-info btn-lg active" role="button" aria-pressed="true">Faculty Panel</a>
			<a href="adminstudent.jsp" class="btn btn-info btn-lg active" role="button" aria-pressed="true">Student Panel</a>
			<a href="adminsubject.jsp" class="btn btn-info btn-lg active" role="button" aria-pressed="true">Subject Panel</a>
			<a href="viewdailyattendencepage.jsp" class="btn btn-info btn-lg active" role="button" aria-pressed="true">View Attendance</a>
           </div>
     </div>
     </div>
     </div>
</div>
</div>
</div>

<br/>

</body>
</html>

