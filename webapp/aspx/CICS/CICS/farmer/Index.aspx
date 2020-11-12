<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CICS.farmer.Index" %>

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
            <nav class="navbar  ">
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
				<h1 class="text-center">Cassava Image Classification System</h1>
				<p class="text-center">
                    The primary benefit the Single-Responsibility Principle gives 
                    you is high-cohesion, low-coupling code. Cohesion refers to 
                    the degree with which elements of code belong together. 
                </p>
				<p class="text-center">Coupling is the manner of independence between modules of a programming system. 
					This means that high coupling means that modules are more dependent upon one another, 
                    and low coupling means they are less dependent.</p>
                    <div class="row">
					
                        <div class="col-md-12 login">
                            <a href="#"><div class="btn btn-info btn-block">UPLOAD IMAGE</div></a>
                        </div>
                    
                    </div> 
                    <h1 class="text-center"><a href="#">Become an annotator</a></h1>   
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
