<%@page import="com.codebook.user.userDonateBlood"%>
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
       

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        /* Search input styles */
        #search {
            width: 100%;
            padding: 10px;
            font-size: 16px;
        }

        /* Button styles */
        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
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
                        <a href="main-dashboard.jsp" class="nav-item nav-link ">Dashboard</a>
                       
                       
                
                        <a href="myprofile.jsp" class="nav-item nav-link active">My Profile</a>
                    </div>
                    <div class="ms-auto d-none d-lg-flex">
                        <a class="btn btn-lg btn-danger ms-2" href="../login.jsp">Log out</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->
<%
    String email=(String)session.getAttribute("email");
    Blob image=null;
    String query="SELECT * FROM  user WHERE email='"+email+"'";
    userDonateBlood obj=new userDonateBlood();
    ResultSet rs=obj.Retrieve(query);
    if(rs.next()){
    image=rs.getBlob("upload_image");
    String pic=obj.imageConversion(image);
%> 
        <div class="container rounded bg-white mb-5 border border-black" >
            <div class="row ">
              <h3 class="text-center">PROFILE </h3>
                <div class="col-md-6 mx-auto px-5 pb-3 mt-3" style="border-bottom: 2px solid rgb(146, 71, 71); ">
                    <div class="d-flex align-items-center">
                        <div class="image ml-5">
                            <img src='data:image/jpeg;base64,<%= pic %>'class="" style="border-radius:50%; box-shadow: 6px 5px 8px grey;" width="120px">
                            
                        </div>
                        <div class="mx-5">
                            <h4 class="mb-0 mt-0"><%=rs.getString("name")%></h4>
                            <span><%=rs.getString("email")%></span>
                        </div>
                    </div>
                </div>
                <div class="col-md-10 mx-auto border border-black">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h3 class="text-right">Profile Settings :</h3>
                        </div>
                        <form action="myprofileAction.jsp" class="form-box mainForm px-4  mb-2 pt-5" style="margin-top:-40px" method="post" enctype="multipart/form-data">
                          
                            <div class="form-row row mb-2">
                                <div class="col-md-5 mx-auto">                       
                                    <label for="name" class="m-1  ">Full Name :</label> 
                                    <input type="text" id="name" class="form-control"  name="name" value="<%=rs.getString("name")%>">
                                </div>
                                <div class="col-md-5 mx-auto">
                                    <label for="email" class="m-1">Email :</label> 
                                    <input type="text" id="email" class="form-control"  readonly name="email" value="<%=rs.getString("email")%>">
                                </div>
                            </div>
                            <div class="form-row row mb-2">
                                <div class="col-md-5 mx-auto">
                                    <label for="mobile" class="m-1">Phone :</label>
                                    <input type="number" id="mobile" class="form-control"  name="mobile" value="<%=rs.getString("mobile")%>">
                                </div>
                                 <div class="col-md-5 mx-auto">
                                    <label for="ddress" class="m-1">Address  :</label> 
                                    <input type="text" id="address" class="form-control"  name="address" value="<%=rs.getString("address")%>">
                                </div>
                            </div>
                            <div class="form-row row mb-2">
                               
                               <div class="col-11 mx-auto">
                                    <label for="chooseCategory" class="m-1">Upload Profile :</label>
                                    <input type="file" id="file" class="form-control"  name="file" >
                                </div>
                            </div>
                            <div class="mt-5 text-center" value="Submit Button">
                                <input type="submit" class="btn btn-danger btn-pill col-md-4 justify-content-center text fw-bold" value="Update Profile">
                            </div> 
                               </form>  
                            </div> 
                    </div>
                </div>
                <p class="text-center m-2" style="font-size: 12px; color: tomato;">You can update everything except your email.</p>
            </div>           
<%
    }
%>     
    


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