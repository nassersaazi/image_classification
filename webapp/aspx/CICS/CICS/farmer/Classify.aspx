<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Classify.aspx.cs" Inherits="CICS.farmer.Classify" %>

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
            <nav class="navbar navbar-expand-lg">
                <a class="brand-logo" href="#">
                    <img src="../images/Logo.png">
                    
                </a>
                
                <div > 
                  <ul >
                    
                    <li class="list-inline-item" >
                      <a class="nav-link" id="navlinks" href="#">Home</a>
                    </li>
                    <li class="list-inline-item" >
                        <a class="nav-link" id="navlinks" href="#">Uploads</a>
                    </li>
                    <li class="list-inline-item" >
                        <a class="nav-link" id="navlinks" href="#">Notifications</a>
                    </li>
                    <li class="list-inline-item" >
                        <a class="nav-link" id="navlinks" href="#">Username</a>
                    </li>
                  </ul>
                  
                </div>
              </nav>
        </div>
		<!-- Navbar Stop -->
		<div class="row">
            <div class="col-md-3">

            </div>
			<div class="col-md-6" id="main-section">
				<h1 class="text-center">Classification</h1>
				<div class="col-xl-12 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                    <figure class="effect-ming tm-video-item">
                        <img src="../images/cassava.png" alt="Image" class="img-fluid">
                                            
                    </figure>
                    <p class="text-center"><span>class: <b>CMD</b></span></p>
                    <p class="text-center">
                        The primary benefit the Single-Responsibility Principle gives 
                        you is high-cohesion, low-coupling code. Cohesion refers to 
                        the degree with which elements of code belong together. 
                    </p>
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
    </form>
</body>
</html>
