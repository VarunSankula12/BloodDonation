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
    <script type="text/javascript">  
            
        function validateuser(){  
            
        var name=document.myform.name.value;
        var mobile=document.myform.mobile.value;
        var email=document.myform.email.value;
        var address=document.myform.address.value;
        var password=document.myform.password.value;  
        var file=document.myform.file.value;
        
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
        if (address===""){
            Swal.fire("Address cannot be blank");            
            return false;
        }
        
        if (password===''){
           Swal.fire("password should not be empty");          
            return false;
            }
        
        if (!letter.test(password)) {
            Swal.fire("Please make sure password includes a lowercase letter.");
                return false;
            }
        if (!number.test(password)) {
            Swal.fire("Please make sure Password Includes a Digit");
                return false;
            }
        if (!upper.test(password)) {
            Swal.fire("Please make sure password includes an uppercase letter.");
                return false;
            } 
         if (file===''){
           Swal.fire("please upload the file it should not be empty");          
            return false;
            }
        
        
    }  
    </script>
</head>

<body>
     <script>
        var successMessage = '${sessionScope.warning}';
        if (successMessage !== '') {
            Swal.fire({
                icon: 'warning',
                title: 'Failed!',
                text: successMessage,
                confirmButtonText: 'OK'
            });

            <% session.removeAttribute("warning"); %>
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
            <a href="index.html" class="navbar-brand d-lg-none">
                <h1 class="text-primary m-0">Blood<span class="text-warning">Care</span></h1>
            </a>
            <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse"
            data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
           <div class="navbar-nav">
                        <a href="index.html" class="nav-item nav-link ">Home</a>
                        <a href="login.jsp" class="nav-item nav-link active">User</a>
                        <a href="admin-login.jsp" class="nav-item nav-link">Admin</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <a href="service.jsp" class="nav-item nav-link">Services</a>
                
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                    </div>
            <div class="ms-auto d-none d-lg-flex">
                <a class="btn btn-danger ms-2" href="register.jsp">Register Now</a>
            </div>
        </div>
    </nav>
</div>
</div>
<!-- Navbar End -->


<!-- Page Header Start -->

<!-- Page Header End -->


<!-- About Start -->
<div class="container-fluid py-5">
    <div class="container ">
        <div class="col-10 mx-auto pr-5" style="border: 1px solid #a94a4a;">
            <h2 class="text-center h2 fw-bold  mx-1 mx-md-4 mt-2 text-primary " >REGISTER</h2>
       <form action="registerAction.jsp" method="POST" id="myform" onsubmit="return validateuser()" style="margin-top:-40px" name="myform" class="contactForm form-box mainForm px-4  mb-2 pt-5" enctype="multipart/form-data"> 
                <!-- {% csrf_token %} -->
                <div class="form-row row mb-2">
                    <div class="col-md-5 mx-auto">                       
                        <label for="name" class="m-1  ">Full Name :</label> 
                        <input type="text" id="name" class="form-control" placeholder="ex.@name" name="name">
                    </div>
                    <div class="col-md-5 mx-auto">
                        <label for="email" class="m-1">Email :</label> 
                        <input type="text" id="email" class="form-control" placeholder="ex. name@gmail.com" name="email">
                    </div>
                </div>
                <div class="form-row row mb-2">
                    <div class="col-md-5 mx-auto">
                        <label for="mobile" class="m-1">Phone :</label>
                        <input type="number" id="mobile" class="form-control" placeholder="ex. +91 XXXX-XXXXX" name="mobile">
                        <p class="text-danger ml-2" style="font-size: 10px; font-weight: bold; position: absolute;">*Otp will be sent to this mobile number</p>
                    </div>
                     <div class="col-md-5 mx-auto">
                        <label for="address" class="m-1">Addresss  :</label> 
                        <input type="text" id="address" class="form-control" placeholder="ex@Hyderabad" name="address">
                    </div>
                    
                </div>
                <div class="form-row row mb-2">
                    <div class="col-md-5 mx-auto">
                        <label for="password" class="m-2">Password :</label> 
                        <input type="password" id="password" class="form-control" name="password">
                    </div>
                    <div class="col-md-5 mx-auto">
                        <label for="file" class="m-1">Upload Profile :</label>
                        <input type="file" id="file" class="form-control" placeholder="ex@Content marketing" name="file">
                    </div>
                    
                </div> 
                
                <div class="mt-4 text-center" value="">
                    <button class="btn btn-danger  col-md-5 justify-content-center" type="submit">Register</button>
                </div> 
                <p class=" pt-3 text-center">Already have an account ? <a href="login.jsp">Login</a></p>  
            </form> 
        </div>
    </div>
</div>
<!-- About End -->


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
                            <a class="btn btn-link" href="index.html">Home</a>
                            <a class="btn btn-link" href="login.jsp">User</a>
                            <a class="btn btn-link" href="admin-login.jsp">Admin</a>
                            <a class="btn btn-link" href="about.jsp">About Us</a>
                            <a class="btn btn-link" href="service.jsp">Our Services</a>
                            <a class="btn btn-link" href="contact.jsp">Contact Us</a>
                            
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