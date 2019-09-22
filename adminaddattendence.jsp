<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="stylesheet.css"  type="text/css" >
        <title></title>
                       <style>
body {
  background-image: url("idea3.jpg");
    background-size: auto;
}
</style>
    </head>
    <body>
    <div align="center" class="w3-container w3-teal">
	<h1 align="center">Online Attendance Management System</h1>
   </div>
   <br/><br/><br/><br/><br/><br/><br/><br/>
   <h3 style="text-align:  center; text-decoration: none;">
            <a href="Home.jsp" style="border: 1pt solid #333;">Submitted to Database.. Press Here to Continue</a>
        </h3>
 <%
 String[] str=(String[])session.getAttribute("attendcopy");
 Float[] temp=new Float[2];
 String total_=(String)session.getAttribute("clas");
String branch=(String)session.getAttribute("branc");
 	//out.println(branch);
   
  
    Connection conn = null; 
    Statement stmt= null;
    ResultSet rs=null;
    String[] roll=new String[2];
    String[] name=new String[2];

 try {
		Integer tclasses=Integer.valueOf(total_);
	 for(int xx=0;xx<2;xx++)
		{
			temp[xx]=Float.parseFloat(str[xx]);
			//out.println(temp[xx]);
			temp[xx]=(temp[xx]/tclasses)*100;
			
		}  
	   //String name= request.getParameterValues("names");
 
	     	
 	String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    conn = DriverManager.getConnection(connectionURL, "root", "root");
    stmt=conn.createStatement();
    rs=stmt.executeQuery("select student.roll,student.name from student WHERE branch= '"+ branch +"'"); 
  	int i=0;
   while(rs.next() && i<2)
    { 
    	roll[i]=rs.getString("roll");
        name[i]=rs.getString("name");
        i++;
     }
   conn.close();
   
   /* for(int y=0;y<2;y++)
   {
	   out.println(roll[y]);
	   out.println(name[y]);
	   out.println(temp[y]);
   } */
      conn = DriverManager.getConnection(connectionURL, "root", "root");
  
     stmt=conn.createStatement();
    PreparedStatement ps=conn.prepareStatement("insert into attendence (id,roll,name,sub1) values(?,?,?,?)");
    for(int x=0;x<2;x++)
    {
    	    ps.setString(1,null); 
    	    ps.setString(2,roll[x]); 
    	    ps.setString(3,name[x]); 
    	    ps.setString(4,temp[x].toString());  
    	    ps.executeUpdate();  
    } 
  
    
    //response.sendRedirect("addstudent1.jsp");
    } 
    catch(Exception e)
    {
    out.println("Error:"+e.getMessage());
    }   

%>
  </body>
</html>
    