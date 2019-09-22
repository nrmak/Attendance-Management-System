
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<!DOCTYPE HTML>
<html>
<head>
<title></title>
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
        <a class="nav-link" href="adminstudent.jsp">Back</a>
      </li>
      </ul>
      </div>
</nav>
<div class="container">
<br/>
<div class="alert alert-info">
<h3 align="center">List of Students</h3>
</div><br/>
<div>
<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Roll</th>
					<th scope="col">Name</th>
				</tr>
			</thead>
<%
Connection conn = null; 
Statement stmt= null;
ResultSet rs=null;
int bid=0;
String branch=request.getParameter("branch");
String sem=request.getParameter("semester");



try {
    String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    conn = DriverManager.getConnection(connectionURL, "root", "root");
    stmt=conn.createStatement();
    rs=stmt.executeQuery("select bid from branch where branch='" + branch + "' and sem='" + sem + "'");
    if(rs.next())
    {
    	bid=Integer.parseInt(rs.getString(1));
        //System.out.println(bid);  
    
    rs=stmt.executeQuery("select * from student where bid="+ bid);
    while(rs.next())
    {
    
        out.println("<tr>");
        out.println("<td>"+rs.getString("roll")+"</td>"); 
        out.println("<td>"+rs.getString("name")+"</td>");
        out.println("</tr>");
     }
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