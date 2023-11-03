<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  
  <title>Admin</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  
  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
  
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <script type="text/javascript">  
            
        function validateuser(){  
            
        var name=document.myform.name.value;
        var contact=document.myform.contact.value;
        var bloodgroup=document.myform.bloodgroup.value;
        var location=document.myform.location.value;
        var age=document.myform.age.value;  
        var bloodUnits=document.myform.bloodUnits.value;
        var email=document.myform.email.value;
        
        var emailpattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
        var letter = /[a-z]/;
        var upper = /[A-Z]/;
        var number = /[0-9]/;

        if (name===""){ 
            Swal.fire('Name Cannot be empty');
                     
          return false;  
        }
        if (email===""){
            Swal.fire("E-mail cannot be empty");           
            return false;
        }
        if(!email.match(emailpattern)){
            Swal.fire("Invalid Email format");             
            return false;
        }
        if(contact===""){
            Swal.fire("Provide Mobile number");
            return false;
        }
        if(contact.length!==10){
            Swal.fire("Missing length of Mobile number");
            return false;
        }
         if(isNaN(contact)){
            Swal.fire("Invalid Mobile number");
            return false;
        }
        if (location===""){
            Swal.fire("Location cannot be blank");            
            return false;
        }
        if (age===""){
            Swal.fire("Age cannot be blank");            
            return false;
        }
        if (bloodgroup===''){
           Swal.fire("Blood Group should not be empty");          
            return false;
            }
         if (bloodUnits===''){
           Swal.fire("Blood Units cannot be empty");          
            return false;
            }
    }  
    </script>
</head>

<body>
  
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    
    <div class="d-flex align-items-center justify-content-between">
        <a href="Admin-Dashboard.jsp" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Admin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->
    
    
    
    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
        <li class="nav-item dropdown pe-3">
          
          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">Admin</span>
          </a><!-- End Profile Iamge Icon -->
          
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            
            <li>
              <a class="dropdown-item d-flex align-items-center" href="../admin-login.jsp">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>
            
          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->
        
      </ul>
    </nav><!-- End Icons Navigation -->
    
  </header><!-- End Header -->
  
  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">
    
    <ul class="sidebar-nav" id="sidebar-nav">
      
      <li class="nav-item">
        <a class="nav-link " href="Admin-Dashboard.jsp">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->
      
      
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Blood Management</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="add-blood.jsp">
              <i class="bi bi-circle"></i><span>Add Blood Details</span>
            </a>
          </li>
          <li>
            <a href="edit-blood.jsp">
              <i class="bi bi-circle"></i><span>Edit Blood Details</span>
            </a>
          </li>
          
        </ul>
      </li><!-- End Forms Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>Blood Request Management</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="blood-request.jsp">
              <i class="bi bi-circle"></i><span>Blood Request</span>
            </a>
          </li>
          
        </ul>
          
      </li><!-- End Tables Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-people-fill"></i><span>Donor Management </span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="donor-details.jsp">
              <i class="bi bi-circle"></i><span>Donor Details</span>
            </a>
          </li>
          
        </ul>
      </li><!-- End Charts Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-bar-chart-fill"></i></i><span>Reports</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="available-blood.jsp">
              <i class="bi bi-circle"></i><span>Available Blood</span>
            </a>
          </li>
          <li>
            <a href="pending-requests.jsp">
              <i class="bi bi-circle"></i><span>Pending/Fulfilled Requests</span>
            </a>
          </li>
         
          <li>
            <a href="blood-donation.jsp">
              <i class="bi bi-circle"></i><span>Blood Donors/Recipient</span>
            </a>
          </li>
        </ul>
      </li><!-- End Icons Nav -->
      
      
    </ul>
    
  </aside><!-- End Sidebar-->
  
  <main id="main" class="main">
    
    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Edit Blood Details</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    <section class="section dashboard">
        <div class="container my-4">
            <div class="row">
                <div class="col-5">
                    <img src="img/bd13.jpg" alt="" width="450px" class="">
                </div>
                <div class="col-md-12 mx-auto mb-4">
                    <div class="card mb-4">
                        <div class="card-header py-3">
                            <h5 class="mb-0">Edit Blood Details</h5>
                        </div>
                        <div class="card-body border border-dark p-5" style="box-shadow: 0px 10px 10px grey;">
<%
        String name=request.getParameter("name");
        String bloodgroup=request.getParameter("bloodgroup");
        String location=request.getParameter("location");
        String mobile=request.getParameter("mobile");
        String age=request.getParameter("age");
        String bloodunits=request.getParameter("bloodunits");
        String email=request.getParameter("email");
%>                            
                        <form action="edit2Action.jsp" method="POST" id="myform" onsubmit="return validateuser()"  name="myform" class="contactForm">   
                                <!-- Row 1 -->
                                <div class="row mb-4">
                                    <!-- Full Name -->
                                    <div class="col">
                                        <div class="form-outline">
                                            <input type="text" id="name" name="name" class="form-control" value="<%= name%>" readonly   />
                                            <label class="form-label" for="fullName">Full Name</label>
                                        </div>
                                    </div>
                                    <!-- Blood Group Selection -->
                                    <div class="col">
                                        <div class="form-outline">
                                            <input type="text" id="bloodgroup" name="bloodgroup" value="<%= bloodgroup%>" class="form-control" />
                                            <label class="form-label" for="fullName">Blood Group</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- Row 2 -->
                                <div class="row mb-4">
                                    <!-- Location -->
                                    <div class="col">
                                        <div class="form-outline">
                                            <input type="text" id="location" name="location" value="<%= location%>" class="form-control"   />
                                            <label class="form-label" for="location">Location</label>
                                        </div>
                                    </div>
                                    <!-- Contact Information -->
                                    <div class="col">
                                        <div class="form-outline">
                                            <input type="text" id="contact" name="contact" value="<%= mobile%>" class="form-control" readonly  />
                                            <label class="form-label" for="contact">Contact Information</label>
                                        </div>
                                    </div>
                                </div>
        
                                <!-- Row 3 -->
                                <div class="row mb-4">
                                    <!-- Blood Units -->
                                    <div class="col">
                                        <div class="form-outline">
                                            <input type="number" id="age" name="age" value="<%= age%>" class="form-control" />
                                            <label class="form-label" for="bloodUnits">Age</label>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-outline">
                                            <input type="number" id="bloodUnits" name="bloodUnits" value="<%= bloodunits%>" class="form-control"  />
                                            <label class="form-label" for="bloodUnits">Blood Units to Donate</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-4">
                                    <!-- Blood Units -->
                                    <div class="col">
                                        <div class="form-outline">
                                            <input type="text" id="email" name="email" value="<%= email%>" class="form-control"  />
                                            <label class="form-label" for="bloodUnits">Email</label>
                                        </div>
                                    </div>
                                </div>            
            
                                <!-- Submit Button -->
                                <div class="row">
                                    <div class="col text-center mb-3">
                                        <button type="submit" class="btn btn-primary   btn-block">
                                            Update
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
  </main><!-- End #main -->
  
  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Codebook</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://codebook.in/" target="_blank">Codebook</a>
    </div>
  </footer><!-- End Footer -->
  
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  
  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
</body>

</html>