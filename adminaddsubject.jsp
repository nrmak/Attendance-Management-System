<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <link rel="stylesheet" href="stylesheet.css"  type="text/css" >
        <title></title>
    </head>
    <body>
    <div align="center" class="w3-container w3-teal">
	<h1>Online Attendance Management System</h1>
   </div>
   <br/>
<div  class="w3-container">
   <div class="w3-container w3-green">
   <h2>Add new faculty details</h2>
   </div>
   <br/>

			 <a href="admin.jsp" class="w3-btn w3-white w3-border w3-border-red w3-round-large">Home</a>
            <a href="adminlogout.jsp" class="w3-btn w3-white w3-border w3-border-red w3-round-large" style="float:right">Logout</a>  

<br/><br/><br/><br/>

        <h3 style="text-align:  center; text-decoration: none;">
            <a style="border: 1pt solid #333;">Successfully Added.</a>
        </h3>
 <%
    String subject6=null;
    String branch=request.getParameter("branch").toLowerCase(); 
    String sem=request.getParameter("semester").toLowerCase();   
   System.out.println(sem); 
   System.out.println(branch); 
    String subject1= request.getParameter("subject1");
    String subject2= request.getParameter("subject2");
    String subject3= request.getParameter("subject3");
    String subject4= request.getParameter("subject4");
    String subject5= request.getParameter("subject5");
    subject6= request.getParameter("subject6");

   Connection conn = null; 
    Statement stmt= null;
    ResultSet rs=null;
    int bid=0;

 try {
	    Integer semester=Integer.valueOf(sem);
        String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        conn = DriverManager.getConnection(connectionURL, "root", "root");
        stmt=conn.createStatement();
        rs=stmt.executeQuery("select bid from branch where branch='" + branch + "' and sem='" + sem + "'");
        if(rs.next())
        {
        	bid=Integer.parseInt(rs.getString(1));
            //System.out.println(bid);  
        }
        else
        {
        	System.out.println("Nai Hai");
        }
        
        
        PreparedStatement ps=conn.prepareStatement("insert into subject values(?,?,?,?,?,?,?)");
            ps.setInt(1,bid); 
    	    ps.setString(2,subject1);
    	    ps.setString(3,subject2);
    	    ps.setString(4,subject3);
    	    ps.setString(5,subject4);
    	    ps.setString(6,subject5); 
    	    ps.setString(7,subject6); 
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
    