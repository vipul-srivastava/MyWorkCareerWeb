<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html >
<head>
  <meta charset="UTF-8">
  <title>Login & Sign Up Form Concept</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>

      <link rel="stylesheet" href="css/style1.css">
<%@ include file="header.html"%>
  
</head>

<body>

  <div class="cotn_principal">
<div class="cont_centrar">

  <div class="cont_login">
<div class="cont_info_log_sign_up">
      <div class="col_md_login">
<div class="cont_ba_opcitiy">
        
        <h2>LOGIN</h2>  
        
          <%
	String msg=request.getParameter("msg");
          String color=request.getParameter("color");

      	if(msg!=null)
      	{
      %>
	<p class="<%=color%>"><%=msg%></p>
      <%
      	}
      %>
     <p>.</p> 
  <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
  </div>
  </div>
<div class="col_md_sign_up">
<div class="cont_ba_opcitiy">
  <h2>SIGN UP</h2>

  
  <p>.</p>

  <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
</div>
  </div>
       </div>

    
    <div class="cont_back_info">
       <div class="cont_img_back_grey">
       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
       </div>
       
    </div>
<div class="cont_forms" >
    <div class="cont_img_back_">
       <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d" alt="" />
       </div>
 <div class="cont_form_login">
<a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
   <h2>LOGIN</h2>
  
   <form action=login.jsp>
  
 <input type="email" placeholder="Email" name=email required/>
 <br>
 <br>
<input type="password" placeholder="Password" name=pass required/>
<br>
<br>
<label><b>Select User</b></label>  
    <select name="user">
    <option>User</option>
    <option>Emp</option>
    <option>Admin</option>
    
 
    </select>   
    <br>
  <button type="submit">Login</button>
  </div>
  </form>
   <div class="cont_form_sign_up">
<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
     <h2>SIGN UP</h2>
     <form action=registerdb.jsp method="post">
     <br>
     <br>
<input type="email" placeholder="Email" name=email required />
<br>
<br>
<input type="text" placeholder="Name" name=name required />
<br>
<br>
<input type="password" placeholder="Password" name=pass required />
<br>
<br>
<input type="password" placeholder="Confirm Password" name=cpass required />
<br>
<br><label><b>Select User</b></label>  
    <select name="user">
    
    <option>User</option>
    </select>
    <br>
  <button type="submit">Register</button>

</form>  

  </div>

    </div>
    
  </div>
 </div>
</div>

    <script  src="js/index.js"></script>
    

</body>
<%@ include file="footer.html"%>
</html>
