<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
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
          <li class="breadcrumb-item active">Reports</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    <section class="section dashboard">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Blood Units by Blood Group</h5>
        
                    <!-- Bar Chart -->
                    <canvas id="barChart" style="max-height: 400px;"></canvas>
<%
        int availableblood=0;int Ap=0,An=0,Bp=0,Bn=0,ABp=0,ABn=0,Op=0,On=0;
        String val="";int units=0;int sumAp=0;int sumAn=0;int sumBp=0;int sumBn=0;
        int sumABp=0;int sumABn=0;
        int sumOp=0;int sumOn=0;
        String q1="SELECT * FROM donate WHERE status='Available'";
        adminDao obj=new adminDao();
        ResultSet rs=obj.Retrieve(q1);
        while(rs.next()){
            val=rs.getString("bloodgroup");
            availableblood++;
            if(val.equalsIgnoreCase("A+")){
                units=Integer.parseInt(rs.getString("bloodunits"));
                sumAp=sumAp+units;
            }else if(val.equalsIgnoreCase("A-")){
                units=Integer.parseInt(rs.getString("bloodunits"));
                sumAn=sumAn+units;
            }else if(val.equalsIgnoreCase("B+")){
                units=Integer.parseInt(rs.getString("bloodunits"));
                sumBp=sumBp+units;
            }else if(val.equalsIgnoreCase("B-")){
                units=Integer.parseInt(rs.getString("bloodunits"));
                sumBn=sumBn+units;
            }else if(val.equalsIgnoreCase("AB+")){
            units=Integer.parseInt(rs.getString("bloodunits"));
                sumABp=sumABp+units;
            }else if(val.equalsIgnoreCase("AB-")){
            units=Integer.parseInt(rs.getString("bloodunits"));
                sumABn=sumABn+units;
            }else if(val.equalsIgnoreCase("O+")){
            units=Integer.parseInt(rs.getString("bloodunits"));
                sumOp=sumOp+units;
            }else if(val.equalsIgnoreCase("O-")){
            units=Integer.parseInt(rs.getString("bloodunits"));
                sumOn=sumOn+units;
            }
        }

%>                    
                    <script>
                        document.addEventListener("DOMContentLoaded", () => {
                            new Chart(document.querySelector('#barChart'), {
                                type: 'bar',
                                data: {
                                    labels: ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'], // Blood group names
                                    datasets: [{
                                        label: 'Number of Units',
                                        data: [<%=sumAp%>, <%=sumAn%>, <%=sumBp%>, <%=sumBn%>, <%=sumABp%>, <%=sumABn%>, <%=sumOp%>, <%=sumOn%>], // Number of units for each blood group
                                        backgroundColor: [
                                            'rgba(255, 99, 132, 0.6)',
                                            'rgba(255, 159, 64, 0.6)',
                                            'rgba(255, 205, 86, 0.6)',
                                            'rgba(75, 192, 192, 0.6)',
                                            'rgba(54, 162, 235, 0.6)',
                                            'rgba(153, 102, 255, 0.6)',
                                            'rgba(201, 203, 207, 0.6)',
                                            'rgba(255, 99, 132, 0.6)'
                                        ],
                                        borderColor: [
                                            'rgb(255, 99, 132)',
                                            'rgb(255, 159, 64)',
                                            'rgb(255, 205, 86)',
                                            'rgb(75, 192, 192)',
                                            'rgb(54, 162, 235)',
                                            'rgb(153, 102, 255)',
                                            'rgb(201, 203, 207)',
                                            'rgb(255, 99, 132)'
                                        ],
                                        borderWidth: 1
                                    }]
                                },
                                options: {
                                    scales: {
                                        y: {
                                            beginAtZero: true,
                                            title: {
                                                display: true,
                                                text: 'Number of Units'
                                            }
                                        },
                                        x: {
                                            title: {
                                                display: true,
                                                text: 'Blood Group'
                                            }
                                        }
                                    },
                                    plugins: {
                                        legend: {
                                            display: false
                                        }
                                    }
                                }
                            });
                        });
                    </script>
                    <!-- End Bar Chart -->
        
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
  <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>


  
</body>

</html>