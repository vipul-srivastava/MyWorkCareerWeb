<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>


<div class="container">
<p>Welcome </p>
<div style="position: absolute;left:80%;top:10.5%;">

</div>

<div class="jumbotron" >
<form action="create_emp_db.jsp" method="post">
<div>


<div style="position: absolute;right:50%;top:20%;">
<table cellpadding="10">

<tr>
<tr>
<td><h3>Enter College name: </h3></td>
<td><h3><input type="email" name="emp_email" required="required"></h3></td>
</tr><br>

<td><h3>Enter Competative exam :</h3></td>
<td><h3><input type="text" name="emp_name" required="required"></h3></td>
</tr>
<tr>
<br>
<td><h3>Enter College city: </h3></td>
<td><h3><input type="password" name="emp_pass" required="required"></h3></td>
</tr>
<tr>
<td><h3>Enter rank(gen-cs): </h3></td>
<td><h3><input type="text" name="emp_id" required="required"></h3></td>
</tr>
<br>


<tr>
<td><h3>Enter rank(gen-it): </h3></td>
<td><h3><input type="number" name="emp_salary" required="required"></h3></td>
</tr><br>
<tr>
<td><h3>Enter rank(gen-ec): </h3></td>
<td><h3><input type="number" name="emp_age" required="required"></h3></td>
</tr><br>
</table>
</div>
<div style="position: absolute;left:60%;top:20%;">
<table cellpadding="10">
<tr>
<td><h3>Enter rank(gen-ee): </h3></td>
<td><h3><input type="text" name="emp_dept" required="required"></h3></td>

</tr>
<br>
<div style="position: absolute;left:60%;top:20%;">
<table cellpadding="10">
<tr>
<td><h3>Enter rank(gen-me): </h3></td>
<td><h3><input type="text" name="emp_dept" required="required"></h3></td>

</tr>
<tr>
<td><h3>Enter rank(obc-cs): </h3></td>
<td><h3><input type="text" name="emp_grade" required="required"></h3></td>
</tr>
<br>
<tr>
<td><h3>Enter rank(obc-it): </h3></td>
<td><h3><input type="number" name="emp_contact" required="required"></h3></td>
</tr><br>
<tr>
<td><h3>Enter rank(obc-ec): </h3></td>
<td><h3><input type="text" name="emp_address" required="required"></h3></td>
</tr><br>
<tr>
<td><h3>Enter rank(obc-ee): </h3></td>
<td><h3><input type="number" name="emp_adhar" required="required"></h3></td>
</tr><br>
<tr>
<td><h3>Enter rank(obc-me): </h3></td>
<td><h3><input type="number" name="emp_adhar" required="required"></h3></td>
</tr>
</table>
<h3><input type="submit" value="Register" style="position:absolute;left:80%;"></h3>
</div>


</form>

</div>
</div>
<h3><a href="empjsp.jsp" class="nav-link">Home</a></h3>
<%
	String msg=request.getParameter("msg");
	String color=request.getParameter("color");

	if(msg!=null)
	{
%>
<center>
<h3><p class="<%=color%>"><%=msg%><br></p></h3>
</center>
<%
	}
%>

</body>
</html>