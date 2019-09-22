
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.math.RoundingMode"  %>
<%@ page import="java.text.DecimalFormat" %>


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
     <div>
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item">
        <a class="nav-link" href="adminlogout.jsp">Logout</a>
      </li>
      </ul>
      </div>
</nav>
<br/>
<div class="container">
<div class="alert alert-success" role="alert">
<h3 align="center">Successfully Added to Database</h3>
</div>
 <br/>
<br/><br/><br/><br/>
<h3 style="text-align:  center; text-decoration: none;">
            <a href="display-new.jsp" style="border: 1pt solid #333;">Click->Back to home page</a>
        </h3>
<div>
<% String sub=(String)session.getAttribute("sub"); %>
</div>	
<div>
<form method="post"  action="adminaddattendance.jsp">

			
<%
 DecimalFormat df = new DecimalFormat("0.00");
Float[] temp=new Float[2];
String total_=(String)session.getAttribute("clas");

String branch=(String)session.getAttribute("branc");
String[] attend=request.getParameterValues("attend");
String[] sidd=request.getParameterValues("siddd");

String[] attendcopy=request.getParameterValues("attend");
session.setAttribute("attendcopy",attendcopy);
Connection conn = null; 
Statement stmt= null;
ResultSet rs=null;
String roll=null;
String name=null;
int i=0;

try {
	Integer tclasses=Integer.valueOf(total_);
	String subno=request.getParameter("branch");
	for(i=0;i<sidd.length;i++)
	{
		Double atend=Double.parseDouble(attend[i]);
		//out.println("attend classes"+atend);
		//out.println("totalclasses"+tclasses);
		Double result= (atend/tclasses)*100;
		df.format(result);
		//out.println("result"+result);
		
		String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
	    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	    conn = DriverManager.getConnection(connectionURL, "root", "root");
	    stmt=conn.createStatement();
	    stmt=conn.createStatement();
	    System.out.println(subno);
		if(Integer.parseInt(subno)==1)
		{
			try{
			//	out.println("Ghusa");
				PreparedStatement ps=conn.prepareStatement("insert into attendence (sid,sub1) values(?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.executeUpdate(); 
			}
			catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update attendence set sub1=? where sid=?");
	    	    ps.setInt(2,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==2)
		{
			try{
				PreparedStatement ps=conn.prepareStatement("insert into attendence (sid,sub2) values(?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update attendence set sub2=? where sid=?");
	    	    ps.setInt(2,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==3)
		{
			try{
				PreparedStatement ps=conn.prepareStatement("insert into attendence (sid,sub3) values(?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update attendence set sub3=? where sid=?");
	    	    ps.setInt(2,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==4)
		{
			try{
				PreparedStatement ps=conn.prepareStatement("insert into attendence (sid,sub4) values(?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update attendence set sub4=? where sid=?");
	    	    ps.setInt(2,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==5)
		{
			try{
				PreparedStatement ps=conn.prepareStatement("insert into attendence (sid,sub5) values(?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update attendence set sub5=? where sid=?");
	    	    ps.setInt(2,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==6)
		{
			try{
				PreparedStatement ps=conn.prepareStatement("insert into attendence (sid,sub6) values(?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update attendence set sub6=? where sid=?");
	    	    ps.setInt(2,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.executeUpdate();
			}
		}
	}
	//out.println(attendcopy[0]);

	
	
	//out.println("<h4><i>Out of "+tclasses+" classes:</i></h4><br/>");
	/* for(int xx=0;xx<2;xx++)
	{
		temp[xx]=Float.parseFloat(attend[xx]);
		//out.println(temp[xx]);
		temp[xx]=(temp[xx]/tclasses)*100;
		
	}   */
	/* session.setAttribute("attend",temp);
	String bid1=(String)(session.getAttribute("bid"));
	int bid=Integer.parseInt(bid1);
	System.out.println(bid);

    rs=stmt.executeQuery("select student.roll,student.name from student WHERE bid= '"+ bid +"'"); 
  	
   while(rs.next() && i<2)
    {
	    
    	roll=rs.getString("roll");
        name=rs.getString("name");
        out.println("<tr>");
        out.println("<td>"+roll+"</td>"); 
        out.println("<td>"+name+"</td>");
        out.println("<td>"+temp[i]+"</td>"); 
        out.println("</tr>");
		i++;
     } */
  

   	  
   	   
   	     
   	  
   	   

   
  }
   

catch (Exception exe)
{
	exe.printStackTrace();
	out.println(exe);
}

%>
</form>
</div>
</div>

</body>
</html>