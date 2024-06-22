<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="Leren1.Pages.SignInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link href="../Styles/SignInStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="containt">
            <h2>Sign In</h2>
            <img src="../Assets/Picture/Leren_Logo2.png" />

            <div class="form">
                <asp:Label ID="EmailLbl" runat="server" Text="Email" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="EmailTxt" runat="server" CssClass="input-box"></asp:TextBox>
            </div>

            <div class="form">
                <asp:Label ID="PasswordLbl" runat="server" Text="Password" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="PasswordTxt" runat="server" CssClass="input-box" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-check">
                <div class="check-remember">
                    <asp:CheckBox ID="RememberCb" runat="server" />
                    <asp:Label ID="RememberLbl" runat="server" Text="Remember me?" CssClass="check-label"></asp:Label>
                </div>
                <asp:LinkButton ID="ForgetLb" runat="server" CssClass="forget-link">Forgot Password?</asp:LinkButton>
            </div>

            <div class="form">
                <asp:Button ID="SignBtn" runat="server" Text="Sign In" CssClass="btn" OnClick="SignBtn_Click" />
            </div>

            <div class="form-account">
                <asp:Label ID="AccountLbl" runat="server" Text="Don't have an account?" CssClass="form-label"></asp:Label>
                <asp:LinkButton ID="AccountLb" runat="server" CssClass="sign-up-link" OnClick="AccountLb_Click">Sign Up</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
