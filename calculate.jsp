
	

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<!DOCTYPE HTML>
<html>
<head>
<title></title>
<link rel="stylesheet" href="stylesheet.css"  type="text/css" >
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
         
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
@page { size: auto;  margin: 0mm; }
</style>
</head>
<body >
<nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Attendance Management System</a>
  <div>
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item">
        <a class="nav-link" href="viewdailyattendencepage.jsp">Back</a>
      </li>
      </ul>
      </div>
</nav>
   <br/>
<div class="container">

         <a href="admin.jsp" class="btn btn-light" style="float:right"
       onclick="window.print();" target="_blank" style="cursor:pointer;">Print</a>
             <br/>
              <br/>		 
			
<%
String branch= (String)session.getAttribute("branch");    
String semester= (String)session.getAttribute("sem");
System.out.println(branch);System.out.println(semester);
Connection conn = null; 
Statement stmt= null;
ResultSet rs=null;
String roll=null;
String name=null;
String sub1=null;
int bid=0;int sid[]=new int[100];double total=0;
String sub2=null;String sub3=null;String sub4=null;String sub5=null;String sub6=null;

try {
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
    rs=stmt.executeQuery("select sid from student where bid='"+ bid +"'");
    int i=0,count=0;
   while(rs.next())
    {
	    
    	sid[i]=Integer.parseInt(rs.getString(1));
    	i++;count++;
    }
   /* else
   {
	   System.out.println("sid nahi h");  
   } */
   rs=stmt.executeQuery("select * from subject where bid='" + bid + "'");
   if(rs.next())
   {
	   sub1=rs.getString("sub1");
       sub2=rs.getString("sub2"); 
       sub3=rs.getString("sub3"); 
       sub4=rs.getString("sub4"); 
       sub5=rs.getString("sub5"); 
       sub6=rs.getString("sub6"); 
    //   out.println("Hello"+sub5+ "ass");  
    //   out.println("Hello"+sub6+ "ass");  
   }
   else
   {
   	System.out.println(" Subject Nai Hai");
   }
   out.println("<table  class='table table-striped'>");
   out.println("<thead>");
	out.println("<tr>");	
	out.println("<th scope='col'>Roll</th>");	
	out.println("<th scope='col'>Name</th>");		
	out.println("<th scope='col'>"+sub1+"</th>");			
	out.println("<th scope='col'>"+sub2+"</th>");			
	out.println("<th scope='col'>"+sub3+"</th>");
	out.println("<th scope='col'>"+sub4+"</th>");			
	out.println("<th scope='col'>"+sub5+"</th>");			
	 if(sub6.equals("N/A"))
	    {
	    	System.out.println(" if k andar");
	    }
	    else
	    {
	    	out.println("<th scope='col'>"+sub6+"</th>");	
	    }
	 out.println("<th scope='col'>Total</th>");
	   out.println("</tr>");
	   out.println("</thead>");
	   for(i=0;i<count;i++)
	   {
		   rs=stmt.executeQuery("select roll,name from student where sid='" + sid[i] + "'");
		   if(rs.next())
		   {
			   roll=rs.getString("roll");
		       name=rs.getString("name");
		       out.println("<tr>");
		       out.println("<td>"+roll+"</td>");
		       out.println("<td>"+name+"</td>");
		   //    System.out.println(roll+name);  
		   }
		   else
		   {
		   	System.out.println(" Name Nai Hai");
		   }
	 
	   
	
    rs=stmt.executeQuery("select * from dattendence where sid='" + sid[i] + "'");
	   if(rs.next())
	   {
		   //System.out.println(Double.parseDouble(rs.getString("tsub1"))/Double.parseDouble(rs.getString("sub1")));
		    out.println("<td>"+Math.round(((Double.parseDouble(rs.getString("sub1"))/Double.parseDouble(rs.getString("tsub1")))*100)* 100.0) / 100.0+"</td>");
		    out.println("<td>"+Math.round(((Double.parseDouble(rs.getString("sub2"))/Double.parseDouble(rs.getString("tsub2")))*100)* 100.0) / 100.0+"</td>");
		    out.println("<td>"+Math.round(((Double.parseDouble(rs.getString("sub3"))/Double.parseDouble(rs.getString("tsub3")))*100)* 100.0) / 100.0+"</td>");
		    out.println("<td>"+Math.round(((Double.parseDouble(rs.getString("sub4"))/Double.parseDouble(rs.getString("tsub4")))*100)* 100.0) / 100.0+"</td>");
		    out.println("<td>"+Math.round(((Double.parseDouble(rs.getString("sub5"))/Double.parseDouble(rs.getString("tsub5")))*100)* 100.0) / 100.0+"</td>");
		    if(sub6.equals("N/A"))
		    {
		    	total=(Double.parseDouble(rs.getString("sub1"))/Double.parseDouble(rs.getString("tsub1")))*100+(Double.parseDouble(rs.getString("sub2"))/Double.parseDouble(rs.getString("tsub2")))*100+
                      (Double.parseDouble(rs.getString("sub3"))/Double.parseDouble(rs.getString("tsub3")))*100+(Double.parseDouble(rs.getString("sub4"))/Double.parseDouble(rs.getString("tsub4")))*100+
                      (Double.parseDouble(rs.getString("sub5"))/Double.parseDouble(rs.getString("tsub5")))*100;
		    	total/=5;
		    	out.println("<td>"+Math.round(total * 100.0) / 100.0+"</td>");
		    }
		    else
		    {
		    	total=(Double.parseDouble(rs.getString("sub1"))/Double.parseDouble(rs.getString("tsub1")))*100+(Double.parseDouble(rs.getString("sub2"))/Double.parseDouble(rs.getString("tsub2")))*100+
	                      (Double.parseDouble(rs.getString("sub3"))/Double.parseDouble(rs.getString("tsub3")))*100+(Double.parseDouble(rs.getString("sub4"))/Double.parseDouble(rs.getString("tsub4")))*100+
	                      (Double.parseDouble(rs.getString("sub5"))/Double.parseDouble(rs.getString("tsub5")))*100+(Double.parseDouble(rs.getString("sub6"))/Double.parseDouble(rs.getString("tsub6")))*100;
			    	total/=6;
		    	out.println("<td>"+Math.round(((Double.parseDouble(rs.getString("sub6"))/Double.parseDouble(rs.getString("tsub6")))*100)* 100.0) / 100.0+"</td>");
		    	out.println("<td>"+Math.round(total * 100.0) / 100.0+"</td>");
		    }  
	   }
	   else
	   {
	   	System.out.println(" Name Nai Hai");
	   }
	   }
          out.println("</tr>"); 
          out.println("</table>");   
}
catch (Exception exe)
{
	exe.printStackTrace();
}
%>

</div>
</body>
</html>
