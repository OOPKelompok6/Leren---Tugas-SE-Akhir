<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/LoggedIn.Master" AutoEventWireup="true" CodeBehind="SectionsCreationVer2.aspx.cs" Inherits="Leren1.Pages.SectionsCreationVer2" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Alatsi&family=Outfit:wght@200&display=swap" rel="stylesheet">

    <!-- Rich Text Editor -->
    <script src="../tinymce/tinymce.min.js" referrerpolicy="origin"></script>
    <script src="../JsScript/tinymceConfig.js"></script>

</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainDiv" class="d-flex flex-column flex-grow align-items-center">
        <div id="ArticleContainer" class="my-4">
            <h1 id="MainTitle" class="alatsi-regular" runat="server">
                <!-- Place Title Here -->
            </h1>
        </div>
    </div>
    <div class="col-sm-8 d-flex w-100 mb-4">
        <div class="mx-auto">
            <textarea id="MainTextEditor" placeholder="Write your Article Here!" runat="server">
            </textarea>
        </div>
    </div>
    <div class="col-sm-6 d-flex flex-column align-items-center mx-auto my-5">
        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" CssClass="btn w-100 bg-info alatsi-regular" OnClick="ButtonSubmit_Click" />
    </div>
    <div class="col-sm-6 d-flex flex-column align-items-center mx-auto my-5">
        <asp:Label ID="LabelError" runat="server" Text="" CssClass="alatsi-regular"></asp:Label>
    </div>
</asp:Content>
