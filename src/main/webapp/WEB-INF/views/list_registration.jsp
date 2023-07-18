<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrations</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style>
.bb{

background-image: url('https://www.oecd.org/media/oecdorg/directorates/environmentdirectorate/2020-1/Indicators%20subtopic%20homepage%20-%20web%20sliders-02.jpg')100%	;
  background-repeat: no-repeat;
}

</style>
</head>
<body>
<section class="bb">
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Weight</th>
      <th scope="col">City</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile</th>
      <th scope="col">Blood Group</th>
      <th scope="col">Action1</th>
      <th scope="col">Action2</th>
    </tr>
  </thead>
  <tbody>
 
     	<%
		ResultSet result = (ResultSet)request.getAttribute("res");
		while(result.next()){ %>
		<tr>
			<td><%=result.getString(1)%></td>
			<td><%=result.getString(2)%></td>
			<td><%=result.getString(3)%></td>
			<td><%=result.getString(4)%></td>
			<td><%=result.getString(5)%></td>
			<td><%=result.getString(6)%></td>
			<td><%=result.getString(7)%></td>
			<td><a href="delete?email=<%=result.getString(5)%>">delete</a></td>	
	       	<td><a href="update?email=<%=result.getString(5)%>&mobile=<%=result.getString(6)%>">update</a></td>		
		</tr>
		<%}%>
  

  </tbody>
</table>
	</section>
</body>
</html> 