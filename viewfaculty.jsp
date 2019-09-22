
	

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Admin Page...</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="stylesheet.css"  type="text/css" >
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
     
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
<div class="alert alert-info">
<h3 align="center">List of Faculty</h3>
</div><br/>
<div>
<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Password</th>
				</tr>
			</thead>	
			
<%
Connection conn = null; 
Statement stmt= null;
ResultSet rs=null;
String password=null;
String name=null;


try {
    String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    conn = DriverManager.getConnection(connectionURL, "root", "root");
    stmt=conn.createStatement();
    rs=stmt.executeQuery("select * from facultylogin order by id");
    rs.next();
    while(rs.next())
    {
    	name=rs.getString("name");
        password=rs.getString("password");
        out.println("<tr>");
        out.println("<td>"+name+"</td>");
        out.println("<td>"+password+"</td>");
        out.println("</tr>");
     }
}
catch (Exception exe)
{
	exe.printStackTrace();
}
%>
</table>
</div>
</div>
</body>
</html>
