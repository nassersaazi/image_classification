<%@ Page Title="Annotator Annotations Page" Language="C#"  AutoEventWireup="true" CodeBehind="Annotations.aspx.cs" Inherits="CICS.annotator.Annotator" %>

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
          <li><a href="#">Annotations</a></li>
          <li><a href="#">Logout</a></li>  
        </ul>
      </nav>
    </header>
    <section class="classify-main-section">
        <div  class="image-section">
        
       
               <h2 >My Annotations</h2>
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
                    
                    <div class="flex-row">
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-1" width="300" height="200"/>
                            <div class="blog-title">
                                <button class="btn ">PAID</button>
                                <span >18 Oct 2020</span>
                                    <span>9,906 views</span>
                            </div>
                        </div>
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-2" width="300" height="200"/>
                            <div class="blog-title">
                                <button class="btn-red">PENDING</button>
                                <span >18 Oct 2020</span>
                                    <span>9,906 views</span>
                            </div>
                        </div>
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-3" width="300" height="200"/>
                            <div class="blog-title">
                                <button class="btn ">PAID</button>
                                <span >18 Oct 2020</span>
                                    <span>9,906 views</span>
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

<%--<div class ="container ">
		
		<div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                
                <div class="row">
                    <div class="container-fluid tm-container-content tm-mt-60">
                        <div class="row mb-4">
                            <h2 class="col-6 text-center">
                                Latest Annotations
                            </h2>
                            
                        </div>
                        <div class="row tm-mb-90 tm-gallery flex-row">
                            <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid"  width="300" height="200">
                                                      
                                </figure>
                                <div >
                                    <a href="#"><div class="btn btn-info btn-block">PAID</div></a>
                                </div>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div>
                            
                            <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid"  width="300" height="200">
                                                        
                                </figure>
                                <div >
                                    <a href="#"><div class="btn btn-danger btn-block">PENDING</div></a>
                                </div>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid"  width="300" height="200">
                                                       
                                </figure>
                                <div >
                                    <a href="#"><div class="btn btn-info btn-block">PAID</div></a>
                                </div>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid"  width="300" height="200">
                                                        
                                </figure>
                                <div >
                                    <a href="#"><div class="btn btn-danger btn-block">PENDING</div></a>
                                </div>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div>  
                            <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid"  width="300" height="200">
                                                        
                                </figure>
                                <div >
                                    <a href="#"><div class="btn btn-info btn-block">PAID</div></a>
                                </div>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div> 
                            <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid"  width="300" height="200">
                                                       
                                </figure>
                                <div >
                                    <a href="#"><div class="btn btn-danger btn-block">PENDING</div></a>
                                </div>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div> 
                            <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid"  width="300" height="200">
                                                      
                                </figure>
                                <div >
                                    <a href="#"><div class="btn btn-info btn-block">PAID</div></a>
                                </div>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div> 
                            <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                                <figure class="effect-ming tm-video-item">
                                    <img src="../images/cassava.png" alt="Image" class="img-fluid"  width="300" height="200">
                                                      
                                </figure>
                                <div >
                                    <a href="#"><div class="btn btn-info btn-block">PAID</div></a>
                                </div>
                                <div class="d-flex justify-content-between tm-text-gray">
                                    <span class="tm-text-gray-light">18 Oct 2020</span>
                                    <span>9,906 views</span>
                                </div>
                            </div> 
                                   
                        </div> <!-- row -->
                        
                    </div> 
                </div>
            </div>

            
             
        </div>
            
        </div>--%>
  
   