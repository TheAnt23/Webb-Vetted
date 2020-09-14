<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
            <h1 class="text-center mb-4">Project Successfully Created!</h1>
            <p>Here are the details you entered:</p>
            
            <div class="auto-form-wrapper">


<label>ProjectID:</label>
<span><% String ProjectID = request.getParameter("ProjectID");%><%=ProjectID.toString() %></span><br>
		
<label>Project Title:</label>
<span><% String ProjectTitle = request.getParameter("ProjectTitle");%><%=ProjectTitle.toString() %></span><br>
		
<label>Client:</label>
<span><% String Client = request.getParameter("Client");%><%=Client.toString() %></span><br>
		
<label>Developer:</label>
<span><% String Developer = request.getParameter("Developer");%><%=Developer.toString() %></span><br>
		
<label>Budget:</label>
<span><% String Budget = request.getParameter("Budget");%><%=Budget.toString() %></span><br>
		

<p>To create another project, click <a href="NewProject.jsp" class="text-black text-small">Return</a> or click continue to <a href="ClientProjects.jsp" class="text-black text-small">Proceed</a></p>

<form action="NewProjectServer" method="get">


 <div class="text-block text-center my-3">
 <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019
 <a href="#" target="_blank">Webb&Vetted</a><br> All rights reserved.</span>
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