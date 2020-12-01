<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CICS.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link href="style.css" rel="stylesheet"/>
    <link href="join.css" rel="stylesheet"/>
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
          <li><a href="Register.aspx">Register</a></li>
         
        </ul>
      </nav>
    </header>
    <section class="join-main-section">
      <h1 class="join-text">
        Cassava Image Classification System
      </h1>
      <form class="join-form" id="form2" runat="server">
        <div class="input-group">
          <label>User Name:</label>
          <input type="text"/>
        </div>
        <div class="input-group">
          <label>Password:</label>
          <input type="password"/>
        </div>
        <div class="input-group">
          <button type="submit" class="btn">LOGIN</button>
        </div>
      </form>
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

