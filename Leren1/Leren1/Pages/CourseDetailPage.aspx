<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/LoggedIn.Master" AutoEventWireup="true" CodeBehind="CourseDetailPage.aspx.cs" Inherits="Leren1.Pages.CourseDetailPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Styles/CourseDetailStyle.css" rel="stylesheet" />
    <div class="card-container">
    <div class="card_title">
        <img src="../../Assets/Picture/Course1.png" />
        <div class="card_text1">
            <h3>Trigonometri</h3>
            <span>Trigonometri adalah cabang ilmu matematika yang mendalami hubungan antara sudut dan panjang sisi dalam segitiga. Dalam trigonometri, terdapat tiga fungsi dasar yang sangat penting: sinus (sin), kosinus (cos), dan tangen (tan). Ketiga fungsi ini digunakan untuk menghubungkan sudut dalam segitiga dengan panjang sisi-sisinya.</span>
        </div>
    </div>

    <div class="card_progress">
        <img src="../../Assets/Picture/CourseDetail1.png" />
        <div class="card_text">
            <h3>Perkenalan Trigonometri</h3>
            <div class="progress" role="progressbar" aria-label="Progress" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                <div class="progress-bar bg-danger" style="width: 80%">80%</div>
            </div>
            <div class="button-container">
                <asp:Button ID="Button1" runat="server" Text="Next >>" CssClass="custom-button" OnClick="Button1_Click" />
            </div>
        </div>
    </div>

    <div class="card_progress">
        <img src="../../Assets/Picture/CourseDetail2.png" />
        <div class="card_text">
            <h3>Radian dan Unit Circle</h3>
            <div class="progress" role="progressbar" aria-label="Progress" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                <div class="progress-bar bg-danger" style="width: 10%">10%</div>
            </div>
            <div class="button-container">
                <asp:Button ID="Button2" runat="server" Text="Next >>" CssClass="custom-button" />
            </div>
        </div>
    </div>

    <div class="card_progress">
        <img src="../../Assets/Picture/CourseDetail3.png" />
        <div class="card_text">
            <h3>Sifat-sifat Trigonometri</h3>
            <div class="progress" role="progressbar" aria-label="Progress" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                <div class="progress-bar bg-danger" style="width: 0%"></div>
            </div>
            <div class="button-container">
                <asp:Button ID="Button3" runat="server" Text="Next >>" CssClass="custom-button" />
            </div>
        </div>
    </div>

    <div class="card_progress">
        <img src="../../Assets/Picture/CourseDetail4.png" />
        <div class="card_text">
            <h3>Grafik Trigonometri</h3>
            <div class="progress" role="progressbar" aria-label="Progress" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                <div class="progress-bar bg-danger" style="width: 0%"></div>
            </div>
            <div class="button-container">
                <asp:Button ID="Button4" runat="server" Text="Next >>" CssClass="custom-button" />
            </div>
        </div>
    </div>
</div>
</asp:Content>
