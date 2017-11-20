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
	
	
%>
</body>
</html>