<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
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
        <a class="nav-link" href="adminstudent.jsp">Back</a>
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
  
     
    String branch=(String)session.getAttribute("branch");
    String semester=(String)session.getAttribute("semester");
   System.out.println(branch);System.out.println(semester);
    String[] roll=request.getParameterValues("roll");    
    String[] name= request.getParameterValues("name");
   //  for(int i=0;i<2;i++)
   // {
   // 	out.println(roll[i]);
   // 	out.println(name[i]);
   // } 
   // out.println(branch1);
   // out.println(batch1);
    
   
   
   //out.println(roll1);
   //    out.println(str);
   String str=(String)session.getAttribute("howmany1");
   
  // out.println(count);
   Connection conn = null; 
    Statement stmt= null;
    ResultSet rs=null;
    int bid=0;

 try {
	    Integer result=(Integer.parseInt(str));
	    Integer sem1=(Integer.parseInt(semester));
        String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        conn = DriverManager.getConnection(connectionURL, "root", "root");
        stmt=conn.createStatement();
        rs=stmt.executeQuery("select bid from branch where branch='" + branch + "' and sem='" + sem1 + "'");
        if(rs.next())
        {
        	bid=Integer.parseInt(rs.getString(1));
            //System.out.println(bid);  
        }
        else
        {
        	System.out.println("Nai Hai");
        }
     // System.out.println("connected");  
    PreparedStatement ps=conn.prepareStatement("insert into student(roll,name,bid) values(?,?,?)");
    for(int i=0;i<result;i++)
    {
    	 //   ps.setInt(1); 
    	    ps.setString(1,roll[i]); 
    	    ps.setString(2,name[i]); 
    	    ps.setInt(3,bid); 
    	    ps.executeUpdate();  
    }
  
   
    }
    catch(Exception e)
    {
    out.println("Error:"+e.getMessage());
    }   
 
%>
</div>

    </body>
</html>
    