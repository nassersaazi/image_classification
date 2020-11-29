<%@ Page Title="Login Page" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CICS.Logic" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    <!------------- Main site section --------------------->

    <main>
      <!-------------- Site title  ----------------->
        <section class="site-title" id="login">
          
			<div class="login">
				
				<!-- close -->
				<!-- make another column for textbox and label -->
				<div class="inputs">
                    <div >
                        <label >Username</label>
                        
                    </div>
                    <div >
                        <div >
                            <input type="text"	class="form-control" name="Username" placeholder="username">
                        </div>
                    </div>
                    <div>
                        <label class="label col-md-12 control-label">Password</label>
                        
                    </div>
                    <div>
                        <div >
                            <input type="password"	class="form-control" name="Password" placeholder="Password">
                            
                        </div>
                    </div>
                    <div >
						<a class="btn" href="admin/Index.aspx">Login</a>
					</div>
                </div>
              
				
			</div>
        </section>
        <!---------x--- Site title ---------x--------->

    </main>
    <!----------x--- Main site section --------x------------->
    
    <!-- jquery section -->
    <script src="./js/jquery3.5.1.min.js"></script>
    
    <!-------------------- Owl Carousel JS --------------------->
    
    <script src="./js/owl.carousel.min.js"></script>

     <!-------------------- Owl Carousel JS --------------------->
    
    <!-- Javascript section -->
    <script src="./js/main.js"></script>
</asp:Content>

