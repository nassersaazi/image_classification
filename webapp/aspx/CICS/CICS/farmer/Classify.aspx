﻿<%@ Page Title="Farmer Classify Page" Language="C#"   AutoEventWireup="true" CodeBehind="Classify.aspx.cs" Inherits="CICS.farmer.Classify" %>


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
        <h1>Classification</h1>
	
        <figure >
            <img src="../images/cassava.png" alt="Image"  width="300" height="200"/>
                                            
        </figure>
        <p ><span>class: <b>CMD</b></span></p>
        <p >
            The primary benefit the Single-Responsibility Principle gives 
            you is high-cohesion, low-coupling code. Cohesion refers to 
            the degree with which elements of code belong together. 
        </p>
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

