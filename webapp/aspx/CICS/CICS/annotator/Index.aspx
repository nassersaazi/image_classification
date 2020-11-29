<%@ Page Title="Annotator Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CICS.annotator.Index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<main>
    <section >
            <div class="blog">
                <div class="container">
                    <h1>Uploaded images</h1>
                    <div class="owl-carousel owl-theme blog-post flex-row">
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-1" width="300" height="200">
                            <div class="blog-title">
                                <button class="btn ">DOWNLOAD</button>
                                <span>200 views</span>
                            </div>
                        </div>
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-2" width="300" height="200">
                            <div class="blog-title">
                                <button class="btn ">DOWNLOAD</button>
                                <span>200 views</span>
                            </div>
                        </div>
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-3" width="300" height="200">
                            <div class="blog-title">
                                <button class="btn ">DOWNLOAD</button>
                                <span>200 views</span>
                            </div>
                        </div>
                        <div class="page-content">
                            <img class="two" src="../images/cassava.png" alt="post-4" width="300" height="200">
                            <div class="blog-title">
                                <button class="btn ">DOWNLOAD</button>
                                <span>200 views</span>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </section>

        
</main>

</asp:Content>