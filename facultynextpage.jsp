<!Doctype HTML>
<html>
<head>
<title>Add student</title>
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
        <a class="nav-link" href="display-new.jsp">Back</a>
      </li>
      </ul>
      </div>
</nav><br/>
<br/>
<div class="container">
<div class="row justify-content-md-center">

<div class="col-md-auto">
<div class="card " style="background-color:#ffffff;" >

  	<div class="card-header" align="center">
   <b>Details</b>
  </div>
	<br/><br/>
	<div class="card-body">
 		<form method="post" action="attendence.jsp">
 		 <div class="form-group">
 		
 		<label>Branch </label> <select name="branch" class="form-control" id="exampleFormControlSelect1">  <option>CSE</option>
       						  <option>EEE</option><option>ECE</option><option>ME</option><option>CE</option>
       						  </select> 
</div>
<div class="form-group">
      <label> Semester</label> <select class="form-control" id="exampleFormControlSelect1" name="semester">  <option>1</option>
       						  <option>2</option> <option>2</option> <option>3</option>
       						  <option>4</option><option>5</option><option>6</option><option>7</option>
       						  <option>8</option>
       						  </select> 
       						  </div>
       						  <div class="form-group">
        <label>Total Number of Classes Attended</label> <input type="number"  min="0" max="50" name="cls" class="form-control" >
        
        </div>
        <input type="submit" name="submit" value="Submit" class="w3-btn w3-block w3-teal"/>
       
	 	</form>
	 	<br/>
	 	</div>
	 	</div>
	 	</div>
	 	</div></div>
</body>
</html>