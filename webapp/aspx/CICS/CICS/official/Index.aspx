<%@ Page Title="Official Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CICS.official.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link href="../style.css" rel="stylesheet"/>
    <link href="../join.css" rel="stylesheet"/>
    <title>HarvestMore - Login</title>
</head>
<body class="full-height-grow">
     <div class="container full-height-grow">
    <header class="main-header">
      <a href="/" class="brand-logo">
        <%--<img src="images/logo.png"/>--%>
        <div class="brand-logo-name">HarvestMore</div>
      </a>
      <nav class="main-nav">
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Reports</a></li>
          <li><a href="#">Notifications</a></li>
          <li><a href="#">Logout</a></li>  
        </ul>
      </nav>
    </header>
    
         <main>
        <section class="join-main-section">
           <div class="add-user">
			    <div >
                    <a class="btn" href="#add-user">VIEW REPORTS</a>
				    </div>
			</div>
			<div class="deactivate-user">
						<a class="btn" href="#deactivate-user">SEND NOTIFICATIONS</a>
				
                </div>
               
              
				
        </section>



        

    </main>
  </div>

    <div class="join-page-circle-1"></div>
  <div class="join-page-circle-2"></div>

   
    <footer class="main-footer">
    <div class="container">
      <nav class="footer-nav">
        <ul>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </nav>
     
    </div>
  </footer>
</body>
</html>


