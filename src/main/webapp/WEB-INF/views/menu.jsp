<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>menu</title>
<style>
.gg {
    background-color: #000000!important;
}
</style>

</head>
<body>
<nav class="navbar navbar-expand-lg  navbar-dark gg">
  <a class="navbar-brand" href="saveReg">new registration</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
 <a class="navbar-brand" href="listall">list registration</a>
  </div>
     <form class="form-inline my-2 my-lg-0" action="logoutController" method="Post">
       
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">LOGOUT</button>
    </form>
</nav>
	 
	

</body>
</html>