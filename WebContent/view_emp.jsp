<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<br>
<br>
<br>
<br>
<div class="container">
<p>Welcome,Admin</p>
<div style="position: absolute;left:80%;top:10.5%;">
<a href="wel_admin.jsp" class="nav-link">Home</a>
</div>
<div style="position: absolute;left:40%;top:13.5%;">
<br>

<form action="search_emp.jsp">
<input type="text" name="emp_id" placeholder="enter emp id">
<input type="submit" value="search">
</form>
</div>

<%
	String msg=request.getParameter("msg");
	String color=request.getParameter("color");

	if(msg!=null)
	{
%>
<p class="<%=color%>"><%=msg%></p>
<%
	}
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "vipul");
	PreparedStatement pstmt=con.prepareStatement("select * from careerwebbemp");
	ResultSet rs=pstmt.executeQuery();
%>
<div class="container">
  <table class="table table-hover">
    
    <thead>
      <tr>
        <th>Emp Name</th>
        <th>Emp Pass</th>
        <th>Emp Id</th>
        <th>Emp Grade</th>
        <th>Emp Age</th>
        <th>Emp Salary</th>
        <th>Emp Department</th>
        <th>Emp Email</th>
        <th>Emp Contact</th>
        <th>Emp Address</th>
        <th>Emp Adhar</th>
        <th>Action</th>     
      </tr>
    </thead>
    
    <tbody>
    <% 
    	while(rs.next())
    	{
    		  
    %>
   			<tr style="width: 30%;">
    	        <td><%=rs.getString(1)%></td>
    	        <td><%=rs.getString(2)%></td>
    	        <td><%=rs.getString(3)%></td>
    	        <td><%=rs.getString(4)%></td>
    	        <td><%=rs.getString(5)%></td>
    	        <td><%=rs.getString(6)%></td>
    	        <td><%=rs.getString(7)%></td>
    	        <td><%=rs.getString(8)%></td>
    	        <td><%=rs.getString(9)%></td>
    	        <td><%=rs.getString(10)%></td>
    	        <td><%=rs.getString(11)%></td>
    	        <td width="20%;"><a href="update_emp_admin.jsp?emp_id=<%=rs.getString(3)%>" class="nav-link">Update</a><a href="delete_emp_db.jsp?emp_id=<%=rs.getString(3)%>" class="nav-link">Delete</a></td>
    	        
    	   </tr>
    		
    <%	
    
    	}
    con.close();
    %>
    
     
    </tbody>
  </table>
</div>

</div>
</body>
</html>