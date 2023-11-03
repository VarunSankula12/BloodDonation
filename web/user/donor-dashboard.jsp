<%@page import="com.codebook.admin.adminDao"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <meta charset="utf-8">
    <title>BloodLink</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Red+Rose:wght@600;700&display=swap"
    rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    
    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    
    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
    <style>
        .rounded {
            border-radius: 5px !important;
        }
        .bg-light {
            background-color: #f7f8fa !important;
        }
        
        
        
        
        
        .btn {
            padding: 8px 20px;
            outline: none;
            text-decoration: none;
            font-size: 16px;
            letter-spacing: 0.5px;
            transition: all 0.3s;
            font-weight: 600;
            border-radius: 5px;
        }
        .btn-primary {
            background-color: #6dc77a !important;
            border: 1px solid #6dc77a !important;
            color: #fff !important;
            box-shadow: 0 3px 7px rgb(109 199 122 / 50%);
        }
        
        a {
            text-decoration:none;    
        }
    </style>
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
    <script>
        var successMessage = '${sessionScope.failed}';
        if (successMessage !== '') {
            Swal.fire({
                icon: 'error',
                title: 'Failed!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("failed"); %>
        }
          
    </script>
    <!-- Spinner Start -->
    <div id="spinner"
    class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
</div>
<!-- Spinner End -->


<!-- Topbar Start -->

<!-- Topbar End -->


<!-- Brand Start -->
<div class="container-fluid bg-primary text-white pt-4 pb-5 d-none d-lg-flex">
    <div class="container pb-2">
        <div class="d-flex align-items-center justify-content-between">
            <div class="d-flex">
                <i class="bi bi-telephone-inbound fs-2"></i>
                <div class="ms-3">
                    <h5 class="text-white mb-0">Call Now</h5>
                    <span>+91 8555 8879 86</span>
                </div>
            </div>
            <a href="index.html" class="h1 text-white mb-0">Blood<span class="" style="color: yellow">Care</span></a>
            <div class="d-flex">
                <i class="bi bi-envelope fs-2"></i>
                <div class="ms-3">
                    <h5 class="text-white mb-0">Mail Now</h5>
                    <span>info@codebook.in</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Brand End -->


<!-- Navbar Start -->
<div class="container-fluid sticky-top">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-white py-lg-0 px-lg-3">
            <a href="user-dasboard.jsp" class="navbar-brand d-lg-none">
                <h1 class="text-primary m-0">Blood<span class="text-warning">Care</span></h1>
            </a>
            <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse"
            data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
                <a href="donor-dashboard.jsp" class="nav-item nav-link active">Dashboard</a>
                
                <a href="donate.jsp" class="nav-item nav-link">Donate</a>
                
                <a href="donor-donationlist.jsp" class="nav-item nav-link">My Donations</a>
            </div>
            <div class="ms-auto d-none d-lg-flex">
                <a class="btn btn-lg btn-danger ms-2" href="main-dashboard.jsp">Go Back</a>
            </div>
        </div>
    </nav>
</div>
</div>
<!-- Navbar End -->





<div class="container mt-5 py-4 mb-4">
    <div class="row align-items-end mb-1 pb-2">
        <div class="col-md-8">
            <div class="section-title text-center text-md-start">
                <h4 class="title mb-1"> Blood Donation Opportunities</h4>
            </div>
        </div><!--end col-->
        
        <div class="col-md-4 mt-4 mt-sm-0 d-none d-md-block">
            <div class="text-center text-md-end">
                <a href="donate.jsp" class="btn btn-primary">Donate</a>
            </div>
        </div><!--end col-->
    </div><!--end row-->
<%
    String bloodgroup="";
String status = "ACCEPTED"; String val="PENDING";
String query = "SELECT * FROM requestblood WHERE status='" + status + "'";
adminDao obj = new adminDao();
ResultSet rs = obj.Retrieve(query);

int cardCount = 0; // Counter for tracking the number of cards

while (rs.next()) {
    bloodgroup=rs.getString("bloodgroup");
    if (cardCount % 3 == 0) {
%>
<div class="row">
<%
    }
%>
    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
        <div class="card border-0 bg-light rounded shadow">
            <div class="card-body p-4">
                <span class="badge rounded-pill bg-danger float-md-end mb-3 mb-sm-0">Urgent</span>
                <h5>Blood Type: <%=bloodgroup%></h5>
                <p class="text-muted mt-4">Location: <%=rs.getString("location")%></p>
                <p class="text-muted">Amount Needed: <%=rs.getString("reqbloodunits")%></p>
                <p class="text-muted">Contact : <%=rs.getString("mobile")%></p>
                <p class="text-muted">Request Date : <%=rs.getString("date")%></p>
                <div class="mt-4">
                    <a href="donateNow.jsp?bloodgroup=<%=java.net.URLEncoder.encode(bloodgroup, "UTF-8")%>&location=<%=rs.getString("location")%>&reqbloodunits=<%=rs.getString("reqbloodunits")%>&mobile=<%=rs.getString("mobile")%>&date=<%=rs.getString("date")%>" class="btn btn-primary">Donate Now</a>
                </div>
            </div>
        </div>
    </div><!--end col-->
<%
    cardCount++;

    // Close the row container after printing three cards
    if (cardCount % 3 == 0) {
%>
</div>
<div class="row">
<%
    }
}
// Close the row container if the last row didn't contain three cards
if (cardCount % 3 != 0) {
%>
</div>
<%
}
%>
   
   
</div>
<br><br>

<!-- Footer Start -->
<div class="container-fluid footer position-relative bg-dark text-white-50 py-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container">
        <div class="row g-5 py-5">
            <div class="col-lg-6 pe-lg-5">
                <a href="index.html" class="navbar-brand">
                    <h1 class="h1 text-primary mb-0">Blood<span class="" style="color: yellow">Care</span></h1>
                </a>
                <p class="fs-5 mb-4">Blood donation is a selfless act that involves voluntarily giving a portion of your own blood to be used for medical treatments and transfusions.</p>
                <p><i class="fa fa-map-marker-alt me-2"></i>Lb nagar, hyderabad</p>
                <p><i class="fa fa-phone-alt me-2"></i>+91 8555 8879 860</p>
                <p><i class="fa fa-envelope me-2"></i>info@codebook.in</p>
                
            </div>
            <div class="col-lg-6 ps-lg-5">
                <div class="row g-5">
                    <div class="col-sm-12">
                        <h4 class="text-light mb-4">Popular Links</h4>
                        <a class="btn btn-link" href="index.html">Dashboard</a>
                        <a class="btn btn-link" href="browseblood.jsp">Search Blood</a>
                        <a class="btn btn-link" href="request.jsp">Request Blood</a>
                        <a class="btn btn-link" href="myprofile.jsp">My profile</a>
                        
                        
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->


<!-- Copyright Start -->
<div class="container-fluid copyright bg-dark text-white-50 py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-center text-md-start">
                <p class="mb-0">&copy; <a href="https://codebook.in/" target="_blank">Codebook</a>. All Rights Reserved.</p>
            </div>
            
        </div>
    </div>
</div>
<!-- Copyright End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/counterup/counterup.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
</body>

</html>