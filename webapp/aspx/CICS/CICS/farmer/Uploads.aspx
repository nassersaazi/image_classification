<%@ Page Title="Farmer Uploads Page" Language="C#"  AutoEventWireup="true" CodeBehind="Uploads.aspx.cs" Inherits="CICS.farmer.Uploads" %>


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
          <li><a href="#">Upload</a></li>
          <li><a href="#">Reports</a></li>
          <li><a href="#">Notifications</a></li>
          <li><a href="#">Logout</a></li>  
        </ul>
      </nav>
    </header>
    <section class="classify-main-section">
        <div  class="image-section">
        
       
               <h2 >Latest Uploads</h2>
             <div class="filter-section">
                    <div class="input-group filter-group">
                         <label >Start Date</label>
                         <input  type="text" placeholder="Start Date"/>
                    </div>
                    <div class="input-group filter-group">
                        <label >End Date</label>
                        <input  type="text" placeholder="End Date"/>
                    </div>
                    <div  class="input-group filter-group">
						<a class="btn" href="#">DOWNLOAD PDF</a>
					</div>
            </div>
            <div>
                    
                    <div class="upload-content">
                        <div >
                            <figure >
                                <img src="../images/cassava.png" alt="Image" class="img-fluid" width="300" height="200"/>
                                                      
                            </figure>
                            <div >
                                <span >18 Oct 2020</span>
                                <span>9,906 views</span>
                            </div>
                        </div>
                        <div >
                            <figure>
                                <img src="../images/cassava.png" alt="Image" class="img-fluid" width="300" height="200"/>
                                                        
                            </figure>
                            <div >
                                <span>14 Aug 2020</span>
                                <span>118,006 views</span>
                            </div>
                        </div>
                        
                         <div >
                            <figure>
                                <img src="../images/cassava.png" alt="Image" class="img-fluid" width="300" height="200"/>
                                                        
                            </figure>
                            <div >
                                <span>14 Aug 2020</span>
                                <span>118,006 views</span>
                            </div>
                        </div>
                         
                        </div>
            </div>  
    </div>
     
    </section>
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
