<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/LoggedIn.Master" AutoEventWireup="true" CodeBehind="ArticleTemplateVer2.aspx.cs" Inherits="Leren1.Pages.ArticleTemplateVer2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Mathjax CDN --> 
    <script type="text/javascript" id="MathJax-script"
        src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
    </script>
    <link href="https://fonts.googleapis.com/css2?family=Alatsi&family=Outfit:wght@200&display=swap" rel="stylesheet">
    <script src="../JsScript/clientsideScript.js"></script>

    <!-- Fluid Vids -->
    <script src="../JsScript/fluidvids.js"></script>
    <script>
        fluidvids.init({
            selector: ['iframe', 'object'], 
            players: ['www.youtube.com', 'player.vimeo.com'] 
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="titleContainer" class="d-flex mx-auto col-sm-8">
        <h1 id="mainTitle" class="alatsi-regular my-5 mx-auto" runat="server"></h1>
    </div>

    <!-- Content Here -->
     <div id="mainContent" class="col-sm-8 d-flex alatsi-regular flex-column mb-4 mx-auto" runat="server"></div>

    <div ID="sideNavBar" class="flex-row d-flex sticky-topCustom col-sm-2 ">
        <nav ID="secDiv" runat="server" class="nav flex-column nav-pills flex-grow w-100 bg-info">
             <!-- Content Here -->
        </nav>
        <div id="BtnSections" class="btn bg-primary fs-5 alatsi-regular tracking-widest rotate bSectionsT" onclick="collapsibleSections()" >SECTIONS</div>
    </div>
</asp:Content>
