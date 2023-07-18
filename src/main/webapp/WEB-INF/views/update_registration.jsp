<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
.card{
box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
margin-left: auto; margin-right: auto;}
</style>
</head>
<body>
<div class="bb">
<div class="card bb " style="width: 63%;">
  <div class="card-body">
<div class="container">
  <div class="row"	>
 
    <div class="col">
    
<form action="update" method="Post">
<h2>Registration </h2>
 
  
      
 
  
   <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="text" class="form-control" name="email" value="<%=request.getAttribute("email")%>" aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Mobile</label>
    <input  type="text" class="form-control" name="mobile" value="<%=request.getAttribute("mobile")%>">
  </div>

 
  
  <button type="submit" class="btn btn-primary text-center" onclick"call">Submit</button>
</form>
</div>

</div>


    </div>
  </div>
    </div>
    </div>


<script type="text/javascript">
function call(){
	Swal.fire('Updated Sucessfully')
	
}

</script>

</body>
</html>