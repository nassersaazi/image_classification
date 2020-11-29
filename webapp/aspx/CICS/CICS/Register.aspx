<%@ Page  Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CICS.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    <!------------- Main site section --------------------->

    <main>


        <!-------------- Site title  ----------------->
        <section class="site-title" id ="register">
           <div class="description">
			
				<h1 >Cassava Image Classification System</h1>
				<p >
                    The primary benefit the Single-Responsibility Principle gives 
                    you is high-cohesion, low-coupling code. 
                </p>
                <p>Cohesion refers to the degree with which elements of code belong together. </p>
				<p>Coupling is the manner of independence between modules of a programming system. 
					</p>
               <p>This means that high coupling means that modules are more dependent upon one another.</p>
			</div>
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
                    <div >
                        <label >Email</label>
                        
                    </div>
                    <div >
                        <div >
                            <input type="email"	class="form-control" name="Email" placeholder="email">
                        </div>
                    </div>
                    <div >
                        <label >Area</label>
                        
                    </div>
                    <div >
                        <div >
                            <input type="text"	class="form-control" name="Area" placeholder="area">
                        </div>
                    </div>
                    <div >
                        <label >Phone</label>
                        
                    </div>
                    <div >
                        <div >
                            <input type="text"	class="form-control" name="Phone" placeholder="phone">
                        </div>
                    </div>
                    <div >
						<a class="btn" href="../login.aspx">REGISTER</a>
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
