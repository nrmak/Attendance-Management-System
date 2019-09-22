<!DOCTYPE HTML>
<html>
<head>

<title>add student
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
        <a class="nav-link" href="addstudent.jsp">Back</a>
      </li>
      </ul>
      </div>
</nav><br/>
<div class="container">

   <div class="alert alert-info">
   <h2 align="center">Add Student Details</h2>
   </div>
   <br/>

   

<%
try{
     String branch= request.getParameter("branch");    
     String semester= request.getParameter("semester");
     String howmany_= request.getParameter("howmany");   
      session.setAttribute("howmany1",howmany_);
      session.setAttribute("branch",branch);
      session.setAttribute("semester",semester);
       Integer result=Integer.parseInt((howmany_));
  out.println("<form method='post' action='adminaddstudent1.jsp'>");  
  for(int i=0;i<result;i++)
  {   
	  out.println("<div class='row'>");
	  out.println("<div class='col'>");
	  out.println(" <label>Roll Number</label>");
	  out.println("<input type='text' name='roll'  class='form-control '>");
	  out.println("</div>");
	  out.println("<div class='col'>");
	  out.println(" <label>Name</label>");
	  out.println("<input type='text' name='name'  class='form-control'>"); 
	  out.println("</div>");
	  out.println("</div>");
  }
   out.println("<br/>");out.println("<br/>");
   out.println("<input type='submit' value='Submit' name='submit' class='w3-btn w3-block w3-teal'>");
   out.println("</form>");
}
catch(Exception exe)
{
	exe.printStackTrace();
}
%>

</div>
<br/>
<br/>


</body>


</html>