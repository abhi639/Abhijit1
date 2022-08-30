<%@page import="com.clinic.dao.PetiontDao"%>
<%@page import="com.clinic.petiont.Petiont"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="com.clinic.dao.PetiontDao"%>
    <%@page import="com.clinic.petiont.Petiont"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	.banner-backgrround{
clip-path: polygon(30% 0%, 100% 0, 100% 88%, 75% 84%, 53% 91%, 28% 95%, 0 90%, 0 0);	}
	
	</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed">
  <a class="navbar-brand" href="#">Clinic Managment System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="#">Login</a>
      <a class="nav-item nav-link" href="#"></a>
     
    </div>
  </div>
</nav>
 <%
  PetiontDao dao=new PetiontDao();
 
  ArrayList<Petiont> data1=dao.viewEmp();
  for(Petiont emp:data1){
  %>
<div class="container">
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Blood Group</th>
      <th scope="col">Age</th>
       
    </tr>
  </thead>
  
  <tbody>
    <tr>
      <td scope="row"><%=emp.getPetion_id() %></td>
       <td scope="row"><%=emp.getPetion_name()%></td>
        <td scope="row"><%=emp.getBlood_group()%></td>
         <td scope="row"><%=emp.getPetiont_age() %></td>
          
   
    <%} %>
    </tr>
    
    <tr>
    
    
    </tr>
  </tbody>
</table>
</div>
</body>
</html>