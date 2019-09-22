
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

<form method="post"  action="adminaddattendence.jsp">

			
<%


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
int i=0;Integer total=0;
Double result=0.0;



try {
	  String totall=(String)session.getAttribute("tot");
	  System.out.println(totall);
	  
		
	String connectionURL = "jdbc:mysql://localhost:3306/oams"; 
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	conn = DriverManager.getConnection(connectionURL, "root", "root");
	stmt=conn.createStatement();
	
	String subno=request.getParameter("branch");
	rs=stmt.executeQuery("select * from dattendence");
	
	for(i=0;i<sidd.length;i++)
	{
		rs.next();
		String sb1=rs.getString("sub1");String tsb1=rs.getString("tsub1");
		String sb2=rs.getString("sub2");String tsb2=rs.getString("tsub2");
		String sb3=rs.getString("sub3");String tsb3=rs.getString("tsub3");
		String sb4=rs.getString("sub4");String tsb4=rs.getString("tsub4");
		String sb5=rs.getString("sub5");String tsb5=rs.getString("tsub5");
		String sb6=rs.getString("sub6");String tsb6=rs.getString("tsub6");
		
		if(Integer.parseInt(subno)==1){
			result=Double.parseDouble(sb1);
			total=Integer.parseInt(totall)+Integer.parseInt(tsb1);
		}
		else if(Integer.parseInt(subno)==2){
		    	 result=Double.parseDouble(sb2);
		    	 total=Integer.parseInt(totall)+Integer.parseInt(tsb2);
		     }     
		else if(Integer.parseInt(subno)==3){
			result=Double.parseDouble(sb3);
			total=Integer.parseInt(totall)+Integer.parseInt(tsb3);
		}
		else if(Integer.parseInt(subno)==4){
			result=Double.parseDouble(sb4);
			total=Integer.parseInt(totall)+Integer.parseInt(tsb4);
		}
		else if(Integer.parseInt(subno)==5){
			result=Double.parseDouble(sb5);
			total=Integer.parseInt(totall)+Integer.parseInt(tsb5);
		}
		else if(Integer.parseInt(subno)==6){
			result=Double.parseDouble(sb6);
			total=Integer.parseInt(totall)+Integer.parseInt(tsb6);
		}
		     

		Double atend=Double.parseDouble(attend[i]);
		//out.println("attend classes"+atend);
		//out.println("totalclasses"+tclasses);
		//out.println("result"+result);
	 
		
		result=result+atend;
	   //System.out.println(subno);
	   
	    
		
		
		//System.out.println(rst);
		
		if(Integer.parseInt(subno)==1)
		{
			 try{
			//	out.println("Ghusa");
				PreparedStatement ps=conn.prepareStatement("insert into dattendence (sid,sub1,tsub1) values(?,?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString());
	    	    ps.setString(3,total.toString()); 
	    	    ps.executeUpdate(); 
			}
			catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update dattendence set sub1=?,tsub1=? where sid=?");
	    	    ps.setInt(3,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.setString(2,total.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==2)
		{
			
			try{
				PreparedStatement ps=conn.prepareStatement("insert into dattendence (sid,sub2,tsub2) values(?,?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString());
	    	   // System.out.println("attend classes"+totall);
	    	     ps.setString(3,total.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update dattendence set sub2=?,tsub2=? where sid=?");
	    	    ps.setInt(3,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	  //  System.out.println("attend classes"+totall);
	    	    ps.setString(2,total.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==3)
		{
			
			try{
				PreparedStatement ps=conn.prepareStatement("insert into dattendence (sid,sub3,tsub3) values(?,?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.setString(3,total.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update dattendence set sub3=?,tsub3=? where sid=?");
	    	    ps.setInt(3,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString());
	    	    ps.setString(2,total.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==4)
		{
		
			try{
				PreparedStatement ps=conn.prepareStatement("insert into dattendence (sid,sub4,tsub4) values(?,?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.setString(3,total.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update dattendence set sub4=?,tsub4=? where sid=?");
	    	    ps.setInt(3,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.setString(2,total.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==5)
		{
			
			try{
				PreparedStatement ps=conn.prepareStatement("insert into dattendence (sid,sub5,tsub5) values(?,?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.setString(3,total.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update dattendence set sub5=?,tsub5=? where sid=?");
	    	    ps.setInt(3,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.setString(2,total.toString()); 
	    	    ps.executeUpdate();
			}
		}
		else if(Integer.parseInt(subno)==6)
		{
			try{
				PreparedStatement ps=conn.prepareStatement("insert into dattendence (sid,sub6,tsub6) values(?,?,?)");
	    	    ps.setInt(1,Integer.parseInt(sidd[i])); 
	    	    ps.setString(2,result.toString()); 
	    	    ps.setString(3,total.toString()); 
	    	    ps.executeUpdate();
			}
    	    catch(Exception exe)
			{
				//out.println("catch");
				PreparedStatement ps=conn.prepareStatement("update dattendence set sub6=?,tsub6=? where sid=?");
	    	    ps.setInt(3,Integer.parseInt(sidd[i])); 
	    	    ps.setString(1,result.toString()); 
	    	    ps.setString(2,total.toString()); 
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