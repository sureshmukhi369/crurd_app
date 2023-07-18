<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style>
.bb{

background: rgb(187,179,210)!important;
background: linear-gradient(180deg, rgba(187,179,210,1) 0%, rgba(11,179,211,1) 22%, rgba(233,248,251,1) 83%, rgba(255,255,255,1) 100%)!important;
}
.card{
  margin: auto;
  width: 50%;
  
  padding: 10px;
  box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
  
  
  
  }

</style>
</head>
<body>
<div class="bb">
<div class="card bb " style="width: 63%;">
  <div class="card-body">
<div class="container">
  <div class="row">
    <div class="col">
   <img style="
    width: 423px;
" src="https://www.refreshhealthcare.biz/Upload/fldBlog/Blood-for-life-facebook-post.jpg">
    </div>
    <div class="col">
    
<form action="saveReg" method="Post">
<h2>Registration </h2>
  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" name="name" aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Age</label>
    <input  type="text" class="form-control" name="age">
  </div>
  <div class="row">
  <div class="col">
  <div class="form-group">
    <label for="exampleInputEmail1">Weight</label>
    <input type="text" class="form-control" name="weight" aria-describedby="emailHelp">
   
  </div>
  </div>	
    <div class="col">
    <label for="exampleInputEmail1">Blood Group</label>
    <select class="custom-select" name="bloodgroup">
  <option selected>Please Select</option>
  <option value="O+">O+</option>
  <option value="A+">A+</option>
  <option value="B+">B+</option>
  <option value="AB+">AB+</option>
  <option value="O-">O-</option>
  <option value="A-">A-</option>
  <option value="B-">B-</option>
  <option value="AB-">AB-</option>
</select>
  </div>
  
  </div>
  
      
 
  <div class="form-group">
    <label for="exampleInputPassword1">City</label>
    <input  type="text" class="form-control" name="city">
  </div>
  
   <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="text" class="form-control" name="email" aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Mobile</label>
    <input  type="text" class="form-control" name="mobile">
  </div>

 
  
  <button type="submit" class="btn btn-primary text-center">Submit</button>
</form>
</div>

</div>


    </div>
  </div>
    </div>
    </div>
</body>
</html>