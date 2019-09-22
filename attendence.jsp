
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<!DOCTYPE HTML>
<html>
<head>
<title></title>
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
</nav>
<div class="container">
<div class="alert alert-info" role="alert">
 <h3 align="center">List of Students</h3>

 		
<div>
<% String sub=request.getParameter("sub");
session.setAttribute("sub",sub);
String total1=request.getParameter("cls");
System.out.println(total1);%>
<h5><i>Total number of classes <%out.println(total1); %></i></h5>
</div>
</div>
	<br/>	
<div>
<form method="post" action="finalattendence.jsp">
<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Roll</th>
					<th scope="col">Name</th>
					<th scope="col">Subject</th>
				   
				</tr>
			</thead>				
			
<%
String total=request.getParameter("cls");
System.out.println(total);
String branch=request.getParameter("branch");
String sem=request.getParameter("semester");
session.setAttribute("branc",branch);
session.setAttribute("clas",total);
Connection conn = null; 
Statement stmt= null;
ResultSet rs=null;
String roll=null;
String name=null;
int bid=0;int sid=0;

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
        session.setAttribute("bid",bid);
    }
    else
    {
    	//System.out.println("Nai Hai");
    }
    rs=stmt.executeQuery("select * from subject where bid="+ bid);
   // rs.first();
    if(rs.next()){
    	
    	String sub1=rs.getString("sub1");String sub2=rs.getString("sub2");String sub3=rs.getString("sub3");
    	String sub4=rs.getString("sub4");String sub5=rs.getString("sub5");String sub6=rs.getString("sub6");
    	if(sub6.equals("N/A"))
    	 { 
    		out.println("<div class='form-group'>"); 
    		out.println("<select name='branch' class='form-control' id='exampleFormControlSelect1'><option value='1'>"+sub1+"</option>  <option value='2'>"+sub2+"</option>  <option value='3'>"+sub3+"</option>  <option value='4'>"+sub4+"</option>  <option value='5'>"+sub5+"</option> </select> ");
            out.println("<br/>");
            out.println("</div>");
    	 }
    	else
    	{
    	out.println("<div class='form-group'>"); 
        out.println("<select name='branch' class='form-control' id='exampleFormControlSelect1'><option value='1'>"+sub1+"</option>  <option value='2'>"+sub2+"</option>  <option value='3'>"+sub3+"</option>  <option value='4'>"+sub4+"</option>  <option value='5'>"+sub5+"</option>  <option value='6'>"+sub6+"</option>  </select> ");
        out.println("<br/>");
        out.println("</div>");
    	}
    }
    else
    {
    	//out.println("Nahi huwa");
    }
   rs=stmt.executeQuery("select * from student WHERE bid= '"+ bid +"'"); 
    		
   while(rs.next())
    {
	    sid=rs.getInt("sid");
	    out.println("<input type='number' style='display:none' name='siddd' value="+sid+">");
    	roll=rs.getString("roll");
        name=rs.getString("name");
        out.println("<tr>");
        out.println("<td>"+roll+"</td>"); 
        out.println("<td>"+name+"</td>");
        out.println("<div class='form-group'>"); 
        out.println("<td><input type='number' min='0' max="+total+" name='attend' class='form-control'/></td>");
        out.println("</div>");
        out.println("</tr>");
     }

  }
   

catch (Exception exe)
{
	exe.printStackTrace();
	out.println(exe);
}

%>
</table>

	<input type="submit" value="Submit" name="submit" class="w3-btn w3-block w3-teal" />
</form>
</div>
</div>

</body>
</html>