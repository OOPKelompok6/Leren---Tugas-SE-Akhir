<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/LoggedIn.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Leren1.Pages.ProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Alatsi&family=Outfit:wght@200&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Styles/ProfileStyle.css" rel="stylesheet" />
    <div class="containt">
        <h1>Profile</h1>
        <div>
            <strong>Name: </strong>
            <asp:Label ID="NameLbl" runat="server"></asp:Label>
        </div>

        <div>
            <strong>Email: </strong>
            <asp:Label ID="EmailLbl" runat="server"></asp:Label>
        </div>

        <div>
            <strong>Phone Number: </strong>
            <asp:Label ID="PhoneLbl" runat="server"></asp:Label>
        </div>

        <div>
            <strong>Date of Birth: </strong>
            <asp:Label ID="DOBLbl" runat="server"></asp:Label>
        </div>

        <div>
            <strong>Role: </strong>
            <asp:Label ID="RoleLbl" runat="server"></asp:Label>
        </div>

        <div>
            <asp:Button ID="UpdateBtn" runat="server" Text="Update Profile" />
        </div>
    </div>

    <asp:Panel ID="ArticlePanels" runat="server">
        <!-- Place Teachers Articles Hear -->
    </asp:Panel>

    <div class="btnlogout">
        <asp:Button ID="LogoutBtn" runat="server" Text="Logout" OnClick="LogoutBtn_Click"  CssClass="buttons"/>
    </div>
</asp:Content>
