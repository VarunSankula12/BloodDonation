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
                        <a href="main-dashboard.jsp" class="nav-item nav-link active">Dashboard</a>
                       
                       
                
                        <a href="myprofile.jsp" class="nav-item nav-link">My Profile</a>
                    </div>
                    <div class="ms-auto d-none d-lg-flex">
                        <a class="btn btn-lg btn-danger ms-2" href="../login.jsp">Log out</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->


    
    <div class="row container col-md-11 m-auto my-5">
        <h3 class="mb-5">Please Choose an Option</h3>
        <div class="card col-lg-6 px-5">
            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                <img src="img/bd9.jpg" class="img-fluid"/>
               
            </div>
            <div class="card-body">
                <h4 class="card-title">I Want to Be a Donor</h4>
                <p class="alert alert-danger">Becoming a blood donor is a noble choice. By selecting this option, you're taking the first step to save lives. Your generosity can make a significant impact on the blood donation community and help those in need.  </p>
                <div class="text-center mt-4">
                    <a href="donor-dashboard.jsp" class="btn btn-danger col-6"><strong>Next</strong></a>
                </div>
            </div>
        </div>
        
        <div class="card col-lg-6 px-5">
            <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                <img src="img/bd10.jpg" class="img-fluid"/>
                
            </div>
            <div class="card-body">
                <h4 class="card-title">I Need Blood (Recipient)</h4>
                <p class="alert alert-dark">If you're in need of blood, you're not alone. By choosing this option, you're reaching out to our community for support during a challenging time. We understand the urgency of your situation, and we're here to assist you in finding the blood you require.  </p>
                <div class="text-center mt-4">
                    <a href="user-dashboard.jsp" class="btn btn-danger col-6"><strong>Next</strong></a>
                </div>
            </div>
        </div>
    </div>


    

   


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
                            <a class="btn btn-link" href="main-dashboard.jsp">Dashboard</a>
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