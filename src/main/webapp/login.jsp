<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Login</title>
</head>
<body>
<body>
  <div class="wrapper">
    <div class="title-text">
      <div class="title login">Login Form</div>
      <div class="title signup">Signup Form</div>
    </div>

    <!-- Start Form Container -->
    <div class="form-container">
     

      <div class="form-inner">

        <!-- Start Login Form -->
        <form action="verifyLogin" method="post">
          <div class="field">
            <input type="text" placeholder="Email Address" required name="email">
          </div>
          <div class="field">
            <input type="password" placeholder="Password" required name="password" >
          </div>
          <div class="field">
            <input type="submit" value="Login">
          </div>
        </form>

        <!-- Start Signup Form -->
        <form action="#" class="signup">
          <div class="field">
            <input type="text" placeholder="Email Address" required>
          </div>
          <div class="field">
            <input type="password" placeholder="Password" required>
          </div>
          <div class="field">
            <input type="password" placeholder="Confirm password" required>
          </div>

          <div class="field">
            <input type="submit" value="Signup">
          </div>

        </form>
      </div>
    </div>
  </div>
</body>
   <%
	if(request.getAttribute("error") !=null){
		out.println("<h1 style='background-color:yellow;color:red;text-align:center;width: 100%;'>"+request.getAttribute("error")+"<h1>");
	}
	%>
</html>






