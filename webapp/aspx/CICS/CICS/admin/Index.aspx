<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CICS.admin.Index" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <!------------- Main site section --------------------->

    <main>

        <!-------------- Site title  ----------------->
        <section class="site-title">
           <div class="add-user">
			
			    <div >
                    <a class="btn" href="#add-user">ADD USER</a>
				    
			    </div>
			</div>
			<div class="deactivate-user">
				
				

                     <div >
                         
						<a class="btn" href="#deactivate-user">DEACTIVATE USER</a>
					</div>
                </div>
               
              
				
        </section>
        <!---------x--- Site title ---------x--------->

        <!-------------- Site Add User  ----------------->
        <section class="site-title" id="add-user">
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
                        <label >User Role</label>
                        
                    </div>
                    <div >
                        <div >
                            <select class="form-control">
                                <option>Admin</option>
                                <option>Annotator</option>
                                <option>Farmer</option>
                                <option>Official</option>
    
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <label ">Phone</label>
                        
                    </div>
                    <div >
                        <div >
                            <input type="text"	class="form-control" name="Phone" placeholder="e.g +256 760 454 638">
                        </div>
                    </div>

                     <div >
						<button class="btn">ADD USER</button>
					</div>
                </div>
               
                 
                   
                </div>
               
              
				
        </section>
        <!---------x--- Site Add User ---------x--------->


        <!-------------- Site Add User ------------------>

        <section class="site-title" id="deactivate-user">
            <div class="blog">
                <div class="container">
                    <h1>Active Users</h1>
                    <div class="owl-carousel owl-theme blog-post flex-row">
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-1" width="300" height="200">
                            <div class="blog-title">
                                <button class="btn ">DEACTIVATE</button>
                                <span>200 images annotated</span>
                            </div>
                        </div>
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-2" width="300" height="200">
                            <div class="blog-title">
                                <button class="btn ">DEACTIVATE</button>
                                <span>200 images annotated</span>
                            </div>
                        </div>
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-3" width="300" height="200">
                            <div class="blog-title">
                                <button class="btn ">DEACTIVATE</button>
                                <span>200 images annotated</span>
                            </div>
                        </div>
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-4" width="300" height="200">
                            <div class="blog-title">
                                <button class="btn ">DEACTIVATE</button>
                                <span>200 images annotated</span>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </section>

        <!---------x--- Site Add User ---------x--------->
        

        

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
