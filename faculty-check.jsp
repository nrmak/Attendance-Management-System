
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
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
</nav><br/>
<div class="container">
        
        <div class="alert alert-dark" role="alert">
        <h2 style="text-align:  center;">
               Incorrect Authentication
        </h2>
        </div>
         <br/>
        <h3 style="text-align:  center; text-decoration: none;">
            <a href="faculty-login.jsp" style="border: 1pt solid #333;">Please Re-login to Continue...</a>
        </h3>
</div>
  <%
String u=null;
String p=null;
String admin="admin";
String facultyname=request.getParameter("facultyname");
String fpassword=request.getParameter("fpassword");  

Connection conn = null; 
Statement stmt= null;
ResultSet rs=null;

try {
    String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    conn = DriverManager.getConnection(connectionURL, "root", "root");
    stmt=conn.createStatement();
    rs=stmt.executeQuery("select * from facultylogin where name='" + facultyname + "' and password='" + fpassword + "'");
    while(rs.next())
    {
     	u=rs.getString(2);
    	p=rs.getString(3);
    }
   
   if(u.equals(facultyname) && p.equals(fpassword))
   {
	   if(u.equals(admin))
	   {
		   session.setAttribute("facultyname",facultyname);
	       out.println("welcome " + facultyname);
	      //out.println(userid);
	      response.sendRedirect("admin.jsp");
	   }
	   else
	   {
		   session.setAttribute("facultyname",facultyname);
	       out.println("welcome " + facultyname);
	      //out.println(userid);
	      response.sendRedirect("display-new.jsp");
	   }
	   
   }
   else
   {
	   out.println("Invalid password try again");
       conn.close();
       out.println("Disconnected from database");
   }
  
}
catch (Exception exe)
{
	exe.printStackTrace();
}
%>
</body> 
</html>



