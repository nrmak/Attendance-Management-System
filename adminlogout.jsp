<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
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
       <a  class="nav-link" onclick="self.close()">Close</a></li>
      </ul>
      </div>
</nav>
<div class="container">

   <br/>
        <%
            request.getSession().invalidate();
        %>
        <div class="alert alert-success" role="alert">
 			<h3 align="center">You Are Successfully Logged Out</h3>
 		</div>
         <br/>
        <h3 style="text-align:  center; text-decoration: none;">
            <a href="faculty-login.jsp" style="border: 1pt solid #333;">Please Re-login to Continue...</a>
        </h3>
</div>
    </body>
</html>
