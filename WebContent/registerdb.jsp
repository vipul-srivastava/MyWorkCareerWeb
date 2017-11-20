

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
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String cpass=request.getParameter("cpass");
String user=request.getParameter("user");
if(user.equals("User"))
{
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "vipul");
	PreparedStatement pstmt=con.prepareStatement("insert into careerwebr values(?,?,?,?,?)");
	pstmt.setString(1,email);
	pstmt.setString(2,name);
	pstmt.setString(3,pass);
	pstmt.setString(4,cpass);
	pstmt.setString(5,user);
	pstmt.executeUpdate();
	con.close();
	response.sendRedirect("index.jsp");
	
	


}catch(Exception e)
	{

	response.sendRedirect("aboutus.jsp");
	
}
}

%>

</body>
</html>