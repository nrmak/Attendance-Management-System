<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
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
        <a class="nav-link" href="adminfaculty.jsp">Back</a>
      </li>
      </ul>
      </div>
</nav><br/>
<div class="container">
   <div class="alert alert-success">
   <h2 align="center">Successfully Added</h2>
   </div>
   <br/>
<br/><br/><br/><br/>

        <h3 style="text-align:  center; text-decoration: none;">
            <a href="admin.jsp" style="border: 1pt solid #333;">Back to home page.</a>
        </h3>
    


 <%
    String facultyname = request.getParameter("facultyname");    
    String fpassword = request.getParameter("fpassword");
   // out.println(facultyname);out.println(fpassword);
    Connection conn = null; 
    Statement stmt= null;
    ResultSet rs=null;

 try {
        String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        conn = DriverManager.getConnection(connectionURL, "root", "root");
        stmt=conn.createStatement();
     // System.out.println("connected");  
    PreparedStatement ps=conn.prepareStatement("insert into facultylogin (id,name,password) values(?,?,?)");
    ps.setString(1,null);
    ps.setString(2,facultyname); 
    ps.setString(3,fpassword);  
    ps.executeUpdate();  
    }
    catch(Exception e)
    {
    out.println("Error:"+e.getMessage());
    }                 
%>
</div>
    </body>
</html>
    