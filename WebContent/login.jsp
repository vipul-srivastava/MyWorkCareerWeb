<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String user=request.getParameter("user");
String emp_email=request.getParameter("emp_email");
String emp_name=request.getParameter("emp_name");
String emp_pass=request.getParameter("emp_pass");
String emp_id=request.getParameter("emp_id");
String emp_salary=request.getParameter("emp_salary");
String emp_age=request.getParameter("emp_age");
String emp_dept=request.getParameter("emp_dept");
String emp_grade=request.getParameter("emp_grade");
String emp_contact=request.getParameter("emp_contact");
String emp_address=request.getParameter("emp_address");
String emp_adhar=request.getParameter("emp_adhar");

if(user.equals("Admin"))
{
	if(email.equalsIgnoreCase("admin@123")&&pass.equals("admin"))
	{
		response.sendRedirect("wel_admin.jsp");
	}
	else
	{
		response.sendRedirect("Login_Signup.jsp?msg=Invalid Username or Password&color=text-danger");
	}
}
else if(user.equals("User"))
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "vipul");
	PreparedStatement pstmt=con.prepareStatement("select * from careerwebr where email=? and pass=?");
	pstmt.setString(1,email);
	pstmt.setString(2,pass);
	ResultSet rs=pstmt.executeQuery();
	if(rs.next())
	{
		session.setAttribute("email",rs.getString("email"));
		session.setAttribute("name",rs.getString("name"));
		session.setAttribute("pass",rs.getString("pass"));
		session.setAttribute("cpass",rs.getString("cpass"));
		response.sendRedirect("user.jsp");
	}
	else
	{
		response.sendRedirect("index.jsp");
	}

	con.close();
}
else if(user.equals("Emp"))
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "vipul");
	PreparedStatement pstmt=con.prepareStatement("select * from careerwebbemp where emp_email=? and emp_pass=?");
	pstmt.setString(1,email);
	pstmt.setString(2,pass);
	ResultSet rs=pstmt.executeQuery();
	if(rs.next())
	{
		
		session.setAttribute("emp_name",rs.getString("emp_name"));
		session.setAttribute("emp_pass",rs.getString("emp_pass"));
		session.setAttribute("emp_id",rs.getString("emp_id"));
		session.setAttribute("emp_grade",rs.getString("emp_grade"));
		session.setAttribute("emp_salary",rs.getString("emp_salary"));
		session.setAttribute("emp_age",rs.getString("emp_age"));
		session.setAttribute("emp_part",rs.getString("emp_dept"));
		session.setAttribute("emp_email",rs.getString("emp_email"));
		
		session.setAttribute("emp_contact",rs.getString("emp_contact"));
		session.setAttribute("emp_address",rs.getString("emp_address"));
		session.setAttribute("emp_adhar",rs.getString("emp_adhar"));
		
		response.sendRedirect("empjsp.jsp");
	}
	else
	{
		response.sendRedirect("index.jsp");
	}

	con.close();
}




%>
</body>
</html>