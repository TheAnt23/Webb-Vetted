<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@page import="modelDAO.DBConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Developer Dashboard</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../Support/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../Support/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="../Support/vendors/css/vendor.bundle.addons.css">
  <link rel="stylesheet" href="../Support/vendors/iconfonts/font-awesome/css/font-awesome.css">    
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../Support/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../Support/images/W&Vmini.png" />
</head>

<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
        <a class="navbar-brand brand-logo" href="#">
          <img src="../Support/images/W&Vlogo.png" alt="logo" />
        </a>
        <a class="navbar-brand brand-logo-mini" href="#">
          <img src="../Support/images/W&Vlogo.png" alt="logo" />
        </a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center">
        <ul class="navbar-nav navbar-nav-left header-links d-none d-md-flex">
       
          <li class="nav-item">
            <a href="Feedback.jsp" class="nav-link">
              <i class="mdi mdi-bookmark-plus-outline"></i>Ratings</a>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <i class="mdi mdi-file-document-box"></i>
              <span class="count">7</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
              <div class="dropdown-item">
                <p class="mb-0 font-weight-normal float-left">You have 7 unread mails
                </p>
                <span class="badge badge-info badge-pill float-right">View all</span>
              </div>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <img src="../Support/images/faces/face4.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-medium text-dark">David Grey
                    <span class="float-right font-weight-light small-text">1 Minutes ago</span>
                  </h6>
                  <p class="font-weight-light small-text">
                    The meeting is cancelled
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <img src="../Support/images/faces/face2.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-medium text-dark">Tim Cook
                    <span class="float-right font-weight-light small-text">15 Minutes ago</span>
                  </h6>
                  <p class="font-weight-light small-text">
                    New project launch
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <img src="../Support/images/faces/face3.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-medium text-dark"> Johnson
                    <span class="float-right font-weight-light small-text">18 Minutes ago</span>
                  </h6>
                  <p class="font-weight-light small-text">
                    Upcoming board meeting
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-bell"></i>
              <span class="count">4</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <a class="dropdown-item">
                <p class="mb-0 font-weight-normal float-left">You have 4 new notifications
                </p>
                <span class="badge badge-pill badge-warning float-right">View all</span>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-success">
                    <i class="mdi mdi-alert-circle-outline mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium text-dark">Application Error</h6>
                  <p class="font-weight-light small-text">
                    Just now
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-warning">
                    <i class="mdi mdi-comment-text-outline mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium text-dark">Settings</h6>
                  <p class="font-weight-light small-text">
                    Private message
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="mdi mdi-email-outline mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium text-dark">Project progress</h6>
                  <p class="font-weight-light small-text">
                    2 days ago
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item dropdown d-none d-xl-inline-block">
            <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <span class="profile-text">Hello, Developer !</span>
              <img class="img-xs rounded-circle" src="../Support/images/faces/Chief.png" alt="Profile image">
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
              <a class="dropdown-item p-0">
                <div class="d-flex border-bottom">
                  <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                    <i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>
                  </div>
                  <div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
                    <i class="mdi mdi-account-outline mr-0 text-gray"></i>
                  </div>
                  <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                    <i class="mdi mdi-alarm-check mr-0 text-gray"></i>
                  </div>
                </div>
              </a>
              <a class="dropdown-item mt-2" href="UpdateProfile.jsp">
                Manage Account
              </a>
              <a class="dropdown-item" href="#">
                Check Inbox
              </a>
              <a class="dropdown-item" href="login.html">
                Sign Out
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_sidebar.html -->
      
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="user-wrapper">
                <div class="profile-image">
                  <img src="../Support/images/faces/Chief.png" alt="profile image">
                </div>
                <div class="text-wrapper">
                  <p class="profile-name"></p>
                  <div>
                    <small class="designation text-muted">Developer</small>
                    <span class="status-indicator online"></span>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="DeveloperHome.jsp">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="DeveloperProjects.jsp">
              <i class="menu-icon mdi mdi-table"></i>
              <span class="menu-title">Projects</span>
            </a>
          </li>
             <li class="nav-item">
            <a class="nav-link" href="AllFeedback.jsp">
              <i class="menu-icon mdi mdi-table"></i>
              <span class="menu-title">Project Feedback</span>
            </a>
          </li>
               <li class="nav-item">
            <a class="nav-link" href="DevelopersListGrad.jsp">
              <i class="menu-icon mdi mdi-table"></i>
              <span class="menu-title">Graduates</span>
            </a>
          </li>
        </ul>
      </nav>
      
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
            
                        <div class="auto-form-wrapper">
               <form action="FeedbackServer" method="post">
            
              
              <div class="card">
                <div class="card-body">
                    <p class="card-description">
                     Ratings Home
                    </p>
                    
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Details</label>
                          <textarea class="form-control" placeholder="Enter Your feedback" name="Details">
                            
                          </textarea>
                        </div>
                      </div>
                      
                      <div class="row">
                                            <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Developer</label>
                          <div class="col-sm-9">                       
                
                            <select class="form-control" name="Developer">
                            <% 
                            
                          
                            
                            try{ 
                    			Connection connection=DBConnector.getConnection();
                    			String query= "SELECT * FROM Users ";
                                Statement st = connection.createStatement();
                                ResultSet rs = st.executeQuery(query);
                    			while(rs.next())
                    			{
                                              		
                    		%>                            
                              <option>
                              <%=rs.getString("Username") %>
                              </option>
                              <%
                              
                    			}

                			} catch (Exception e) {
                				e.printStackTrace();
                				}	
                			%>
                            </select>
                          </div>
                        </div>
                      </div>
                      
                          <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Client</label>
                          <div class="col-sm-9">                       
                
                            <select class="form-control" name="Client">
                            <% 
                            
                          
                            
                            try{ 
                    			Connection connection=DBConnector.getConnection();
                    			String query= "SELECT * FROM Client ";
                                Statement st = connection.createStatement();
                                ResultSet rs = st.executeQuery(query);
                    			while(rs.next())
                    			{
                                              		
                    		%>                            
                              <option>
                              <%=rs.getString("Name") %>
                              </option>
                              <%
                              
                    			}

                			} catch (Exception e) {
                				e.printStackTrace();
                				}	
                			%>
                            </select>
                          </div>
                        </div>
                      </div>
                    
                    
                    
                                            <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Project</label>
                          <div class="col-sm-9">                       
                
                            <select class="form-control" name="Project">
                            <% 
                            
                          
                            
                            try{ 
                    			Connection connection=DBConnector.getConnection();
                    			String query= "SELECT * FROM Projects ";
                                Statement st = connection.createStatement();
                                ResultSet rs = st.executeQuery(query);
                    			while(rs.next())
                    			{
                                              		
                    		%>                            
                              <option>
                              <%=rs.getString("ProjectTitle") %>
                              </option>
                              <%
                              
                    			}

                			} catch (Exception e) {
                				e.printStackTrace();
                				}	
                			%>
                            </select>
                          </div>
                        </div>
                      </div>
                      
                    </div>
                    
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Rating</label>
                          <div class="col-sm-9">                       
                
                            <select class="form-control" name="Rating">
                              <option>Good </option>
                              <option>Okay</option>
                              <option>Poor</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      </div>
                    </div>
                <!--    </form> -->
                <div class="form-group">
                  <input type="submit" value="Update" id="submit" class="btn btn-primary submit-btn btn-block" >
                </div>
                  
                  
              </form>
            </div>
            
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
               <footer class="footer">
            <div class="container-fluid clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019
              <a href="#" target="_blank">Webb&Vetted</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Designed by <br/> Baone Nelson
            </span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="../Support/vendors/js/vendor.bundle.base.js"></script>
  <script src="../Support/vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="../Support/js/off-canvas.js"></script>
  <script src="../Support/js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
</body>

</html>
