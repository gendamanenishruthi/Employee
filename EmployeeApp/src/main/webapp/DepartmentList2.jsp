<%@page import="com.ibm.model.Department" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dept</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- Since using core tag library v are using prefix as c -->
 <!--<%@ include file="Header.jsp"%>-->
   <c:import url="Header.jsp"></c:import><!--using core tag  -->
<div class="container">
<h2>Department List</h2>
<table class="table table-striped">
<thead>
<tr>
<th>Dep ID</th>
<th>Dept Name</th>
</tr>
</thead>
  <tbody>
     <c:forEach items="${depts}" var="dpt"> <!-- dpt is the var in which v are storing -->
        <tr>
	        <td>${dpt.deptId} </td>
            <td>${dpt.deptName}</td>	
         </tr>
     </c:forEach>
  </tbody>
</table>
</div>
</body>
</html>