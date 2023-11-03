<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.sql.*"%>
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
  
</head>

<body>
  <script>
        var successMessage = '${sessionScope.success}';
        if (successMessage !== '') {
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("success"); %>
        }
          
    </script>
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
          <li class="breadcrumb-item"><a href="Admin-Dashboard.jsp">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
<%
        adminDao obj=new adminDao();
        String q3="SELECT COUNT(name) FROM donate";
        int don=obj.RetrieveCount(q3);
        String q4="SELECT COUNT(donorname) FROM donatenow WHERE status='Accepted'";
        int don1=obj.RetrieveCount(q4);
        int donaters=don+don1;
        String q1="SELECT COUNT(name) FROM requestblood";
        int req=obj.RetrieveCount(q1);
        String q2="SELECT COUNT(DonorName) FROM bloodmatching WHERE status='Accepted'";
        int req1=obj.RetrieveCount(q2);
        int requesters=req+req1;
        String q5="SELECT COUNT(name) FROM requestblood WHERE status='PENDING'";
        int req2=obj.RetrieveCount(q5);
        String q6="SELECT COUNT(name) FROM requestblood WHERE status='ACCEPTED'";
        int req9=obj.RetrieveCount(q6);
        int val=0;int count=0;
        String q9="SELECT * FROM donate WHERE status='Available'";
        ResultSet rs=obj.Retrieve(q9);
        while(rs.next()){
            val=Integer.parseInt(rs.getString("bloodunits"));
            count=count+val;
        }
        String temp="";int flat=0;
        String q11="SELECT COUNT(name) FROM donate WHERE bloodgroup='O-'";
        int d1=obj.RetrieveCount(q11);
        String q12="SELECT COUNT(donorname) FROM donatenow WHERE bloodgroup='O-'";
        int d2=obj.RetrieveCount(q12);
        int donaters1=d1+d2;
        

%>       
    
    <section class="section dashboard">
      <div class="row">
        
        <!-- Left side columns -->
        <div class="col-md-12">
          <div class="row">
            
            <!-- Sales Card -->
            <div class="col-md-4">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title">Total Donors </h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%=donaters%></h6>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- End Sales Card -->
                      
            <!-- Revenue Card -->
            <div class="col-md-4">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Total Recipitents</h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%=requesters%></h6>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- End Revenue Card -->
                      
            <!-- Customers Card -->
            <div class="col-md-4">
              <div class="card info-card customers-card">
                
                <div class="card-body">
                  <h5 class="card-title">Pending Blood Requests</h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-person-fill-exclamation"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%=req2%></h6>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- End Customers Card -->
          </div>
          
          <div class="row">
            
            <!-- Sales Card -->
            <div class="col-md-4">
              <div class="card info-card sales-card">
                
                
                
                <div class="card-body">
                  <h5 class="card-title">Fulfilled Blood Requests</h5>
                  
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-person-fill-check"></i>

                    </div>
                    <div class="ps-3">
                      <h6><%=req9%></h6>
                      
                    </div>
                  </div>
                </div>
                
              </div>
            </div><!-- End Sales Card -->
            
            <!-- Revenue Card -->
            <div class="col-md-4">
              <div class="card info-card revenue-card">
                
                
                <div class="card-body">
                  <h5 class="card-title">Blood Units in Stock </span></h5>
                  
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-heart-pulse-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%=count%></h6>
                      
                    </div>
                  </div>
                </div>
                
              </div>
            </div><!-- End Revenue Card -->
            
            <!-- Customers Card -->
            <div class="col-md-4">
              
              <div class="card info-card customers-card">
                
                
                
                <div class="card-body">
                  <h5 class="card-title">Universal Donors (O-)</h5>
                  
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-person-arms-up"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%=donaters1%></h6>
                      
                    </div>
                  </div>
                  
                </div>
              </div>
              
            </div><!-- End Customers Card -->
            
            
            
            
            
            
          </div>
        </div><!-- End Left side columns -->
        
        
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