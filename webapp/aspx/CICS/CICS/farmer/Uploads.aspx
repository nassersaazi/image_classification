<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uploads.aspx.cs" Inherits="CICS.farmer.Uploads" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HarvestMore</title>
    <link rel="stylesheet" href="../Content/Bootstrap.css">
	<!-- <link rel="stylesheet" href="js/Bootstrap.js">   -->
	<link rel="stylesheet" href="../Content/style.css">
</head>
<body>
    <form id="form1" runat="server">
    <div class ="container ">
		<!-- Navbar Start -->
		<div class="header">
            <nav class="navbar ">
                <a class="brand-logo" href="#">
                    <img src="../images/Logo.png">
                    
                </a>
                
                <div > 
                  <ul class="list-inline" >
                    
                    <li  >
                      <a  href="#">Home</a>
                    </li>
                    <li class="list-inline-item" >
                        <a href="#">Uploads</a>
                    </li>
                    <li class="list-inline-item" >
                        <a  href="#">Notifications</a>
                    </li>
                    <li class="list-inline-item" >
                        <a  href="#">Username</a>
                    </li>
                  </ul>
                  
                </div>
              </nav>
        </div>
		<!-- Navbar Stop -->
		<div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="row">
                    <label class="label col-md-2 control-label">Start Date</label>
                    <div class="col-md-2">
                        <input class="form-control input--style-2 js-datepicker" type="text" placeholder="Start Date" >
                    </div>
                    <label class="label col-md-2 control-label">End Date</label>
                    <div class="col-md-2">
                        <input class="form-control  input--style-2 js-datepicker" type="text" placeholder="End Date" >
                    </div>
                    <div class="col-md-2 login">
						<a href="#"><div class="btn btn-info">DOWNLOAD PDF</div></a>
					</div>
                    
                </div>
                <div class="row">
                    <div class="container-fluid tm-container-content tm-mt-60">
                        <div class="row mb-4">
                            <h2 class="col-6 tm-text-primary">
                                Latest Uploads
                            </h2>
                            
                        </div>
                        <div class="row tm-mb-90 tm-gallery">
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                                      
                                </figure>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div>
                            
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                                        
                                </figure>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">14 Aug 2020</span>
                                    <span>118,006 views</span>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                                       
                                </figure>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">9 Aug 2020</span>
                                    <span>121,300 views</span>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                                        
                                </figure>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">3 Aug 2020</span>
                                    <span>21,204 views</span>
                                </div>
                            </div>  
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                                        
                                </figure>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">3 Aug 2020</span>
                                    <span>21,204 views</span>
                                </div>
                            </div> 
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                                       
                                </figure>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">3 Aug 2020</span>
                                    <span>21,204 views</span>
                                </div>
                            </div> 
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                                      
                                </figure>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">3 Aug 2020</span>
                                    <span>21,204 views</span>
                                </div>
                            </div> 
                            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                                      
                                </figure>
                                <div >
                                    <span >3 Aug 2020</span>
                                    <span>21,204 views</span>
                                </div>
                            </div> 
                                   
                        </div> <!-- row -->
                        
                    </div> 
                </div>
            </div>

            
             
        </div>
            
        </div>
        
    </div>
    <!-- Footer -->
<footer  class="footer">

    <!-- Footer Elements -->
    <div class="container">
        
      <ul class="list-unstyled list-inline text-center">
        <li class="list-inline-item">
            <a href="#">About Us</a>
        </li>
        <li class="list-inline-item">
            <a href="#">Contact</a>
        </li>
        <li class="list-inline-item">
            &copy; 2020 Copyright:<a href="#"> HarvestMore.com</a>
        </li>
        
      </ul>
      
    </div>
    <!-- Footer Elements -->
  
    <!-- Copyright -->
    <div >
    </div>
    <!-- Copyright -->
  
  </footer>
  <!-- Footer -->
  <!-- Jquery JS-->
  <script src="../jquery/jquery.min.js"></script>
  <!-- Vendor JS-->
  <!-- <script src="vendor/select2/select2.min.js"></script> -->
  <script src="../datepicker/moment.min.js"></script>
  <script src="../datepicker/daterangepicker.js"></script>

  <!-- Main JS-->
  <script src="../js/global.js"></script>
    </form>
</body>
</html>
