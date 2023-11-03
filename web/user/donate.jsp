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
        .card {
            border: none;
        }

        .card-header {
            background-color: #007BFF;
            color: #fff;
        }

        .form-control {
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        label {
            font-weight: bold;
        }

        .btn-success {
            background-color: #28a745;
            color: #fff;
        }

        .btn-success:hover {
            background-color: #218838;
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
    </style>
     <script type="text/javascript">  
            
        function validateuser(){  
            
        var name=document.myform.name.value;
        var mobile=document.myform.mobile.value;
        var bloodGroup=document.myform.bloodGroup.value;
        var location=document.myform.location.value;
        var age=document.myform.age.value;  
        var bloodUnits=document.myform.bloodUnits.value;
        var center=document.myform.center.value;
        
        var emailpattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
        var letter = /[a-z]/;
        var upper = /[A-Z]/;
        var number = /[0-9]/;

        if (name===""){ 
            Swal.fire('Name Cannot be empty');
                     
          return false;  
        }
        if(mobile===""){
            Swal.fire("Provide Mobile number");
            return false;
        }
        if(mobile.length!==10){
            Swal.fire("Missing length of Mobile number");
            return false;
        }
         if(isNaN(mobile)){
            Swal.fire("Invalid Mobile number");
            return false;
        }
        if (location===""){
            Swal.fire("Location cannot be blank");            
            return false;
        }
        if (center===""){
            Swal.fire("Center cannot be blank");            
            return false;
        }
        if (age===""){
            Swal.fire("Age cannot be blank");            
            return false;
        }
        if (bloodGroup===''){
           Swal.fire("Blood Group should not be empty");          
            return false;
            }
       if (bloodUnits===''){
           Swal.fire("Blood Units should not be empty");          
            return false;
            }
    }  
    </script>
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
                <a href="donor-dashboard.jsp" class="nav-item nav-link">Dashboard</a>
                
                <a href="donate.jsp" class="nav-item nav-link active">Donate</a>
                
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


    


    <div class="container my-4">
        <div class="row">
            <div class="col-5">
                <img src="img/bd13.jpg" alt="" width="450px" class="">
            </div>
            <div class="col-md-7 mx-auto mb-4">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <h5 class="mb-0">Donor Form</h5>
                    </div>
                    <div class="card-body border border-dark p-3" style="box-shadow: 0px 10px 10px grey;">
                         <form action="donateAction.jsp" method="POST" id="myform" onsubmit="return validateuser()"  name="myform" class="contactForm">
                      
                            <!-- Row 1 -->
                            <div class="row mb-4">
                                <!-- Full Name -->
                                <div class="col">
                                    <div class="form-outline">
                                        <input type="text" id="name" name="name" class="form-control"  />
                                        <label class="form-label" for="name">Full Name</label>
                                    </div>
                                </div>
                                <!-- Blood Group Selection -->
                                <div class="col">
                                    <div class="form-outline">
                                        <select id="bloodGroup" name="bloodGroup" class="form-control" >
                                            <option value="" disabled selected>Select Blood Group</option>
                                            <option value="A+">A+</option>
                                            <option value="A-">A-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>
                                            <option value="AB+">AB+</option>
                                            <option value="AB-">AB-</option>
                                            <!-- Add more blood group options as needed -->
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Row 2 -->
                            <div class="row mb-4">
                                <!-- Location -->
                                <div class="col">
                                    <div class="form-outline">
                                        <input type="text" id="location" name="location" class="form-control"  />
                                        <label class="form-label" for="location">Location</label>
                                    </div>
                                </div>
                                <!-- Contact Information -->
                                <div class="col">
                                    <div class="form-outline">
                                        <input type="text" id="mobile" name="mobile" class="form-control"  />
                                        <label class="form-label" for="mobile">Contact Information(Mobile no)</label>
                                    </div>
                                </div>
                            </div>
    
                            <!-- Row 3 -->
                            <div class="row mb-4">
                                <!-- Blood Units -->
                                <div class="col">
                                    <div class="form-outline">
                                        <input type="number" id="age" name="age" class="form-control"  />
                                        <label class="form-label" for="age">Age</label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-outline">
                                        <input type="number" id="bloodUnits" name="bloodUnits" class="form-control"  />
                                        <label class="form-label" for="bloodUnits">Blood Units to Donate</label>
                                    </div>
                                </div>
                            </div>
                             <div class="row mb-4">
                                <!-- Blood Units -->
                                <div class="col">
                                    <div class="form-outline">
                                        <label class="form-label" for="center">Center</label>
                                        <input type="text" id="center" name="center" class="form-control"  />
                                    </div>
                                </div>
                            </div>
        
                            <!-- Submit Button -->
                            <div class="row">
                                <div class="col text-center mb-3">
                                    <button type="submit" class="btn btn-success btn-sm  btn-block">
                                        Donate Blood
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
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