<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/LoggedIn.Master" AutoEventWireup="true" CodeBehind="HomepageStudent.aspx.cs" Inherits="Leren1.Pages.HomepageStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StudentPageStyles/HomepageCSS.css" rel="stylesheet" />


    <link href="../Styles/HomepageStudent.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../JsScript/HomepageStudentJS.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <h1 >Courses</h1>

    <div class="bg-info">
        <div class="background-carousal">
            <div class="multiple-card-slider">
                <div id="carouselExampleControls" class="carousel" data-bs-ride="false" data-bs-interval="false" data-bs-wrap="false">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="card">
                               <div class="card">
                                    <div class="card-body">
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../Assets/Picture/Matematika.png" Width="100" Height="100" OnClick="ImageButton1_Click"  />
                                        <h5 class="card-title">Matematika</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                            the card's content.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="carousel-item">
                             <div class="card">
                                 <div class="card-body">
                                     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Assets/Picture/Biologi.PNG" Width="100" Height="100" OnClick="ImageButton1_Click"  />
                                     <h5 class="card-title">Biologi</h5>
                                     <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                         the card's content.</p>
                                 </div>
                             </div>
                         </div>
                 
                        <div class="carousel-item">
                            <div class="card">
                                <div class="card-body">
                                     <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../Assets/Picture/Kimia.PNG" Width="100" Height="100" OnClick="ImageButton1_Click"  />
                                    <h5 class="card-title">Kimia</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                        the card's content.</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="card">
                                <div class="card-body">
                                     <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="../Assets/Picture/Sejarah.PNG" Width="100" Height="100" OnClick="ImageButton1_Click"  />
                                    <h5 class="card-title">Sejarah</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                        the card's content.</p>
                                </div>
                            </div>
                        </div>
                      </div>
                   
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>   
       </div>
    </div>
   
    <br />
   
<div class="event-background">
    <div class="row">
        <div class="col-md-3 text-center">
            <h3>UPGRADE YOUR SKILL</h3>
            <p>Join seminars and workshops provided by Leren.</p>
            <br />
            <br />
            <h3>100% FREE</h3>
        </div>

        <div class="col-md">
            <div class="multiple-card-slider">
                <div id="carouselExampleControls4" class="carousel" data-bs-ride="false">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="card">
                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="../Assets/Picture/event1.png" class="img-thumbnail" OnClick="ImageButton5_Click"/>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="card">
                                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="../Assets/Picture/event3.png" class="img-thumbnail" OnClick="ImageButton5_Click"/>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <div class="card">
                                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="../Assets/Picture/event1.png" class="img-thumbnail" OnClick="ImageButton5_Click"/>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="card">
                               <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="../Assets/Picture/event3.png" class="img-thumbnail" OnClick="ImageButton5_Click"/>
                            </div>
                        </div>
                    </div>

                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls4" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls4" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

        
   <div>
        <h1 style= "text-align: center; margin-top: 30px;">
            Teachers You Need To Know
        </h1>
        <div class="container">
            <div class="row text-center">
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                        <asp:ImageButton ID="ImageButt" runat="server" ImageUrl="../Assets/Picture/abdul.jpg" class="img-responsive center-block" OnClick="ImageButt_Click"/>                                           
                        <div class="caption">
                            <h6>Abdul Bari</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                        <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="../Assets/Picture/Shah.png" class="img-responsive center-block" OnClick="ImageButt_Click"/>
                        <div class="caption">
                            <h6>Shah</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                        <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="../Assets/Picture/Pace.png" class="img-responsive center-block" OnClick="ImageButt_Click"/>
                        <div class="caption">
                            <h6>Pace Komputer</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                        <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="../Assets/Picture/Jenny.jpg" class="img-responsive center-block" OnClick="ImageButt_Click"/>
                        <div class="caption">
                            <h6>Jenny</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div>
         <h1  style= "text-align: center; margin-top: 10px;">
            Articles You Need To Know
         </h1>

         <div class="container">
            <div class="row text-center">
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Pages/ArticleTemplateVer2.aspx?ID=AR181" runat="server">
                            <img src="../Assets/Picture/Artikel.PNG"class="img-responsive center-block"/>
                        </asp:HyperLink>
                        <div class="caption">
                            <h4>Politics in Gilded Age</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                         <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Pages/ArticleTemplateVer2.aspx?ID=AR271" runat="server">
                            <img src="../Assets/Picture/Artikel.PNG"class="img-responsive center-block"/>
                        </asp:HyperLink>
                        <div class="caption">
                            <h4>Formal Definition of Derivative</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                         <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Pages/ArticleTemplateVer2.aspx?ID=AR603" runat="server">
                            <img src="../Assets/Picture/Artikel.PNG"class="img-responsive center-block"/>
                        </asp:HyperLink>
                        <div class="caption">
                            <h4>Transcription</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="thumbnail">
                         <asp:HyperLink ID="HyperLink4" NavigateUrl="~/Pages/ArticleTemplateVer2.aspx?ID=AR015" runat="server">
                            <img src="../Assets/Picture/Artikel.PNG"class="img-responsive center-block"/>
                        </asp:HyperLink>
                        <div class="caption">
                            <h4>Pythagorean Identity</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    
</asp:Content>
