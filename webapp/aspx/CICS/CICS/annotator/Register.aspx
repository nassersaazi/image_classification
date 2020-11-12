<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CICS.annotator.Ri" %>

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
            <nav class="navbar navbar-right ">
                <a class="brand-logo" href="#">
                    <img src="../images/Logo.png">
                    
                </a>
                
                
              </nav>
        </div>
		<!-- Navbar Stop -->
		<div class="row">
			<div class="col-md-7">
				<h1 class="text-left">Cassava Image Classification System</h1>
				<p class="text-left">
                    The primary benefit the Single-Responsibility Principle gives 
                    you is high-cohesion, low-coupling code. Cohesion refers to 
                    the degree with which elements of code belong together. 
                </p>
				<p class="text-left">Coupling is the manner of independence between modules of a programming system. 
					This means that high coupling means that modules are more dependent upon one another, 
					and low coupling means they are less dependent.</p>
			</div>
			<div class="col-md-5">
				
				<!-- close -->
				<!-- make another column for textbox and label -->
				<div class="inputs">
                    <div class="row">
                        <label class="label col-md-12 control-label">Username</label>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="text"	class="form-control" name="Username" placeholder="username">
                        </div>
                    </div>
                    <div class="row">
                        <label class="label col-md-12 control-label">Email</label>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="email"	class="form-control" name="Email" placeholder="email">
                        </div>
                    </div>
                    <div class="row">
                        <label class="label col-md-12 control-label">Area</label>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="text"	class="form-control" name="Area" placeholder="area">
                        </div>
                    </div>
                    <div class="row">
                        <label class="label col-md-12 control-label">Phone</label>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="text"	class="form-control" name="Phone" placeholder="e.g +256 760 454 638">
                        </div>
                    </div>
                </div>
                <div class="row">
					
					<div class="col-md-12 login">
						<a href="#"><div class="btn btn-info btn-block">REGISTER</div></a>
					</div>
				</div>
				
			</div>
        </div>
        
    </div>
    <!-- Footer -->
<footer  class="footer">
    </form>
</body>
</html>
