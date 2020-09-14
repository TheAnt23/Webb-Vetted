<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Webb & Vetted</title>

  <link rel="stylesheet" href="../Support/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../Support/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="../Support/css/vendor.bundle.addons.css">
  <link rel="stylesheet" href="../Support/css/style.css">
  <link rel="shortcut icon" href="../Support/images/W&Vmini.png" />
</head>
<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
      <div class="content-wrapper d-flex align-items-center auth register-bg-1 theme-one">
        <div class="row w-100">
              <div class="col-12 grid-margin">
            <h1 class="text-center mb-4">You have successfully registered with Us!</h1>
            <p>Here are the details you entered:</p>
            
            <div class="auto-form-wrapper">


<label>Firstname:</label>
<span><% String FirstName = request.getParameter("FirstName");%><%=FirstName.toString() %></span><br>
		
<label>Lastname:</label>
<span><% String LastName = request.getParameter("LastName");%><%=LastName.toString() %></span><br>
		
<label>Date Of Birth:</label>
<span><% String DateOfBirth = request.getParameter("DateOfBirth");%><%=DateOfBirth.toString() %></span><br>
		
<label>Email:</label>
<span><% String Email = request.getParameter("Email");%><%=Email.toString() %></span><br>
		
<label>Username:</label>
<span><% String UserName = request.getParameter("UserName");%><%=UserName.toString() %></span><br>
		
<label>Password:</label>
<span><% String Password = request.getParameter("Password");%><%=Password.toString() %></span><br>

<p>To continue to Login, click "Login" or "Home" to go to home page</p>

<form action="RegisterAdminServer" method="get">
<a href="login.html" class="text-black text-small">Login</a>
</br>
<a href="../index.html" class="text-black text-small">Home</a>

 <div class="text-block text-center my-3">
 <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019
 <a href="#" target="_blank">Webb&Vetted</a>. All rights reserved.</span>
 <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Designed by <br/> Baone Nelson
 </span> 
 </div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
  <script src="../Support/vendors/js/vendor.bundle.base.js"></script>
  <script src="../Support/vendors/js/vendor.bundle.addons.js"></script>

  <script src="../Support/js/off-canvas.js"></script>
  <script src="../Support/js/misc.js"></script>
</body>
</html>