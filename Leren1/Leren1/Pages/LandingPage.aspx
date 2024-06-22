<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Main.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="Leren1.Pages.LandingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/LandingStyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="video-container">
        <video autoplay muted loop id="myVideo">
            <source src="../Assets/Video/bg1.mp4" type="video/mp4" />
        </video>

        <div class="text-overlay">
            <h3>Leren...</h3>
            <p>Learn with Leren for your futures</p>
        </div>
    </div>

    <div class="Sub-topic">
        <img src="../Assets/Picture/Pic1.png" alt="Educational Image" />
        <div class="Sub-topic-content">
            <h2>Nothing lasts forever, </h2>
            <h2>We can change the future!</h2>
            <p>We’re a nonprofit with the mission to provide a free, world-class education for anyone, anywhere. Feel free to join us</p>
        </div>
    </div>

    <div class="Sub-topic2">
        <div class="Sub-topic-content2">
            <h2>Why Leren?</h2>
            <p>With Leren, educators gain access to a collaborative platform where they can customize content to suit their teaching style. Its cost-effectiveness makes it an ideal choice for students to learn and educators to deliver quality education without hefty licensing fees.</p>
            <asp:Button ID="Button1" runat="server" Text="Learners, Start now..." class="styled-button" OnClick="Button1_Click" />
        </div>
        <img src="../Assets/Picture/Pic2.jpg" />
    </div>

    <div class="Sub-topic3">
        <img src="../Assets/Picture/Pic3.jpeg" />
        <div class="Sub-topic-content3">
            <h2>Teach to a broader audience</h2>
            <p>Teach interactively and excitedly to an enthusiastic and broader range of students, engaging them through diverse and dynamic methods that cater to varied learning styles.</p>
            <asp:Button ID="Button2" runat="server" Text="Join As Teacher" class="styled-button" OnClick="Button2_Click"/>
        </div>
    </div>
</asp:Content>
