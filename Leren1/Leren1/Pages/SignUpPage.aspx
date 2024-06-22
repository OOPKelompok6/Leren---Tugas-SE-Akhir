<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Leren1.Pages.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="../Styles/SignUpStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Sign Up</h2>
            <img src="../Assets/Picture/Leren_Logo2.png" />

            <div class="form-group">
                <label for="NameLbl">Name</label>
                <asp:TextBox ID="Nametxt" runat="server" CssClass="form-control" placeholder="Input Your Name"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="EmailLbl">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Input Your Email"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="PhoneLbl">Phone number</label>
                <asp:TextBox ID="PhoneTxt" runat="server" CssClass="form-control" placeholder="Input Your Phone number"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="DOBLbl">Date of Birth</label>
                <asp:TextBox ID="DOBTxt" runat="server" CssClass="form-control" type="date"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="PasswordLbl">Password</label>
                <asp:TextBox ID="PasswordTxt" runat="server" TextMode="Password" CssClass="form-control" placeholder="Input Your Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="RoleLbl" runat="server" Text="Role"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio-list">
                    <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                    <asp:ListItem Text="Teacher" Value="Teacher"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <asp:CheckBox ID="CheckBox" runat="server" />
                <asp:Label ID="CheckLbl" runat="server" Text="I agree to the terms and conditions"></asp:Label>
            </div>

            <div class="btn-container">
                <asp:Button ID="btnSubmit" runat="server" Text="Create Account" OnClick="btnSubmit_Click" CssClass="btn"/>
            </div>

            <div class="HaveAccount">
                <asp:Label ID="HaveaccountLbl" runat="server" Text="Have an account?"></asp:Label>
                <asp:LinkButton ID="HaveaccountLb" CssClass="haveAccount" runat="server" Onclick="HaveaccountLb_Click" >Sign In</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
